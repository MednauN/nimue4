# Copyright 2016 Xored Software, Inc.


wclass(UEngine of UObject, header: "Engine/Engine.h", notypedef):
  proc getWorldFromContextObject*(obj: ptr UObject, bChecked: bool = true): ptr UWorld
    ## Obtain a world object pointer from an object with has a world context.
  proc getFirstLocalPlayerController*(inWorld: ptr UWorld): ptr APlayerController
  proc getMainAudioDevice*(): ptr FAudioDevice
  proc getGameUserSettings*(): ptr UGameUserSettings

  proc setClientTravel(inWorld: ptr UWorld, nextURL: wstring, travelType: ETravelType)

  proc addOnScreenDebugMessage(key: uint64, timeToDisplay: float32, displayColor: FColor,
                               debugMessage: FString, bNewerOnTop: bool = true, textScale: FVector2D = unitVector2D)

# TODO: interface the rest
