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

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MotionGestureEvent <: JObject
    motionGesture::Any
    id::Int32
    previousPoint::Any
    currentPoint::Any
    commonLabels::Any
    MotionGestureEvent() = new()
end

const MotionGestureEvent_PREVIOUSValue = Ref{Any}(nothing)
const MotionGestureEvent_PREVIOUSSet = Ref(false)
function staticGet_PREVIOUS(::Type{MotionGestureEvent})
    if !MotionGestureEvent_PREVIOUSSet[]
        MotionGestureEvent_PREVIOUSSet[] = true
        MotionGestureEvent_PREVIOUSValue[] = " Previous: "
    end
    MotionGestureEvent_PREVIOUSValue[]
end
function staticSet_PREVIOUS(::Type{MotionGestureEvent}, value)
    MotionGestureEvent_PREVIOUSSet[] = true
    MotionGestureEvent_PREVIOUSValue[] = value
end
const MotionGestureEvent_HASHCODEValue = Ref{Any}(nothing)
const MotionGestureEvent_HASHCODESet = Ref(false)
function staticGet_HASHCODE(::Type{MotionGestureEvent})
    if !MotionGestureEvent_HASHCODESet[]
        MotionGestureEvent_HASHCODESet[] = true
        MotionGestureEvent_HASHCODEValue[] = " hashcode: "
    end
    MotionGestureEvent_HASHCODEValue[]
end
function staticSet_HASHCODE(::Type{MotionGestureEvent}, value)
    MotionGestureEvent_HASHCODESet[] = true
    MotionGestureEvent_HASHCODEValue[] = value
end

function initFieldsMotionGestureEvent(this::MotionGestureEvent)
    this.motionGesture = nothing
    this.id = Int32(0)
    this.previousPoint = nothing
    this.currentPoint = nothing
    this.commonLabels = nothing
    this.motionGesture = AllBinary.getInstance(TouchMotionGestureFactory).NO_MOTION
    
    this.previousPoint = AllBinary.getInstance(PointFactory).ZERO_ZERO
    this.currentPoint = AllBinary.getInstance(PointFactory).ZERO_ZERO
    this.commonLabels = AllBinary.getInstance(CommonLabels)
    nothing
end


function initMotionGestureEvent(this::MotionGestureEvent, source, id, motionGesture)
        initAllBinaryEventObject(this, source)
        initFieldsMotionGestureEvent(this)
        this.id = id
        AllBinary.setMotionGesture(this, motionGesture)
        nothing
end

function newMotionGestureEvent(source, id, motionGesture)
    this = MotionGestureEvent()
    initMotionGestureEvent(this, source, id, motionGesture)
    this
end


function getMotionGesture(this::MotionGestureEvent)
        return this.motionGesture
end


function setMotionGesture(this::MotionGestureEvent, motionGesture)
        this.motionGesture = motionGesture
        nothing
end


function getPreviousPoint(this::MotionGestureEvent)
        return this.previousPoint
end


function setPreviousPoint(this::MotionGestureEvent, previousPoint)
        this.previousPoint = previousPoint
        nothing
end


function getCurrentPoint(this::MotionGestureEvent)
        return this.currentPoint
end


function setCurrentPoint(this::MotionGestureEvent, currentPoint)
        this.currentPoint = currentPoint
        nothing
end


function toString(this::MotionGestureEvent)
        local stringBuffer = newStringMaker()
        local stringUtil = AllBinary.getInstance(StringUtil)
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, this.motionGesture))
        AllBinary.append(stringBuffer, this.commonLabels.CURRENT)
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, this.currentPoint))
        AllBinary.append(stringBuffer, staticGet_PREVIOUS(MotionGestureEvent))
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, this.previousPoint))
        AllBinary.append(stringBuffer, staticGet_HASHCODE(MotionGestureEvent))
        AllBinary.appendint(stringBuffer, ((AllBinary.hashCode(AllBinary.getInstance(TsUtil), this)) % Int32))
        return AllBinary.toString(stringBuffer)
end


function getId(this::MotionGestureEvent)
        return this.id
end

