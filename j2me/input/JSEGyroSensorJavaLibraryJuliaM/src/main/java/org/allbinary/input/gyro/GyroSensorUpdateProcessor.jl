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

# extends Processor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GyroSensorUpdateProcessor <: JObject
    GyroSensorUpdateProcessor() = new()
end


function initFieldsGyroSensorUpdateProcessor(this::GyroSensorUpdateProcessor)
    nothing
end

function initGyroSensorUpdateProcessor(this::GyroSensorUpdateProcessor)
    initProcessor(this)
    initFieldsGyroSensorUpdateProcessor(this)
end

function newGyroSensorUpdateProcessor()
    this = GyroSensorUpdateProcessor()
    initGyroSensorUpdateProcessor(this)
    this
end


function process(this::GyroSensorUpdateProcessor)
        nothing
        nothing
end

