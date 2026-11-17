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
# package org.allbinary.input.motion.gesture

mutable struct TouchMotionGestureFactory <: JObject
    LEFT::Any
    RIGHT::Any
    UP::Any
    DOWN::Any
    PRESSED::Any
    RELEASED::Any
    DIAGONAL_DOWN_RIGHT::Any
    DIAGONAL_DOWN_LEFT::Any
    DIAGONAL_UP_RIGHT::Any
    DIAGONAL_UP_LEFT::Any
    SCROLL_UP::Any
    SCROLL_DOWN::Any
    NO_MOTION::Any
    LAST_MOTION::Any
    TouchMotionGestureFactory() = new()
end

const TouchMotionGestureFactory_instanceValue = Ref{Any}(nothing)
const TouchMotionGestureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchMotionGestureFactory})
    if !TouchMotionGestureFactory_instanceSet[]
        TouchMotionGestureFactory_instanceSet[] = true
        TouchMotionGestureFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    TouchMotionGestureFactory_instanceValue[]
end
function staticSet_instance(::Type{TouchMotionGestureFactory}, value)
    TouchMotionGestureFactory_instanceSet[] = true
    TouchMotionGestureFactory_instanceValue[] = value
end

function initFieldsTouchMotionGestureFactory(this::TouchMotionGestureFactory)
    this.LEFT = nothing
    this.RIGHT = nothing
    this.UP = nothing
    this.DOWN = nothing
    this.PRESSED = nothing
    this.RELEASED = nothing
    this.DIAGONAL_DOWN_RIGHT = nothing
    this.DIAGONAL_DOWN_LEFT = nothing
    this.DIAGONAL_UP_RIGHT = nothing
    this.DIAGONAL_UP_LEFT = nothing
    this.SCROLL_UP = nothing
    this.SCROLL_DOWN = nothing
    this.NO_MOTION = nothing
    this.LAST_MOTION = nothing
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    nothing
end


function getInstance(::Type{TouchMotionGestureFactory})
        if staticGet_instance(TouchMotionGestureFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(TouchMotionGestureFactory, newTouchMotionGestureFactory())
        end
        return (staticGet_instance(TouchMotionGestureFactory))
end


function initTouchMotionGestureFactory(this::TouchMotionGestureFactory)
        initFieldsTouchMotionGestureFactory(this)
        local MAX::Int32 = AllBinary.getInstance(InputFactory).MAX
        this.LEFT = newMotionGestureInput(MAX - Int32(3), "Left Touch")
        this.RIGHT = newMotionGestureInput(MAX - Int32(4), "Right Touch")
        this.UP = newMotionGestureInput(MAX - Int32(5), "Up Touch")
        this.DOWN = newMotionGestureInput(MAX - Int32(6), "Down Touch")
        this.PRESSED = newMotionGestureInput(MAX - Int32(7), "Screen Press")
        this.RELEASED = newMotionGestureInput(MAX - Int32(8), "Released")
        this.DIAGONAL_DOWN_RIGHT = newMotionGestureInput(MAX - Int32(9), "Diagonal Dn R")
        this.DIAGONAL_DOWN_LEFT = newMotionGestureInput(MAX - Int32(10), "Diagonal Dn L")
        this.DIAGONAL_UP_RIGHT = newMotionGestureInput(MAX - Int32(11), "Diagonal Up R")
        this.DIAGONAL_UP_LEFT = newMotionGestureInput(MAX - Int32(12), "Diagonal Up L")
        this.SCROLL_UP = newMotionGestureInput(MAX - Int32(13), "Scroll Up")
        this.SCROLL_DOWN = newMotionGestureInput(MAX - Int32(14), "Scroll Down")
        this.NO_MOTION = newMotionGestureInput(MAX - Int32(2), "No Motion")
        this.LAST_MOTION = newMotionGestureInput(MAX - Int32(19), "Last Motion")
        nothing
end

function newTouchMotionGestureFactory()
    this = TouchMotionGestureFactory()
    initTouchMotionGestureFactory(this)
    this
end

