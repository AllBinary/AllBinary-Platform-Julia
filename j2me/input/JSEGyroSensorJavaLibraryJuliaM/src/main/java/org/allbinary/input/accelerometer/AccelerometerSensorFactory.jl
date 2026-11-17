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
# package org.allbinary.input.accelerometer

mutable struct AccelerometerSensorFactory <: JObject
    AccelerometerSensorFactory() = new()
end

const AccelerometerSensorFactory_allBinaryAccelerometerSensorValue = Ref{Any}(nothing)
const AccelerometerSensorFactory_allBinaryAccelerometerSensorSet = Ref(false)
function staticGet_allBinaryAccelerometerSensor(::Type{AccelerometerSensorFactory})
    if !AccelerometerSensorFactory_allBinaryAccelerometerSensorSet[]
        AccelerometerSensorFactory_allBinaryAccelerometerSensorSet[] = true
        AccelerometerSensorFactory_allBinaryAccelerometerSensorValue[] = nothing
    end
    AccelerometerSensorFactory_allBinaryAccelerometerSensorValue[]
end
function staticSet_allBinaryAccelerometerSensor(::Type{AccelerometerSensorFactory}, value)
    AccelerometerSensorFactory_allBinaryAccelerometerSensorSet[] = true
    AccelerometerSensorFactory_allBinaryAccelerometerSensorValue[] = value
end

function initFieldsAccelerometerSensorFactory(this::AccelerometerSensorFactory)
    nothing
end

function initAccelerometerSensorFactory(this::AccelerometerSensorFactory)
    initFieldsAccelerometerSensorFactory(this)
end

function newAccelerometerSensorFactory()
    this = AccelerometerSensorFactory()
    initAccelerometerSensorFactory(this)
    this
end


function init(::Type{AccelerometerSensorFactory})
        local features = AllBinary.getInstance(Features)
        local sensorFeatureFactory = AllBinary.getInstance(SensorFeatureFactory)
        if AllBinary.isFeature(features, sensorFeatureFactory.ORIENTATION_SENSORS)
            throw(jNewException("Exception", "No Orientation Sensors"))
        elseif AllBinary.isFeature(features, sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
            throw(jNewException("Exception", "No Simulation Sensors"))
        elseif AllBinary.isFeature(features, sensorFeatureFactory.NO_ORIENTATION)
            staticSet_allBinaryAccelerometerSensor(AccelerometerSensorFactory, newNoAccelerometerSensor())
        else
            throw(jNewException("Exception", "Not Such SensorFeature"))
        end
        nothing
end


function getInstance(::Type{AccelerometerSensorFactory})
        return staticGet_allBinaryAccelerometerSensor(AccelerometerSensorFactory)
end

