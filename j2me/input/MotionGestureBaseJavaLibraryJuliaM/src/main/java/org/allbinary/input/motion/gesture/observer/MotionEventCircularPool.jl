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

mutable struct MotionEventCircularPool <: JObject
    MIN::Int32
    eventPool::Any
    MotionEventCircularPool() = new()
end


function initFieldsMotionEventCircularPool(this::MotionEventCircularPool)
    this.MIN = Int32(0)
    this.eventPool = nothing
    this.MIN = AllBinary.getId(AllBinary.getInstance(TouchMotionGestureFactory).LAST_MOTION)
    this.eventPool = newAllBinaryEventCircularPool((AllBinary.getInstance(InputFactory).MAX - Int32(1)) - this.MIN)
    nothing
end


function createPool(::Type{MotionEventCircularPool}, id)
        return newMotionEventCircularPool(id)
end


function initMotionEventCircularPool(this::MotionEventCircularPool, id)
        initFieldsMotionEventCircularPool(this)
        AllBinary.initAllBinaryEventCircularPool(this.eventPool, newMotionEventFactory(this.eventPool, id))
        nothing
end

function newMotionEventCircularPool(id)
    this = MotionEventCircularPool()
    initMotionEventCircularPool(this, id)
    this
end


function getInstance(this::MotionEventCircularPool, motionGestureInput)
        return (AllBinary.getInstance(this.eventPool, AllBinary.getId(motionGestureInput) - this.MIN))
end

