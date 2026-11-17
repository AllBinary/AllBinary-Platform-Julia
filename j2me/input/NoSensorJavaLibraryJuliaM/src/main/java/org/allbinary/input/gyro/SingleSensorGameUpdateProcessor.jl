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

# extends SensorGameUpdateProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SingleSensorGameUpdateProcessor <: JObject
    SingleSensorGameUpdateProcessor() = new()
end


function initFieldsSingleSensorGameUpdateProcessor(this::SingleSensorGameUpdateProcessor)
    nothing
end

function initSingleSensorGameUpdateProcessor(this::SingleSensorGameUpdateProcessor)
    initSensorGameUpdateProcessor(this)
    initFieldsSingleSensorGameUpdateProcessor(this)
end

function newSingleSensorGameUpdateProcessor()
    this = SingleSensorGameUpdateProcessor()
    initSingleSensorGameUpdateProcessor(this)
    this
end


function process(this::SingleSensorGameUpdateProcessor, anyType)
        nothing
        nothing
end


function sendNotifications(this::SingleSensorGameUpdateProcessor, anyType)
        nothing
        nothing
end

