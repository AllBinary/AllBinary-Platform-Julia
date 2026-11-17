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
# package org.allbinary.input.motion.gesture.configuration

mutable struct MotionGestureConfigurationFactory <: JObject
    MotionGestureConfigurationFactory() = new()
end

const MotionGestureConfigurationFactory_configValue = Ref{Any}(nothing)
const MotionGestureConfigurationFactory_configSet = Ref(false)
function staticGet_config(::Type{MotionGestureConfigurationFactory})
    if !MotionGestureConfigurationFactory_configSet[]
        MotionGestureConfigurationFactory_configSet[] = true
        MotionGestureConfigurationFactory_configValue[] = newMotionGestureConfiguration()
    end
    MotionGestureConfigurationFactory_configValue[]
end
function staticSet_config(::Type{MotionGestureConfigurationFactory}, value)
    MotionGestureConfigurationFactory_configSet[] = true
    MotionGestureConfigurationFactory_configValue[] = value
end

function initFieldsMotionGestureConfigurationFactory(this::MotionGestureConfigurationFactory)
    nothing
end


function initMotionGestureConfigurationFactory(this::MotionGestureConfigurationFactory)
        initFieldsMotionGestureConfigurationFactory(this)
        nothing
        nothing
end

function newMotionGestureConfigurationFactory()
    this = MotionGestureConfigurationFactory()
    initMotionGestureConfigurationFactory(this)
    this
end


function getInstance(::Type{MotionGestureConfigurationFactory})
        return staticGet_config(MotionGestureConfigurationFactory)
end

