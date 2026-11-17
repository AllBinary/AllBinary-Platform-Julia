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

mutable struct OrientationData <: JObject
    ORIENTATION_SENSOR_INPUT::Any
    ORIENTATION_TYPE::Any
    OrientationData() = new()
end

const OrientationData_SINGLETONValue = Ref{Any}(nothing)
const OrientationData_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{OrientationData})
    if !OrientationData_SINGLETONSet[]
        OrientationData_SINGLETONSet[] = true
        OrientationData_SINGLETONValue[] = newOrientationData()
    end
    OrientationData_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{OrientationData}, value)
    OrientationData_SINGLETONSet[] = true
    OrientationData_SINGLETONValue[] = value
end

function initFieldsOrientationData(this::OrientationData)
    this.ORIENTATION_SENSOR_INPUT = nothing
    this.ORIENTATION_TYPE = nothing
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
    this.ORIENTATION_TYPE = "Orientation Type"
    nothing
end


function initOrientationData(this::OrientationData)
        initFieldsOrientationData(this)
        nothing
        nothing
end

function newOrientationData()
    this = OrientationData()
    initOrientationData(this)
    this
end


function getInstance(::Type{OrientationData})
        return staticGet_SINGLETON(OrientationData)
end

