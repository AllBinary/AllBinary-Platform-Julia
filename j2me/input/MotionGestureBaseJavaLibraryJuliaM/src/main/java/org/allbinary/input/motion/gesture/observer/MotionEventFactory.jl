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

mutable struct MotionEventFactory <: JObject
    source::Any
    id::Int32
    MotionEventFactory() = new()
end

const MotionEventFactory_indexValue = Ref{Any}(nothing)
const MotionEventFactory_indexSet = Ref(false)
function staticGet_index(::Type{MotionEventFactory})
    if !MotionEventFactory_indexSet[]
        MotionEventFactory_indexSet[] = true
        MotionEventFactory_indexValue[] = Int32(0)
    end
    MotionEventFactory_indexValue[]
end
function staticSet_index(::Type{MotionEventFactory}, value)
    MotionEventFactory_indexSet[] = true
    MotionEventFactory_indexValue[] = value
end

function initFieldsMotionEventFactory(this::MotionEventFactory)
    this.source = nothing
    this.id = Int32(0)
    
    
    nothing
end


function initMotionEventFactory(this::MotionEventFactory, source, id)
        initFieldsMotionEventFactory(this)
        this.source = source
        this.id = id
        staticSet_index(MotionEventFactory, AllBinary.getId(AllBinary.getInstance(TouchMotionGestureFactory).LAST_MOTION))
        nothing
end

function newMotionEventFactory(source, id)
    this = MotionEventFactory()
    initMotionEventFactory(this, source, id)
    this
end


function getInstance(this::MotionEventFactory)
        local inputFactory = AllBinary.getInstance(InputFactory)
        local input = AllBinary.getInstanceById(inputFactory, (let old = staticGet_index(MotionEventFactory); staticSet_index(MotionEventFactory, old + Int32(1)); old end))
        if input === inputFactory.NO_INPUT
            return newMotionGestureEvent(this.source, this.id, (AllBinary.getInstance(TouchMotionGestureFactory).NO_MOTION))
        else
            return newMotionGestureEvent(this.source, this.id, (input))
        end
end

