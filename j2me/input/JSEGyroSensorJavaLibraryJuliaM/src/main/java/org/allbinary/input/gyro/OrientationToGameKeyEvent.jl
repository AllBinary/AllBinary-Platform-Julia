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

mutable struct OrientationToGameKeyEvent <: JObject
    allBinaryGyroSensor::Any
    MIN::Int32
    OrientationToGameKeyEvent() = new()
end


function initFieldsOrientationToGameKeyEvent(this::OrientationToGameKeyEvent)
    this.allBinaryGyroSensor = nothing
    this.MIN = Int32(0)
    this.allBinaryGyroSensor = nothing
    this.MIN = Int32(15)
    nothing
end


function initOrientationToGameKeyEvent(this::OrientationToGameKeyEvent)
        initFieldsOrientationToGameKeyEvent(this)
        if AllBinary.isFeature(AllBinary.getInstance(Features), AllBinary.getInstance(SensorFeatureFactory).NO_ORIENTATION)
            this.allBinaryGyroSensor = newNoGyroSensor()
        else
            throw(jNewException("Exception", "Not Such Feature"))
        end
        nothing
end

function newOrientationToGameKeyEvent()
    this = OrientationToGameKeyEvent()
    initOrientationToGameKeyEvent(this)
    this
end


function setAllBinaryGyroSensor(this::OrientationToGameKeyEvent, allBinaryGyroSensor)
        this.allBinaryGyroSensor = allBinaryGyroSensor
        nothing
end


function getAllBinaryGyroSensor(this::OrientationToGameKeyEvent)
        return this.allBinaryGyroSensor
end


function process(this::OrientationToGameKeyEvent)
        nothing
        nothing
end


function updateGameKeyEvents(this::OrientationToGameKeyEvent, orientation, yaw, pitch, roll)
        nothing
        nothing
end

