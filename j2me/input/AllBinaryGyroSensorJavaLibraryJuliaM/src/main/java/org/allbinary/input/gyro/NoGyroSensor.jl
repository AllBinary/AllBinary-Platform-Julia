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

# extends AllBinaryOrientationSensor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoGyroSensor <: JObject
    NoGyroSensor() = new()
end


function initFieldsNoGyroSensor(this::NoGyroSensor)
    nothing
end


function initNoGyroSensor(this::NoGyroSensor)
        initAllBinaryOrientationSensor(this)
        initFieldsNoGyroSensor(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        nothing
end

function newNoGyroSensor()
    this = NoGyroSensor()
    initNoGyroSensor(this)
    this
end


function getOrientation(this::NoGyroSensor)
        return staticGet_NONE(Orientation)
end


function onSensorChange(this::NoGyroSensor)
        nothing
        nothing
end

