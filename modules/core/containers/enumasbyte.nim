# Copyright 2016 Xored Software, Inc.

type
  TEnumAsByte* {.header: "Containers/EnumAsByte.h", importcpp: "TEnumAsByte", bycopy.}[T: enum] = object

proc value*[T](this: TEnumAsByte[T]): T {.noSideEffect, importcpp: "Value",
  header: "Containers/EnumAsByte.h".}

proc initTEnumAsByte*[T: enum](e: T): TEnumAsByte[T] {.importcpp: "TEnumAsByte<'1>(@)", nodecl, constructor.}

converter toEnum*[T](container: TEnumAsByte[T]): T =
  result = container.value()

converter asByte*[T](t: T): TEnumAsByte[T] =
  result = initTEnumAsByte(t)
