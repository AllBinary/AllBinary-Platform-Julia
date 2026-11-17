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
# package org.allbinary.game.configuration.feature

mutable struct SensorFeatureFactory <: JObject
    NO_ORIENTATION::Any
    ORIENTATION_SENSORS::Any
    SIMULATED_ORIENTATION_SENSORS::Any
    YAW::Any
    YAW_MINUS_RIGHT_PLUS_LEFT::Any
    YAW_MINUS_LEFT_PLUS_RIGHT::Any
    PITCH::Any
    ROLL::Any
    SensorFeatureFactory() = new()
end

const SensorFeatureFactory_instanceValue = Ref{Any}(nothing)
const SensorFeatureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{SensorFeatureFactory})
    if !SensorFeatureFactory_instanceSet[]
        SensorFeatureFactory_instanceSet[] = true
        SensorFeatureFactory_instanceValue[] = newSensorFeatureFactory()
    end
    SensorFeatureFactory_instanceValue[]
end
function staticSet_instance(::Type{SensorFeatureFactory}, value)
    SensorFeatureFactory_instanceSet[] = true
    SensorFeatureFactory_instanceValue[] = value
end

function initFieldsSensorFeatureFactory(this::SensorFeatureFactory)
    this.NO_ORIENTATION = nothing
    this.ORIENTATION_SENSORS = nothing
    this.SIMULATED_ORIENTATION_SENSORS = nothing
    this.YAW = nothing
    this.YAW_MINUS_RIGHT_PLUS_LEFT = nothing
    this.YAW_MINUS_LEFT_PLUS_RIGHT = nothing
    this.PITCH = nothing
    this.ROLL = nothing
    this.NO_ORIENTATION = newSensorFeature("No Orientation")
    this.ORIENTATION_SENSORS = newSensorFeature("Orientation Sensors")
    this.SIMULATED_ORIENTATION_SENSORS = newSensorFeature("Simulated Orientation Sensors")
    this.YAW = newSensorFeature("Yaw")
    this.YAW_MINUS_RIGHT_PLUS_LEFT = newSensorFeature("Yaw -Right +Left")
    this.YAW_MINUS_LEFT_PLUS_RIGHT = newSensorFeature("Yaw -Left +Right ")
    this.PITCH = newSensorFeature("Pitch")
    this.ROLL = newSensorFeature("Roll")
    nothing
end


function getInstance(::Type{SensorFeatureFactory})
        return staticGet_instance(SensorFeatureFactory)
end


function initSensorFeatureFactory(this::SensorFeatureFactory)
        initFieldsSensorFeatureFactory(this)
        nothing
        nothing
end

function newSensorFeatureFactory()
    this = SensorFeatureFactory()
    initSensorFeatureFactory(this)
    this
end

