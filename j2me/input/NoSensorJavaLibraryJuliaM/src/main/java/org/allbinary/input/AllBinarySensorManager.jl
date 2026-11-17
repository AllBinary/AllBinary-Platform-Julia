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
# package org.allbinary.input

mutable struct AllBinarySensorManager <: JObject
    logUtil::Any
    commonStrings::Any
    ORIENTATION_SENSOR_INPUT::Any
    ORIENTATION_TYPE::Any
    list::Any
    AllBinarySensorManager() = new()
end

const AllBinarySensorManager_instanceValue = Ref{Any}(nothing)
const AllBinarySensorManager_instanceSet = Ref(false)
function staticGet_instance(::Type{AllBinarySensorManager})
    if !AllBinarySensorManager_instanceSet[]
        AllBinarySensorManager_instanceSet[] = true
        AllBinarySensorManager_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    AllBinarySensorManager_instanceValue[]
end
function staticSet_instance(::Type{AllBinarySensorManager}, value)
    AllBinarySensorManager_instanceSet[] = true
    AllBinarySensorManager_instanceValue[] = value
end

function initFieldsAllBinarySensorManager(this::AllBinarySensorManager)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.ORIENTATION_SENSOR_INPUT = nothing
    this.ORIENTATION_TYPE = nothing
    this.list = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
    this.ORIENTATION_TYPE = "Orientation Type"
    this.list = newBasicArrayListD()
    nothing
end


function getInstance(::Type{AllBinarySensorManager})
        if staticGet_instance(AllBinarySensorManager) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(AllBinarySensorManager, newAllBinarySensorManager())
        end
        return (staticGet_instance(AllBinarySensorManager))
end


function initAllBinarySensorManager(this::AllBinarySensorManager)
        initFieldsAllBinarySensorManager(this)
        try
            AllBinary.init(GyroSensorFactory)
            AllBinary.init(AccelerometerSensorFactory)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e)
        end
        nothing
end

function newAllBinarySensorManager()
    this = AllBinarySensorManager()
    initAllBinarySensorManager(this)
    this
end


function init(this::AllBinarySensorManager)
        nothing
        nothing
end


function getSensorNamesList(this::AllBinarySensorManager)
        return this.list
end


function shutdown(this::AllBinarySensorManager)
        nothing
        nothing
end

