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
mutable struct AccelerometerSensorUpdateProcessor <: JObject
    AccelerometerSensorUpdateProcessor() = new()
end


function initFieldsAccelerometerSensorUpdateProcessor(this::AccelerometerSensorUpdateProcessor)
    nothing
end

function initAccelerometerSensorUpdateProcessor(this::AccelerometerSensorUpdateProcessor)
    initProcessor(this)
    initFieldsAccelerometerSensorUpdateProcessor(this)
end

function newAccelerometerSensorUpdateProcessor()
    this = AccelerometerSensorUpdateProcessor()
    initAccelerometerSensorUpdateProcessor(this)
    this
end


function process(this::AccelerometerSensorUpdateProcessor)
        local sensorFeatureFactory = AllBinary.getInstance(SensorFeatureFactory)
        if AllBinary.isFeature(AllBinary.getInstance(Features), sensorFeatureFactory.ORIENTATION_SENSORS)
            AllBinary.setCompleteMotionGestureInputEventListener(AllBinary.getInstance(AccelerometerSensorFactory), newSingleKeyPressGameKeyFromMotionGestureEventListener())
        elseif AllBinary.isFeature(AllBinary.getInstance(Features), sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
            AllBinary.setCompleteMotionGestureInputEventListener(AllBinary.getInstance(AccelerometerSensorFactory), newSingleKeyPressGameKeyFromMotionGestureEventListener())
        elseif AllBinary.isFeature(AllBinary.getInstance(Features), sensorFeatureFactory.NO_ORIENTATION)
            AllBinary.setCompleteMotionGestureInputEventListener(AllBinary.getInstance(AccelerometerSensorFactory), AllBinary.getInstance(NoCompleteMotionGestureInputEventListener))
        else
            throw(jNewException("Exception", "Sensor Feature Not Set"))
        end
        nothing
end

