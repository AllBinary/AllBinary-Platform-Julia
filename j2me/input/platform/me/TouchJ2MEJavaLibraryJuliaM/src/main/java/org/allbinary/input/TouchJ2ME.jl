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
# package org.allbinary.input

#TouchJ2ME
mutable struct TouchJ2ME <: JObject
    logUtil::Any
    DEVICE_ID::Int32
    motionRecognizer::Any
    TouchJ2ME() = new()
end


function initFieldsTouchJ2ME(this::TouchJ2ME)
    this.logUtil = nothing
    this.DEVICE_ID = Int32(0)
    this.motionRecognizer = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.DEVICE_ID = Int32(0)
    this.motionRecognizer = newAllMotionRecognizer()
    nothing
end


function initTouchJ2ME(this::TouchJ2ME)
        initFieldsTouchJ2ME(this)
        local motionGesturesHandler = AllBinary.getMotionGesturesHandler(AllBinary.getMotionGestureRecognizer(this.motionRecognizer))
        AllBinary.addListenerInterface(motionGesturesHandler, newGameMotionGestureListener(AllBinary.getInstance(MotionGestureReceiveInterfaceFactory)))
        nothing
end

function newTouchJ2ME()
    this = TouchJ2ME()
    initTouchJ2ME(this)
    this
end


function pointerDragged(this::TouchJ2ME, x, y)
        try
            AllBinary.processDraggedMotionEvent(this.motionRecognizer, x, y, this.DEVICE_ID, Int32(0))
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, "pointerDragged", e)
        end
        nothing
end


function pointerPressed(this::TouchJ2ME, x, y)
        try
            AllBinary.processStartMotionEvent(this.motionRecognizer, x, y, this.DEVICE_ID, Int32(0))
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, "pointerPressed", e)
        end
        nothing
end


function pointerReleased(this::TouchJ2ME, x, y)
        try
            AllBinary.processEndMotionEvent(this.motionRecognizer, x, y, this.DEVICE_ID, Int32(0))
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, "pointerReleased", e)
        end
        nothing
end

