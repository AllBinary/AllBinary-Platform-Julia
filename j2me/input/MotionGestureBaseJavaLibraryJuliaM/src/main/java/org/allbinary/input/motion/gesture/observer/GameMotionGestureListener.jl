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
# package org.allbinary.input.motion.gesture.observer

mutable struct GameMotionGestureListener <: JObject
    logUtil::Any
    commonStrings::Any
    motionGestureCollection::Any
    touchGestureCollection::Any
    signed::Any
    GameMotionGestureListener() = new()
end


function initFieldsGameMotionGestureListener(this::GameMotionGestureListener)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.motionGestureCollection = nothing
    this.touchGestureCollection = nothing
    this.signed = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.motionGestureCollection = newBasicArrayListD()
    this.touchGestureCollection = newBasicArrayListD()
    
    nothing
end


function initGameMotionGestureListener(this::GameMotionGestureListener, signed)
        initFieldsGameMotionGestureListener(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.signed = signed
        nothing
end

function newGameMotionGestureListener(signed)
    this = GameMotionGestureListener()
    initGameMotionGestureListener(this, signed)
    this
end


function onEvent(this::GameMotionGestureListener, eventObject)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        nothing
end


function onUpMotionGestureEvent(this::GameMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onDownMotionGestureEvent(this::GameMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onLeftMotionGestureEvent(this::GameMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onRightMotionGestureEvent(this::GameMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onDiagonalDownRightMotionGestureEvent(this::GameMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onDiagonalDownLeftMotionGestureEvent(this::GameMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onDiagonalUpRightMotionGestureEvent(this::GameMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onDiagonalUpLeftMotionGestureEvent(this::GameMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onPressedMotionGestureEvent(this::GameMotionGestureListener, ev)
        AllBinary.add(this.touchGestureCollection, AllBinary.getMotionGesture(ev))
        nothing
end


function released(this::GameMotionGestureListener, ev)
        try
            AllBinary.add(this.touchGestureCollection, AllBinary.getMotionGesture(ev))
            AllBinary.onMotionGestureCompleted(this.signed, this.touchGestureCollection)
            AllBinary.clear(this.touchGestureCollection)
        catch e
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, this.commonStrings.EXCEPTION_LABEL)
            AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), AllBinary.getMotionGesture(ev)))
            AllBinary.put(this.logUtil, AllBinary.toString(stringBuffer), this, "release", e)
        end
        nothing
end


function onScrolledMotionGestureEvent(this::GameMotionGestureListener, motionGestureEvent)
        nothing
        nothing
end


function onMotionGestureEvent(this::GameMotionGestureListener, ev)
        try
            local motionGestureInput = AllBinary.getMotionGesture(ev)
            if motionGestureInput === AllBinary.getInstance(TouchMotionGestureFactory).PRESSED
                AllBinary.onPressedMotionGestureEvent(this, ev)
            elseif motionGestureInput === AllBinary.getInstance(TouchMotionGestureFactory).RELEASED
                AllBinary.released(this, ev)
            else
                AllBinary.add(this.motionGestureCollection, motionGestureInput)
                AllBinary.onMotionGestureCompleted(this.signed, this.motionGestureCollection)
                AllBinary.clear(this.motionGestureCollection)
                AllBinary.clear(this.touchGestureCollection)
            end
        catch e
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, this.commonStrings.EXCEPTION_LABEL)
            AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), AllBinary.getMotionGesture(ev)))
            AllBinary.put(this.logUtil, AllBinary.toString(stringBuffer), this, "onMotionGestureEvent", e)
        end
        nothing
end

