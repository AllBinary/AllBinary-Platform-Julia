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

mutable struct ReleaseHelper <: JObject
    touchButtonRecognizer::Any
    ReleaseHelper() = new()
end


function initFieldsReleaseHelper(this::ReleaseHelper)
    this.touchButtonRecognizer = nothing
    
    nothing
end


function initReleaseHelper(this::ReleaseHelper, touchButtonRecognizer)
        initFieldsReleaseHelper(this)
        this.touchButtonRecognizer = touchButtonRecognizer
        nothing
end

function newReleaseHelper(touchButtonRecognizer)
    this = ReleaseHelper()
    initReleaseHelper(this, touchButtonRecognizer)
    this
end


function release(this::ReleaseHelper, touchButtonInput, deviceId)
        local nextTouchButtonInput = nothing
        local gameKeyEvent = nothing
        let
            local index::Int32 = AllBinary.size(this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton) - Int32(1)
            while index >= Int32(0)
            try
            nextTouchButtonInput = AllBinary.get(this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton, index)
            gameKeyEvent = AllBinary.getGameKeyEvent(nextTouchButtonInput)
            AllBinary.fireEvent(this.touchButtonRecognizer.upGameKeyEventHandler, gameKeyEvent)
            AllBinary.fireEvent(AllBinary.getInstanceForDevice(this.touchButtonRecognizer.upGameKeyEventHandler, deviceId), gameKeyEvent)
            AllBinary.removeAt(this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton, index)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

