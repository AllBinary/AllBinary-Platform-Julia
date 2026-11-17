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
mutable struct GestureOnlyMotionRecognizer <: JObject
    motionGestureRecognizer::Any
    id::Int32
    GestureOnlyMotionRecognizer() = new()
end

const GestureOnlyMotionRecognizer_indexValue = Ref{Any}(nothing)
const GestureOnlyMotionRecognizer_indexSet = Ref(false)
function staticGet_index(::Type{GestureOnlyMotionRecognizer})
    if !GestureOnlyMotionRecognizer_indexSet[]
        GestureOnlyMotionRecognizer_indexSet[] = true
        GestureOnlyMotionRecognizer_indexValue[] = Int32(0)
    end
    GestureOnlyMotionRecognizer_indexValue[]
end
function staticSet_index(::Type{GestureOnlyMotionRecognizer}, value)
    GestureOnlyMotionRecognizer_indexSet[] = true
    GestureOnlyMotionRecognizer_indexValue[] = value
end
const GestureOnlyMotionRecognizer_pointCircularPoolValue = Ref{Any}(nothing)
const GestureOnlyMotionRecognizer_pointCircularPoolSet = Ref(false)
function staticGet_pointCircularPool(::Type{GestureOnlyMotionRecognizer})
    if !GestureOnlyMotionRecognizer_pointCircularPoolSet[]
        GestureOnlyMotionRecognizer_pointCircularPoolSet[] = true
        GestureOnlyMotionRecognizer_pointCircularPoolValue[] = newGPointCircularPool(Int32(40))
    end
    GestureOnlyMotionRecognizer_pointCircularPoolValue[]
end
function staticSet_pointCircularPool(::Type{GestureOnlyMotionRecognizer}, value)
    GestureOnlyMotionRecognizer_pointCircularPoolSet[] = true
    GestureOnlyMotionRecognizer_pointCircularPoolValue[] = value
end

function initFieldsGestureOnlyMotionRecognizer(this::GestureOnlyMotionRecognizer)
    this.motionGestureRecognizer = nothing
    this.id = Int32(0)
    
    
    nothing
end


function initGestureOnlyMotionRecognizer(this::GestureOnlyMotionRecognizer)
        initMotionRecognizer(this)
        initFieldsGestureOnlyMotionRecognizer(this)
        this.id = (let old = staticGet_index(GestureOnlyMotionRecognizer); staticSet_index(GestureOnlyMotionRecognizer, old + Int32(1)); old end)
        this.motionGestureRecognizer = newMotionGestureRecognizer(this.id)
        nothing
end

function newGestureOnlyMotionRecognizer()
    this = GestureOnlyMotionRecognizer()
    initGestureOnlyMotionRecognizer(this)
    this
end


function processStartMotionEvent(this::GestureOnlyMotionRecognizer, x, y, deviceId, modifiers)
        local point = (AllBinary.getNextInstance(staticGet_pointCircularPool(GestureOnlyMotionRecognizer)))
        AllBinary.setX(point, x)
        AllBinary.setY(point, y)
        AllBinary.processPressedMotionEvent(this.motionGestureRecognizer, point, deviceId, modifiers)
        nothing
end


function processEndMotionEvent(this::GestureOnlyMotionRecognizer, x, y, deviceId, modifiers)
        local point = (AllBinary.getNextInstance(staticGet_pointCircularPool(GestureOnlyMotionRecognizer)))
        AllBinary.setX(point, x)
        AllBinary.setY(point, y)
        AllBinary.processReleasedMotionEvent(this.motionGestureRecognizer, point, deviceId, modifiers)
        nothing
end


function processDraggedMotionEvent(this::GestureOnlyMotionRecognizer, x, y, deviceId, modifiers)
        local point = (AllBinary.getNextInstance(staticGet_pointCircularPool(GestureOnlyMotionRecognizer)))
        AllBinary.setX(point, x)
        AllBinary.setY(point, y)
        AllBinary.processDraggedMotionEvent(this.motionGestureRecognizer, point, deviceId, modifiers)
        nothing
end

