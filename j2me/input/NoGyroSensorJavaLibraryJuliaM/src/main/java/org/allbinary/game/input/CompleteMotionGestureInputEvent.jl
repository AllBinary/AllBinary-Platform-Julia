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
# package org.allbinary.game.input

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CompleteMotionGestureInputEvent <: JObject
    logUtil::Any
    name::Any
    motionGestureInput::Any
    CompleteMotionGestureInputEvent() = new()
end


function initFieldsCompleteMotionGestureInputEvent(this::CompleteMotionGestureInputEvent)
    this.logUtil = nothing
    this.name = nothing
    this.motionGestureInput = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.name = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.motionGestureInput = AllBinary.getInstance(TouchMotionGestureFactory).NO_MOTION
    nothing
end


function initCompleteMotionGestureInputEvent(this::CompleteMotionGestureInputEvent, name, motionGestureInput)
        initAllBinaryEventObject(this, motionGestureInput)
        initFieldsCompleteMotionGestureInputEvent(this)
        AllBinary.setName(this, name)
        try
            AllBinary.setMotionGestureInput(this, motionGestureInput)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, "InputToGameKeyEventAction", e)
        end
        nothing
end

function newCompleteMotionGestureInputEvent(name, motionGestureInput)
    this = CompleteMotionGestureInputEvent()
    initCompleteMotionGestureInputEvent(this, name, motionGestureInput)
    this
end


function setName(this::CompleteMotionGestureInputEvent, name)
        this.name = name
        nothing
end


function getName(this::CompleteMotionGestureInputEvent)
        return this.name
end


function setMotionGestureInput(this::CompleteMotionGestureInputEvent, motionGestureInput)
        this.motionGestureInput = motionGestureInput
        nothing
end


function getMotionGestureInput(this::CompleteMotionGestureInputEvent)
        return this.motionGestureInput
end

