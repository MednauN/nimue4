# Copyright 2016 Xored Software, Inc.

class(UWorld of UObject, header: "Engine/World.h", notypedef):
  proc getNavigationSystem*(): ptr UNavigationSystem
  proc getAuthGameMode*(): ptr AGameMode