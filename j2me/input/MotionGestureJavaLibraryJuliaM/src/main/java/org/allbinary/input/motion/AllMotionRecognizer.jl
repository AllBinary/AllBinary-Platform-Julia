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
# package org.allbinary.input.motion

# extends MotionRecognizer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllMotionRecognizer <: JObject
    logUtil::Any
    motionGestureRecognizer::Any
    touchButtonProcessing::Bool
    touchButtonRecognizer::Any
    id::Int32
    lastX::Int32
    lastY::Int32
    AllMotionRecognizer() = new()
end

const AllMotionRecognizer_indexValue = Ref{Any}(nothing)
const AllMotionRecognizer_indexSet = Ref(false)
function staticGet_index(::Type{AllMotionRecognizer})
    if !AllMotionRecognizer_indexSet[]
        AllMotionRecognizer_indexSet[] = true
        AllMotionRecognizer_indexValue[] = Int32(0)
    end
    AllMotionRecognizer_indexValue[]
end
function staticSet_index(::Type{AllMotionRecognizer}, value)
    AllMotionRecognizer_indexSet[] = true
    AllMotionRecognizer_indexValue[] = value
end
const AllMotionRecognizer_pointCircularPoolValue = Ref{Any}(nothing)
const AllMotionRecognizer_pointCircularPoolSet = Ref(false)
function staticGet_pointCircularPool(::Type{AllMotionRecognizer})
    if !AllMotionRecognizer_pointCircularPoolSet[]
        AllMotionRecognizer_pointCircularPoolSet[] = true
        AllMotionRecognizer_pointCircularPoolValue[] = newGPointCircularPool(Int32(40))
    end
    AllMotionRecognizer_pointCircularPoolValue[]
end
function staticSet_pointCircularPool(::Type{AllMotionRecognizer}, value)
    AllMotionRecognizer_pointCircularPoolSet[] = true
    AllMotionRecognizer_pointCircularPoolValue[] = value
end

function initFieldsAllMotionRecognizer(this::AllMotionRecognizer)
    this.logUtil = nothing
    this.motionGestureRecognizer = nothing
    this.touchButtonProcessing = false
    this.touchButtonRecognizer = nothing
    this.id = Int32(0)
    this.lastX = Int32(0)
    this.lastY = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    this.touchButtonProcessing = false
    
    
    this.lastX = Int32(0)
    this.lastY = Int32(0)
    nothing
end


function initAllMotionRecognizer(this::AllMotionRecognizer)
        initMotionRecognizer(this)
        initFieldsAllMotionRecognizer(this)
        this.id = (let old = staticGet_index(AllMotionRecognizer); staticSet_index(AllMotionRecognizer, old + Int32(1)); old end)
        this.motionGestureRecognizer = newMotionGestureRecognizer(this.id)
        this.touchButtonRecognizer = newTouchButtonRecognizer()
        nothing
end

function newAllMotionRecognizer()
    this = AllMotionRecognizer()
    initAllMotionRecognizer(this)
    this
end


function processStartMotionEvent(this::AllMotionRecognizer, x, y, deviceId, modifiers)
        if AllBinary.pressTouchButtonInput(this.touchButtonRecognizer, x, y, deviceId)
            this.touchButtonProcessing = true
        end
        if !this.touchButtonProcessing
            local point = (AllBinary.getNextInstance(staticGet_pointCircularPool(AllMotionRecognizer)))
            AllBinary.setX(point, x)
            AllBinary.setY(point, y)
            AllBinary.processPressedMotionEvent(this.motionGestureRecognizer, point, deviceId, modifiers)
        end
        nothing
end


function processEndMotionEvent(this::AllMotionRecognizer, x, y, deviceId, modifiers)
        if AllBinary.releaseTouchButtonInput(this.touchButtonRecognizer, x, y, deviceId)
            nothing
        end
        if !this.touchButtonProcessing
            local point = (AllBinary.getNextInstance(staticGet_pointCircularPool(AllMotionRecognizer)))
            AllBinary.setX(point, x)
            AllBinary.setY(point, y)
            AllBinary.processReleasedMotionEvent(this.motionGestureRecognizer, point, deviceId, modifiers)
        end
        if this.touchButtonProcessing
            this.touchButtonProcessing = false
        end
        nothing
end


function processDraggedMotionEvent(this::AllMotionRecognizer, x, y, deviceId, modifiers)
        if this.touchButtonProcessing
            AllBinary.pressTouchButtonInput(this.touchButtonRecognizer, x, y, deviceId)
        end
        if !this.touchButtonProcessing
            local point = (AllBinary.getNextInstance(staticGet_pointCircularPool(AllMotionRecognizer)))
            AllBinary.setX(point, x)
            AllBinary.setY(point, y)
            AllBinary.processDraggedMotionEvent(this.motionGestureRecognizer, point, deviceId, modifiers)
        end
        nothing
end


function processMovedMotionEvent(this::AllMotionRecognizer, x, y, deviceId, modifiers)
        if x != this.lastX || y != this.lastY
            this.lastX = x
            this.lastY = y
            local point = (AllBinary.getNextInstance(staticGet_pointCircularPool(AllMotionRecognizer)))
            AllBinary.setX(point, x)
            AllBinary.setY(point, y)
            AllBinary.processMovedMotionEvent(this.motionGestureRecognizer, point, deviceId, modifiers)
        end
        nothing
end


function processScrolledMotionEvent(this::AllMotionRecognizer, x, y, deviceId, modifiers)
        local point = (AllBinary.getNextInstance(staticGet_pointCircularPool(AllMotionRecognizer)))
        AllBinary.setX(point, x)
        AllBinary.setY(point, y)
        AllBinary.processScrolledMotionEvent(this.motionGestureRecognizer, point, deviceId, modifiers)
        nothing
end


function getMotionGestureRecognizer(this::AllMotionRecognizer)
        return this.motionGestureRecognizer
end

