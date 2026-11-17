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
# package org.allbinary.input.gyro

mutable struct OrientationMotionGestureFactory <: JObject
    LEFT::Any
    RIGHT::Any
    UP::Any
    DOWN::Any
    ROLL_LEFT::Any
    ROLL_RIGHT::Any
    OrientationMotionGestureFactory() = new()
end

const OrientationMotionGestureFactory_instanceValue = Ref{Any}(nothing)
const OrientationMotionGestureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{OrientationMotionGestureFactory})
    if !OrientationMotionGestureFactory_instanceSet[]
        OrientationMotionGestureFactory_instanceSet[] = true
        OrientationMotionGestureFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    OrientationMotionGestureFactory_instanceValue[]
end
function staticSet_instance(::Type{OrientationMotionGestureFactory}, value)
    OrientationMotionGestureFactory_instanceSet[] = true
    OrientationMotionGestureFactory_instanceValue[] = value
end

function initFieldsOrientationMotionGestureFactory(this::OrientationMotionGestureFactory)
    this.LEFT = nothing
    this.RIGHT = nothing
    this.UP = nothing
    this.DOWN = nothing
    this.ROLL_LEFT = nothing
    this.ROLL_RIGHT = nothing
    
    
    
    
    
    
    nothing
end


function getInstance(::Type{OrientationMotionGestureFactory})
        if staticGet_instance(OrientationMotionGestureFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(OrientationMotionGestureFactory, newOrientationMotionGestureFactory())
        end
        return (staticGet_instance(OrientationMotionGestureFactory))
end


function initOrientationMotionGestureFactory(this::OrientationMotionGestureFactory)
        initFieldsOrientationMotionGestureFactory(this)
        local MAX::Int32 = AllBinary.getInstance(InputFactory).MAX
        this.LEFT = newMotionGestureInput(MAX - Int32(20), "Left Orient")
        this.RIGHT = newMotionGestureInput(MAX - Int32(21), "Right Orient")
        this.UP = newMotionGestureInput(MAX - Int32(22), "Up Orient")
        this.DOWN = newMotionGestureInput(MAX - Int32(23), "Down Orient")
        this.ROLL_LEFT = newMotionGestureInput(MAX - Int32(24), "Roll Left")
        this.ROLL_RIGHT = newMotionGestureInput(MAX - Int32(25), "Roll Right")
        nothing
end

function newOrientationMotionGestureFactory()
    this = OrientationMotionGestureFactory()
    initOrientationMotionGestureFactory(this)
    this
end

