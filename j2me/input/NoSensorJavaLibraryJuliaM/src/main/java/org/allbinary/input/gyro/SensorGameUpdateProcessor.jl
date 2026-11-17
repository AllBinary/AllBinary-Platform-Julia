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

mutable struct SensorGameUpdateProcessor <: JObject
    inputSensor::Any
    SensorGameUpdateProcessor() = new()
end


function initFieldsSensorGameUpdateProcessor(this::SensorGameUpdateProcessor)
    this.inputSensor = nothing
    this.inputSensor = AllBinary.getInstance(NoAllBinarySensor)
    nothing
end

function initSensorGameUpdateProcessor(this::SensorGameUpdateProcessor)
    initFieldsSensorGameUpdateProcessor(this)
end

function newSensorGameUpdateProcessor()
    this = SensorGameUpdateProcessor()
    initSensorGameUpdateProcessor(this)
    this
end


function setInputSensor(this::SensorGameUpdateProcessor, inputSensor)
        this.inputSensor = inputSensor
        nothing
end


function getInputSensor(this::SensorGameUpdateProcessor)
        return this.inputSensor
end


function process(this::SensorGameUpdateProcessor, anyType)
        nothing
        nothing
end


function sendNotifications(this::SensorGameUpdateProcessor, anyType)
        nothing
        nothing
end


function isAnySensor(this::SensorGameUpdateProcessor)
        if this.inputSensor === AllBinary.getInstance(NoAllBinarySensor)
            return false
        else
            return true
        end
end


function setNoSensors(this::SensorGameUpdateProcessor)
        AllBinary.setInputSensor(this, AllBinary.getInstance(NoAllBinarySensor))
        nothing
end

