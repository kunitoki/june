# June - Copyright (c) 2022 Lucio Asnaghi, Gavin Ray
#
# Licensed and distributed under the
#   MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
#
# This file may not be copied, modified, or distributed except according to those terms.

{.experimental: "callOperator".}

import std/macros

type
    CppFunctionObjectN0* {.importcpp: "std::function<void()>", header: "<functional>".} = object
    CppFunctionObjectR0*[R] {.importcpp: "std::function<'0()>", header: "<functional>".} = object
    CppFunctionObjectN1*[T] {.importcpp: "std::function<void('0)>", header: "<functional>".} = object
    CppFunctionObjectR1*[R, T] {.importcpp: "std::function<'0('1)>", header: "<functional>".} = object
    CppFunctionObjectN2*[T1, T2] {.importcpp: "std::function<void('0, '1)>", header: "<functional>".} = object
    CppFunctionObjectR2*[R, T1, T2] {.importcpp: "std::function<'0('1, '2)>", header: "<functional>".} = object
    CppFunctionObjectN3*[T1, T2, T3] {.importcpp: "std::function<void('0, '1, '2)>", header: "<functional>".} = object
    CppFunctionObjectR3*[R, T1, T2, T3] {.importcpp: "std::function<'0('1, '2, '3)>", header: "<functional>".} = object
    CppFunctionObjectN4*[T1, T2, T3, T4] {.importcpp: "std::function<void('0, '1, '2, '3)>", header: "<functional>".} = object
    CppFunctionObjectR4*[R, T1, T2, T3, T4] {.importcpp: "std::function<'0('1, '2, '3, '4)>", header: "<functional>".} = object
    CppFunctionObjectN5*[T1, T2, T3, T4, T5] {.importcpp: "std::function<void('0, '1, '2, '3, '4)>", header: "<functional>".} = object
    CppFunctionObjectR5*[R, T1, T2, T3, T4, T5] {.importcpp: "std::function<'0('1, '2, '3, '4, '5)>", header: "<functional>".} = object
    CppFunctionObjectN6*[T1, T2, T3, T4, T5, T6] {.importcpp: "std::function<void('0, '1, '2, '3, '4, '5)>", header: "<functional>".} = object
    CppFunctionObjectR6*[R, T1, T2, T3, T4, T5, T6] {.importcpp: "std::function<'0('1, '2, '3, '4, '5, '6)>", header: "<functional>".} = object
    CppFunctionObjectN7*[T1, T2, T3, T4, T5, T6, T7] {.importcpp: "std::function<void('0, '1, '2, '3, '4, '5, '6)>", header: "<functional>".} = object
    CppFunctionObjectR7*[R, T1, T2, T3, T4, T5, T6, T7] {.importcpp: "std::function<'0('1, '2, '3, '4, '5, '6, '7)>", header: "<functional>".} = object
    CppFunctionObjectN8*[T1, T2, T3, T4, T5, T6, T7, T8] {.importcpp: "std::function<void('0, '1, '2, '3, '4, '5, '6, '7)>", header: "<functional>".} = object
    CppFunctionObjectR8*[R, T1, T2, T3, T4, T5, T6, T7, T8] {.importcpp: "std::function<'0('1, '2, '3, '4, '5, '6, '7, '8)>", header: "<functional>".} = object
    CppFunctionObjectN9*[T1, T2, T3, T4, T5, T6, T7, T8, T9] {.importcpp: "std::function<void('0, '1, '2, '3, '4, '5, '6, '7, '8)>", header: "<functional>".} = object
    CppFunctionObjectR9*[R, T1, T2, T3, T4, T5, T6, T7, T8, T9] {.importcpp: "std::function<'0('1, '2, '3, '4, '5, '6, '7, '8, '9)>", header: "<functional>".} = object

type
    CppFunctionClosureN0 = proc (env: pointer) {.nimcall.}
    CppFunctionClosureR0[R] = proc (env: pointer): R {.nimcall.}
    CppFunctionClosureN1[T] = proc (a: T, env: pointer) {.nimcall.}
    CppFunctionClosureR1[R, T] = proc (a: T, env: pointer): R {.nimcall.}
    CppFunctionClosureN2[T1, T2] = proc (a1: T1, a2: T2, env: pointer) {.nimcall.}
    CppFunctionClosureR2[R, T1, T2] = proc (a1: T1, a2: T2, env: pointer): R {.nimcall.}
    CppFunctionClosureN3[T1, T2, T3] = proc (a1: T1, a2: T2, a3: T3, env: pointer) {.nimcall.}
    CppFunctionClosureR3[R, T1, T2, T3] = proc (a1: T1, a2: T2, a3: T3, env: pointer): R {.nimcall.}
    CppFunctionClosureN4[T1, T2, T3, T4] = proc (a1: T1, a2: T2, a3: T3, a4: T4, env: pointer) {.nimcall.}
    CppFunctionClosureR4[R, T1, T2, T3, T4] = proc (a1: T1, a2: T2, a3: T3, a4: T4, env: pointer): R {.nimcall.}
    CppFunctionClosureN5[T1, T2, T3, T4, T5] = proc (a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, env: pointer) {.nimcall.}
    CppFunctionClosureR5[R, T1, T2, T3, T4, T5] = proc (a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, env: pointer): R {.nimcall.}
    CppFunctionClosureN6[T1, T2, T3, T4, T5, T6] = proc (a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, env: pointer) {.nimcall.}
    CppFunctionClosureR6[R, T1, T2, T3, T4, T5, T6] = proc (a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, env: pointer): R {.nimcall.}
    CppFunctionClosureN7[T1, T2, T3, T4, T5, T6, T7] = proc (a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, env: pointer) {.nimcall.}
    CppFunctionClosureR7[R, T1, T2, T3, T4, T5, T6, T7] = proc (a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, env: pointer): R {.nimcall.}
    CppFunctionClosureN8[T1, T2, T3, T4, T5, T6, T7, T8] = proc (a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8, env: pointer) {.nimcall.}
    CppFunctionClosureR8[R, T1, T2, T3, T4, T5, T6, T7, T8] = proc (a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8, env: pointer): R {.nimcall.}
    CppFunctionClosureN9[T1, T2, T3, T4, T5, T6, T7, T8, T9] = proc (a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8, a9: T9, env: pointer) {.nimcall.}
    CppFunctionClosureR9[R, T1, T2, T3, T4, T5, T6, T7, T8, T9] = proc (a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8, a9: T9, env: pointer): R {.nimcall.}

macro CppFunctionObject*(types: varargs[untyped]): untyped =
    if len(types) > 0:
        result = nnkBracketExpr.newTree newIdentNode("CppFunctionObjectN" & $len(types))
        for t in types:
            result.add newIdentNode($t)
    else:
        result = newIdentNode("CppFunctionObjectN0")

macro CppFunctionObjectRet*(types: varargs[untyped]): untyped =
    if len(types) == 0:
        error "Need at least one type in CppFunctionObjectRet"

    result = nnkBracketExpr.newTree newIdentNode("CppFunctionObjectR" & $(len(types) - 1))
    for t in types:
        result.add newIdentNode($t)

proc bindInternal(p: CppFunctionClosureN0, env: pointer): CppFunctionObjectN0 {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[R](p: CppFunctionClosureR0[R], env: pointer): CppFunctionObjectR0[R] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[T](p: CppFunctionClosureN1[T], env: pointer): CppFunctionObjectN1[T] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[R, T](p: CppFunctionClosureR1[R, T], env: pointer): CppFunctionObjectR1[R, T] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[T1, T2](p: CppFunctionClosureN2[T1, T2], env: pointer): CppFunctionObjectN2[T1, T2] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[R, T1, T2](p: CppFunctionClosureR2[R, T1, T2], env: pointer): CppFunctionObjectR2[R, T1, T2] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[T1, T2, T3](p: CppFunctionClosureN3[T1, T2, T3], env: pointer): CppFunctionObjectN3[T1, T2, T3] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[R, T1, T2, T3](p: CppFunctionClosureR3[R, T1, T2, T3], env: pointer): CppFunctionObjectR3[R, T1, T2, T3] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[T1, T2, T3, T4](p: CppFunctionClosureN4[T1, T2, T3, T4], env: pointer): CppFunctionObjectN4[T1, T2, T3, T4] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[R, T1, T2, T3, T4](p: CppFunctionClosureR4[R, T1, T2, T3, T4], env: pointer): CppFunctionObjectR4[R, T1, T2, T3, T4] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[T1, T2, T3, T4, T5](p: CppFunctionClosureN5[T1, T2, T3, T4, T5], env: pointer): CppFunctionObjectN5[T1, T2, T3, T4, T5] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[R, T1, T2, T3, T4, T5](p: CppFunctionClosureR5[R, T1, T2, T3, T4, T5], env: pointer): CppFunctionObjectR5[R, T1, T2, T3, T4, T5] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[T1, T2, T3, T4, T5, T6](p: CppFunctionClosureN6[T1, T2, T3, T4, T5, T6], env: pointer): CppFunctionObjectN6[T1, T2, T3, T4, T5, T6] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[R, T1, T2, T3, T4, T5, T6](p: CppFunctionClosureR6[R, T1, T2, T3, T4, T5, T6], env: pointer): CppFunctionObjectR6[R, T1, T2, T3, T4, T5, T6] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[T1, T2, T3, T4, T5, T6, T7](p: CppFunctionClosureN7[T1, T2, T3, T4, T5, T6, T7], env: pointer): CppFunctionObjectN7[T1, T2, T3, T4, T5, T6, T7] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[R, T1, T2, T3, T4, T5, T6, T7](p: CppFunctionClosureR7[R, T1, T2, T3, T4, T5, T6, T7], env: pointer): CppFunctionObjectR7[R, T1, T2, T3, T4, T5, T6, T7] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[T1, T2, T3, T4, T5, T6, T7, T8](p: CppFunctionClosureN8[T1, T2, T3, T4, T5, T6, T7, T8], env: pointer): CppFunctionObjectN8[T1, T2, T3, T4, T5, T6, T7, T8] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[R, T1, T2, T3, T4, T5, T6, T7, T8](p: CppFunctionClosureR8[R, T1, T2, T3, T4, T5, T6, T7, T8], env: pointer): CppFunctionObjectR8[R, T1, T2, T3, T4, T5, T6, T7, T8] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[T1, T2, T3, T4, T5, T6, T7, T8, T9](p: CppFunctionClosureN9[T1, T2, T3, T4, T5, T6, T7, T8, T9], env: pointer): CppFunctionObjectN9[T1, T2, T3, T4, T5, T6, T7, T8, T9] {.header: "<june.h>", importcpp: "june::bind(@)".}
proc bindInternal[R, T1, T2, T3, T4, T5, T6, T7, T8, T9](p: CppFunctionClosureR9[R, T1, T2, T3, T4, T5, T6, T7, T8, T9], env: pointer): CppFunctionObjectR9[R, T1, T2, T3, T4, T5, T6, T7, T8, T9] {.header: "<june.h>", importcpp: "june::bind(@)".}

proc bindClosure*(f: proc() {.closure.}): CppFunctionObjectN0 =
    bindInternal(cast[CppFunctionClosureN0](rawProc f), rawEnv f)
proc bindClosure*[R](f: proc(): R {.closure.}): CppFunctionObjectR0[R] =
    bindInternal(cast[CppFunctionClosureR0[R]](rawProc f), rawEnv f)
proc bindClosure*[T](f: proc(a: T) {.closure.}): CppFunctionObjectN1[T] =
    bindInternal(cast[CppFunctionClosureN1[T]](rawProc f), rawEnv f)
proc bindClosure*[R, T](f: proc(a: T): R {.closure.}): CppFunctionObjectR1[R, T] =
    bindInternal(cast[CppFunctionClosureR1[R, T]](rawProc f), rawEnv f)
proc bindClosure*[T1, T2](f: proc(a1: T1, a2: T2) {.closure.}): CppFunctionObjectN2[T1, T2] =
    bindInternal(cast[CppFunctionClosureN2[T1, T2]](rawProc f), rawEnv f)
proc bindClosure*[R, T1, T2](f: proc(a1: T1, a2: T2): R {.closure.}): CppFunctionObjectR2[R, T1, T2] =
    bindInternal(cast[CppFunctionClosureR2[R, T1, T2]](rawProc f), rawEnv f)
proc bindClosure*[T1, T2, T3](f: proc(a1: T1, a2: T2, a3: T3) {.closure.}): CppFunctionObjectN3[T1, T2, T3] =
    bindInternal(cast[CppFunctionClosureN3[T1, T2, T3]](rawProc f), rawEnv f)
proc bindClosure*[R, T1, T2, T3](f: proc(a1: T1, a2: T2, a3: T3): R {.closure.}): CppFunctionObjectR3[R, T1, T2, T3] =
    bindInternal(cast[CppFunctionClosureR3[R, T1, T2, T3]](rawProc f), rawEnv f)
proc bindClosure*[T1, T2, T3, T4](f: proc(a1: T1, a2: T2, a3: T3, a4: T4) {.closure.}): CppFunctionObjectN4[T1, T2, T3, T4] =
    bindInternal(cast[CppFunctionClosureN4[T1, T2, T3, T4]](rawProc f), rawEnv f)
proc bindClosure*[R, T1, T2, T3, T4](f: proc(a1: T1, a2: T2, a3: T3, a4: T4): R {.closure.}): CppFunctionObjectR4[R, T1, T2, T3, T4] =
    bindInternal(cast[CppFunctionClosureR4[R, T1, T2, T3, T4]](rawProc f), rawEnv f)
proc bindClosure*[T1, T2, T3, T4, T5](f: proc(a1: T1, a2: T2, a3: T3, a4: T4, a5: T5) {.closure.}): CppFunctionObjectN5[T1, T2, T3, T4, T5] =
    bindInternal(cast[CppFunctionClosureN5[T1, T2, T3, T4, T5]](rawProc f), rawEnv f)
proc bindClosure*[R, T1, T2, T3, T4, T5](f: proc(a1: T1, a2: T2, a3: T3, a4: T4, a5: T5): R {.closure.}): CppFunctionObjectR5[R, T1, T2, T3, T4, T5] =
    bindInternal(cast[CppFunctionClosureR5[R, T1, T2, T3, T4, T5]](rawProc f), rawEnv f)
proc bindClosure*[T1, T2, T3, T4, T5, T6](f: proc(a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6) {.closure.}): CppFunctionObjectN6[T1, T2, T3, T4, T5, T6] =
    bindInternal(cast[CppFunctionClosureN6[T1, T2, T3, T4, T5, T6]](rawProc f), rawEnv f)
proc bindClosure*[R, T1, T2, T3, T4, T5, T6](f: proc(a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6): R {.closure.}): CppFunctionObjectR6[R, T1, T2, T3, T4, T5, T6] =
    bindInternal(cast[CppFunctionClosureR6[R, T1, T2, T3, T4, T5, T6]](rawProc f), rawEnv f)
proc bindClosure*[T1, T2, T3, T4, T5, T6, T7](f: proc(a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7) {.closure.}): CppFunctionObjectN7[T1, T2, T3, T4, T5, T6, T7] =
    bindInternal(cast[CppFunctionClosureN7[T1, T2, T3, T4, T5, T6, T7]](rawProc f), rawEnv f)
proc bindClosure*[R, T1, T2, T3, T4, T5, T6, T7](f: proc(a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7): R {.closure.}): CppFunctionObjectR7[R, T1, T2, T3, T4, T5, T6, T7] =
    bindInternal(cast[CppFunctionClosureR7[R, T1, T2, T3, T4, T5, T6, T7]](rawProc f), rawEnv f)
proc bindClosure*[T1, T2, T3, T4, T5, T6, T7, T8](f: proc(a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8) {.closure.}): CppFunctionObjectN8[T1, T2, T3, T4, T5, T6, T7, T8] =
    bindInternal(cast[CppFunctionClosureN8[T1, T2, T3, T4, T5, T6, T7, T8]](rawProc f), rawEnv f)
proc bindClosure*[R, T1, T2, T3, T4, T5, T6, T7, T8](f: proc(a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8): R {.closure.}): CppFunctionObjectR8[R, T1, T2, T3, T4, T5, T6, T7, T8] =
    bindInternal(cast[CppFunctionClosureR8[R, T1, T2, T3, T4, T5, T6, T7, T8]](rawProc f), rawEnv f)
proc bindClosure*[T1, T2, T3, T4, T5, T6, T7, T8, T9](f: proc(a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8, a9: T9) {.closure.}): CppFunctionObjectN9[T1, T2, T3, T4, T5, T6, T7, T8, T9] =
    bindInternal(cast[CppFunctionClosureN9[T1, T2, T3, T4, T5, T6, T7, T8, T9]](rawProc f), rawEnv f)
proc bindClosure*[R, T1, T2, T3, T4, T5, T6, T7, T8, T9](f: proc(a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8, a9: T9): R {.closure.}): CppFunctionObjectR9[R, T1, T2, T3, T4, T5, T6, T7, T8, T9] =
    bindInternal(cast[CppFunctionClosureR9[R, T1, T2, T3, T4, T5, T6, T7, T8, T9]](rawProc f), rawEnv f)

proc `()`*(f: var CppFunctionObjectN0) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[R](f: var CppFunctionObjectR0[R]): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[T](f: var CppFunctionObjectN1[T], a: T) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[R, T](f: var CppFunctionObjectR1[R, T], a: T): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[T1, T2](f: var CppFunctionObjectN2[T1, T2], a1: T1, a2: T2) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[R, T1, T2](f: var CppFunctionObjectR2[R, T1, T2], a1: T1, a2: T2): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[T1, T2, T3](f: var CppFunctionObjectN3[T1, T2, T3], a1: T1, a2: T2, a3: T3) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[R, T1, T2, T3](f: var CppFunctionObjectR3[R, T1, T2, T3], a1: T1, a2: T2, a3: T3): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[T1, T2, T3, T4](f: var CppFunctionObjectN4[T1, T2, T3, T4], a1: T1, a2: T2, a3: T3, a4: T4) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[R, T1, T2, T3, T4](f: var CppFunctionObjectR4[R, T1, T2, T3, T4], a1: T1, a2: T2, a3: T3, a4: T4): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[T1, T2, T3, T4, T5](f: var CppFunctionObjectN5[T1, T2, T3, T4, T5], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[R, T1, T2, T3, T4, T5](f: var CppFunctionObjectR5[R, T1, T2, T3, T4, T5], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[T1, T2, T3, T4, T5, T6](f: var CppFunctionObjectN6[T1, T2, T3, T4, T5, T6], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[R, T1, T2, T3, T4, T5, T6](f: var CppFunctionObjectR6[R, T1, T2, T3, T4, T5, T6], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[T1, T2, T3, T4, T5, T6, T7](f: var CppFunctionObjectN7[T1, T2, T3, T4, T5, T6, T7], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[R, T1, T2, T3, T4, T5, T6, T7](f: var CppFunctionObjectR7[R, T1, T2, T3, T4, T5, T6, T7], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[T1, T2, T3, T4, T5, T6, T7, T8](f: var CppFunctionObjectN8[T1, T2, T3, T4, T5, T6, T7, T8], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[R, T1, T2, T3, T4, T5, T6, T7, T8](f: var CppFunctionObjectR8[R, T1, T2, T3, T4, T5, T6, T7, T8], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[T1, T2, T3, T4, T5, T6, T7, T8, T9](f: var CppFunctionObjectN9[T1, T2, T3, T4, T5, T6, T7, T8, T9], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8, a9: T9) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc `()`*[R, T1, T2, T3, T4, T5, T6, T7, T8, T9](f: var CppFunctionObjectR9[R, T1, T2, T3, T4, T5, T6, T7, T8, T9], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8, a9: T9): R {.importcpp: "std::invoke(@)", header: "<functional>".}

proc invoke*(f: var CppFunctionObjectN0) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[R](f: var CppFunctionObjectR0[R]): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[T](f: var CppFunctionObjectN1[T], a: T) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[R, T](f: var CppFunctionObjectR1[R, T], a: T): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[T1, T2](f: var CppFunctionObjectN2[T1, T2], a1: T1, a2: T2) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[R, T1, T2](f: var CppFunctionObjectR2[R, T1, T2], a1: T1, a2: T2): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[T1, T2, T3](f: var CppFunctionObjectN3[T1, T2, T3], a1: T1, a2: T2, a3: T3) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[R, T1, T2, T3](f: var CppFunctionObjectR3[R, T1, T2, T3], a1: T1, a2: T2, a3: T3): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[T1, T2, T3, T4](f: var CppFunctionObjectN4[T1, T2, T3, T4], a1: T1, a2: T2, a3: T3, a4: T4) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[R, T1, T2, T3, T4](f: var CppFunctionObjectR4[R, T1, T2, T3, T4], a1: T1, a2: T2, a3: T3, a4: T4): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[T1, T2, T3, T4, T5](f: var CppFunctionObjectN5[T1, T2, T3, T4, T5], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[R, T1, T2, T3, T4, T5](f: var CppFunctionObjectR5[R, T1, T2, T3, T4, T5], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[T1, T2, T3, T4, T5, T6](f: var CppFunctionObjectN6[T1, T2, T3, T4, T5, T6], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[R, T1, T2, T3, T4, T5, T6](f: var CppFunctionObjectR6[R, T1, T2, T3, T4, T5, T6], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[T1, T2, T3, T4, T5, T6, T7](f: var CppFunctionObjectN7[T1, T2, T3, T4, T5, T6, T7], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[R, T1, T2, T3, T4, T5, T6, T7](f: var CppFunctionObjectR7[R, T1, T2, T3, T4, T5, T6, T7], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[T1, T2, T3, T4, T5, T6, T7, T8](f: var CppFunctionObjectN8[T1, T2, T3, T4, T5, T6, T7, T8], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[R, T1, T2, T3, T4, T5, T6, T7, T8](f: var CppFunctionObjectR8[R, T1, T2, T3, T4, T5, T6, T7, T8], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8): R {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[T1, T2, T3, T4, T5, T6, T7, T8, T9](f: var CppFunctionObjectN9[T1, T2, T3, T4, T5, T6, T7, T8, T9], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8, a9: T9) {.importcpp: "std::invoke(@)", header: "<functional>".}
proc invoke*[R, T1, T2, T3, T4, T5, T6, T7, T8, T9](f: var CppFunctionObjectR9[R, T1, T2, T3, T4, T5, T6, T7, T8, T9], a1: T1, a2: T2, a3: T3, a4: T4, a5: T5, a6: T6, a7: T7, a8: T8, a9: T9): R {.importcpp: "std::invoke(@)", header: "<functional>".}
