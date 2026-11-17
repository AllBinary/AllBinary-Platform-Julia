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

# extends AllBinarySensor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryOrientationSensor <: JObject
    listener::Any
    AllBinaryOrientationSensor() = new()
end

const AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORValue = Ref{Any}(nothing)
const AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORSet = Ref(false)
function staticGet_NULL_ALLBINARY_ORIENTATION_SENSOR(::Type{AllBinaryOrientationSensor})
    if !AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORSet[]
        AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORSet[] = true
        AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORValue[] = newAllBinaryOrientationSensor()
    end
    AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORValue[]
end
function staticSet_NULL_ALLBINARY_ORIENTATION_SENSOR(::Type{AllBinaryOrientationSensor}, value)
    AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORSet[] = true
    AllBinaryOrientationSensor_NULL_ALLBINARY_ORIENTATION_SENSORValue[] = value
end

function initFieldsAllBinaryOrientationSensor(this::AllBinaryOrientationSensor)
    this.listener = nothing
    this.listener = AllBinary.getInstance(NoCompleteMotionGestureInputEventListener)
    nothing
end


function setListener(this::AllBinaryOrientationSensor, completeMotionGestureInputEventListenerInterface)
        this.listener = completeMotionGestureInputEventListenerInterface
        nothing
end


function initAllBinaryOrientationSensor(this::AllBinaryOrientationSensor)
        initAllBinarySensor(this)
        initFieldsAllBinaryOrientationSensor(this)
        nothing
        nothing
end

function newAllBinaryOrientationSensor()
    this = AllBinaryOrientationSensor()
    initAllBinaryOrientationSensor(this)
    this
end


function getOrientation(this::AllBinaryOrientationSensor)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end

