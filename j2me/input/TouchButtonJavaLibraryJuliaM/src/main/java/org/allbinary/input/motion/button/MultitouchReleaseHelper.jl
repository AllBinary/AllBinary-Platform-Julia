#=
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
 
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
 
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 
  Created By: Travis Berthelot
  
=#
# Generated Code Do Not Modify
# package org.allbinary.input.motion.button

# extends ReleaseHelper: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MultitouchReleaseHelper <: JObject
    MultitouchReleaseHelper() = new()
end


function initFieldsMultitouchReleaseHelper(this::MultitouchReleaseHelper)
    nothing
end


function initMultitouchReleaseHelper(this::MultitouchReleaseHelper, touchButtonRecognizer)
        initReleaseHelper(this, touchButtonRecognizer)
        nothing
end

function newMultitouchReleaseHelper(touchButtonRecognizer)
    this = MultitouchReleaseHelper()
    initMultitouchReleaseHelper(this, touchButtonRecognizer)
    this
end


function release(this::MultitouchReleaseHelper, touchButtonInput, deviceId)
        local cancelTouchButtonInput = AllBinary.getCancel(AllBinary.getInstance(CancelTouchButtonInputFactory), touchButtonInput)
        local nextTouchButtonInput = nothing
        local gameKeyEvent = nothing
        let
            local index::Int32 = AllBinary.size(this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton) - Int32(1)
            while index >= Int32(0)
            try
            nextTouchButtonInput = AllBinary.get(this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton, index)
            if cancelTouchButtonInput === nextTouchButtonInput
                gameKeyEvent = AllBinary.getGameKeyEvent(nextTouchButtonInput)
                AllBinary.fireEvent(this.touchButtonRecognizer.upGameKeyEventHandler, gameKeyEvent)
                AllBinary.fireEvent(AllBinary.getInstanceForDevice(this.touchButtonRecognizer.upGameKeyEventHandler, deviceId), gameKeyEvent)
                AllBinary.removeAt(this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton, index)
            end
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

