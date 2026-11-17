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

mutable struct TrackballMotionGestureFactory <: JObject
    LEFT::Any
    RIGHT::Any
    UP::Any
    DOWN::Any
    TrackballMotionGestureFactory() = new()
end

const TrackballMotionGestureFactory_instanceValue = Ref{Any}(nothing)
const TrackballMotionGestureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{TrackballMotionGestureFactory})
    if !TrackballMotionGestureFactory_instanceSet[]
        TrackballMotionGestureFactory_instanceSet[] = true
        TrackballMotionGestureFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    TrackballMotionGestureFactory_instanceValue[]
end
function staticSet_instance(::Type{TrackballMotionGestureFactory}, value)
    TrackballMotionGestureFactory_instanceSet[] = true
    TrackballMotionGestureFactory_instanceValue[] = value
end

function initFieldsTrackballMotionGestureFactory(this::TrackballMotionGestureFactory)
    this.LEFT = nothing
    this.RIGHT = nothing
    this.UP = nothing
    this.DOWN = nothing
    
    
    
    
    nothing
end


function getInstance(::Type{TrackballMotionGestureFactory})
        if staticGet_instance(TrackballMotionGestureFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(TrackballMotionGestureFactory, newTrackballMotionGestureFactory())
        end
        return (staticGet_instance(TrackballMotionGestureFactory))
end


function initTrackballMotionGestureFactory(this::TrackballMotionGestureFactory)
        initFieldsTrackballMotionGestureFactory(this)
        local MAX::Int32 = AllBinary.getInstance(InputFactory).MAX
        this.LEFT = newMotionGestureInput(MAX - Int32(26), "L Trackball")
        this.RIGHT = newMotionGestureInput(MAX - Int32(27), "R Trackball")
        this.UP = newMotionGestureInput(MAX - Int32(28), "Up Trackball")
        this.DOWN = newMotionGestureInput(MAX - Int32(29), "D Trackball")
        nothing
end

function newTrackballMotionGestureFactory()
    this = TrackballMotionGestureFactory()
    initTrackballMotionGestureFactory(this)
    this
end

