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

mutable struct ReleaseControlledMotionGestureListener <: JObject
    logUtil::Any
    commonStrings::Any
    currentMotionGesture::Any
    isMouseGestureOccurring::Bool
    motionGestureCollection::Any
    signed::Any
    ReleaseControlledMotionGestureListener() = new()
end


function initFieldsReleaseControlledMotionGestureListener(this::ReleaseControlledMotionGestureListener)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.currentMotionGesture = nothing
    this.isMouseGestureOccurring = false
    this.motionGestureCollection = nothing
    this.signed = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.currentMotionGesture = AllBinary.getInstance(TouchMotionGestureFactory).NO_MOTION
    this.isMouseGestureOccurring = false
    this.motionGestureCollection = newBasicArrayListD()
    
    nothing
end


function initReleaseControlledMotionGestureListener(this::ReleaseControlledMotionGestureListener, signed)
        initFieldsReleaseControlledMotionGestureListener(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.signed = signed
        nothing
end

function newReleaseControlledMotionGestureListener(signed)
    this = ReleaseControlledMotionGestureListener()
    initReleaseControlledMotionGestureListener(this, signed)
    this
end


function onEvent(this::ReleaseControlledMotionGestureListener, eventObject)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        nothing
end


function onUpMotionGestureEvent(this::ReleaseControlledMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onDownMotionGestureEvent(this::ReleaseControlledMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onLeftMotionGestureEvent(this::ReleaseControlledMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onRightMotionGestureEvent(this::ReleaseControlledMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onDiagonalDownRightMotionGestureEvent(this::ReleaseControlledMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onDiagonalDownLeftMotionGestureEvent(this::ReleaseControlledMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onDiagonalUpRightMotionGestureEvent(this::ReleaseControlledMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onDiagonalUpLeftMotionGestureEvent(this::ReleaseControlledMotionGestureListener, ev)
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onPressedMotionGestureEvent(this::ReleaseControlledMotionGestureListener, ev)
        this.isMouseGestureOccurring = true
        this.currentMotionGesture = AllBinary.getInstance(TouchMotionGestureFactory).NO_MOTION
        AllBinary.onMotionGestureEvent(this, ev)
        nothing
end


function onScrolledMotionGestureEvent(this::ReleaseControlledMotionGestureListener, motionGestureEvent)
        nothing
        nothing
end


function released(this::ReleaseControlledMotionGestureListener, ev)
        try
            if this.isMouseGestureOccurring == false
                return
            end
            this.isMouseGestureOccurring = false
            AllBinary.onMotionGestureCompleted(this.signed, this.motionGestureCollection)
            AllBinary.clear(this.motionGestureCollection)
        catch e
            AllBinary.put(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.EXCEPTION_LABEL), AllBinary.toString(AllBinary.getInstance(StringUtil), AllBinary.getMotionGesture(ev)))), this, "release", e)
        end
        nothing
end


function onMotionGestureEvent(this::ReleaseControlledMotionGestureListener, ev)
        if this.isMouseGestureOccurring == false
            return
        end
        local motionGestureInput = AllBinary.getMotionGesture(ev)
        if motionGestureInput === AllBinary.getInstance(TouchMotionGestureFactory).PRESSED
            AllBinary.onPressedMotionGestureEvent(this, ev)
        elseif motionGestureInput === AllBinary.getInstance(TouchMotionGestureFactory).RELEASED
            AllBinary.released(this, ev)
        else
            if this.currentMotionGesture !== motionGestureInput
                this.currentMotionGesture = motionGestureInput
                AllBinary.add(this.motionGestureCollection, AllBinary.getMotionGesture(ev))
            end
        end
        nothing
end

