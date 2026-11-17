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

mutable struct GyroSensorFactory <: JObject
    GyroSensorFactory() = new()
end

const GyroSensorFactory_allBinaryGyroSensorValue = Ref{Any}(nothing)
const GyroSensorFactory_allBinaryGyroSensorSet = Ref(false)
function staticGet_allBinaryGyroSensor(::Type{GyroSensorFactory})
    if !GyroSensorFactory_allBinaryGyroSensorSet[]
        GyroSensorFactory_allBinaryGyroSensorSet[] = true
        GyroSensorFactory_allBinaryGyroSensorValue[] = staticGet_NULL_ALLBINARY_ORIENTATION_SENSOR(AllBinaryOrientationSensor)
    end
    GyroSensorFactory_allBinaryGyroSensorValue[]
end
function staticSet_allBinaryGyroSensor(::Type{GyroSensorFactory}, value)
    GyroSensorFactory_allBinaryGyroSensorSet[] = true
    GyroSensorFactory_allBinaryGyroSensorValue[] = value
end

function initFieldsGyroSensorFactory(this::GyroSensorFactory)
    nothing
end

function initGyroSensorFactory(this::GyroSensorFactory)
    initFieldsGyroSensorFactory(this)
end

function newGyroSensorFactory()
    this = GyroSensorFactory()
    initGyroSensorFactory(this)
    this
end


function init(::Type{GyroSensorFactory})
        staticSet_allBinaryGyroSensor(GyroSensorFactory, newNoGyroSensor())
        nothing
end


function getInstance(::Type{GyroSensorFactory})
        return staticGet_allBinaryGyroSensor(GyroSensorFactory)
end

