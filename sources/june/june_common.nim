# June
# Copyright (c) 2022 Lucio Asnaghi
# Licensed and distributed under either of
#   * MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
# at your option. This file may not be copied, modified, or distributed except according to those terms.

import std/strutils
import std/macros


type
    #wcharConstImpl {.importc:"const wchar_t*".} = object
    cstringConstImpl {.importc:"const char*".} = cstring
    voidpConstImpl {.importc:"const void*".} = pointer
    #juce_wchar* = distinct wcharConstImpl
    constChar* = distinct cstringConstImpl
    constPointer* = distinct voidpConstImpl


converter toConstChar*(text: string): constChar = cast[constChar](text.cstring)


proc cnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}
proc cdelete*[T](x: ptr T) {.importcpp: "(delete @)", nodecl.}


proc newEmitPragma(s: string): NimNode {.compileTime.} =
    result = newNimNode(nnkPragma)
    result.add(newColonExpr(newIdentNode("emit"), newStrLitNode(s)))


proc juneClassCodegen(class: NimNode, body: NimNode, appendType: string = ""): NimNode {.compileTime.} =
    #echo class.astGenRepr

    if class.kind != nnkInfix or not eqIdent(class[0], "of"):
        error "Invalid node: " & class.lispRepr

    let className = class[1].strVal
    let parentClassName = class[2].strVal

    # Nim codegen list of functions
    var nimFunctionsDecl = nnkRecList.newTree()

    # Cpp codegen headers and class
    var cppIncludeDefinition = ""
    var cppClassDefinition = ""
    cppClassDefinition &= "namespace june {\n\n"
    cppClassDefinition &= "class " & className & " : public " & parentClassName & " {\n"

    for node in body.children:
        # echo node.kind
        # echo node.astGenRepr

        case node.kind:
        of nnkProcDef:
            #echo (node.name)
            #echo (node[0].kind) # nnkPostfix
            #echo (node[1].kind) # nnkEmpty
            #echo (node[2].kind) # nnkEmpty
            #echo (node[3].kind) # nnkFormalParams
            #echo node.astGenRepr

            var funcName = $node.name
            var funcPointerName = "on" & capitalizeAscii($node.name)
            let formalParams = node[3]
            let returnValue = (if formalParams[0].kind != nnkEmpty: $formalParams[0] else: "void")
            let hasReturnValue = returnValue != "void"

            # Nim codegen function parameters
            var nimFunctionFormalParams = nnkFormalParams.newTree(
                newIdentNode(returnValue),
                nnkIdentDefs.newTree(
                    newIdentNode("this"),
                    nnkPtrTy.newTree(
                        newIdentNode(className),
                    ),
                    newEmptyNode()
                )
            )

            # Cpp codegen function parameters
            var cppFuncSignature = ""
            var cppFuncPointerSignature = ""
            cppFuncPointerSignature &= "    " & returnValue & " (*" & funcPointerName & ")(" & className & "*"
            cppFuncSignature &= "    " & returnValue & " " & funcName & "("

            var index = 0
            var cppFuncPointerCallArgs = "this"
            for param in formalParams:
                inc(index); if index == 1: continue

                # Nim codegen arguments
                var typeDecl: NimNode
                if param[1].kind == nnkPtrTy:
                    typeDecl = nnkPtrTy.newTree(newIdentNode($param[1][0]))
                else:
                    typeDecl = newIdentNode($param[1])

                nimFunctionFormalParams.add nnkIdentDefs.newTree(
                    newIdentNode($param[0]),
                    typeDecl,
                    newEmptyNode()
                )

                # Cpp codegen arguments
                if param[1].kind == nnkPtrTy:
                    cppFuncPointerSignature &= ", " & $param[1][0] & "*"
                    cppFuncSignature &= $param[1][0] & "* " & $param[0]
                else:
                    cppFuncPointerSignature &= ", " & $param[1]
                    cppFuncSignature &= $param[1] & " " & $param[0]

                cppFuncPointerCallArgs &= ", " & $param[0]

                if index < len(formalParams):
                    cppFuncSignature &= ", "

            # Nim codegen function declaration
            nimFunctionsDecl.add nnkIdentDefs.newTree(
                nnkPostfix.newTree(
                    newIdentNode("*"),
                    newIdentNode(funcPointerName)
                ),
                nnkProcTy.newTree(
                    nimFunctionFormalParams,
                    nnkPragma.newTree(
                        newIdentNode("cdecl")
                    )
                ),
                newEmptyNode()
            )

            # Cpp codegen function declaration
            cppFuncPointerSignature &= ") = nullptr;"

            cppFuncSignature &= ") override { if (" & funcPointerName & ") "
            if hasReturnValue: cppFuncSignature &= "return "
            cppFuncSignature &= funcPointerName & "(" & cppFuncPointerCallArgs & ");"
            if hasReturnValue: cppFuncSignature &= " else return {}; "
            cppFuncSignature &= "}"

            cppClassDefinition &= cppFuncPointerSignature & "\n"
            cppClassDefinition &= cppFuncSignature & "\n\n"

        of nnkIncludeStmt:
            cppIncludeDefinition &= "#include \"" & $node[0] & "\"\n\n"

        else:
            continue

    cppClassDefinition &= "};\n\n"
    cppClassDefinition &= "} // namespace june\n"

    let finalCodeEmission = cppIncludeDefinition & cppClassDefinition

    result = newStmtList()
    result.add newEmitPragma(finalCodeEmission)

    var typeSection = nnkTypeSection.newTree(
        nnkTypeDef.newTree(
            nnkPragmaExpr.newTree(
                nnkPostfix.newTree(
                    newIdentNode("*"),
                    newIdentNode(className)
                ),
                nnkPragma.newTree(
                    nnkExprColonExpr.newTree(
                        newIdentNode("importcpp"),
                        newLit("june::" & className)
                    )
                )
            ),
            newEmptyNode(),
            nnkObjectTy.newTree(
                newEmptyNode(),
                nnkOfInherit.newTree(
                    newIdentNode(parentClassName & appendType)
                ),
                nimFunctionsDecl
            )
        )
    )

    result.add typeSection
    #echo result.repr


macro defineCppClassInternal*(class: untyped, body: untyped) =
    result = juneClassCodegen(class, body, "Impl")


macro defineCppClass*(class: untyped, body: untyped) =
    result = juneClassCodegen(class, body)
