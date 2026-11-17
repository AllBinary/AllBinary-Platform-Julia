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

mutable struct AllBinarySensor <: JObject
    logUtil::Any
    commonStrings::Any
    AllBinarySensor() = new()
end

const AllBinarySensor_NULL_ALLBINARY_SENSORValue = Ref{Any}(nothing)
const AllBinarySensor_NULL_ALLBINARY_SENSORSet = Ref(false)
function staticGet_NULL_ALLBINARY_SENSOR(::Type{AllBinarySensor})
    if !AllBinarySensor_NULL_ALLBINARY_SENSORSet[]
        AllBinarySensor_NULL_ALLBINARY_SENSORSet[] = true
        AllBinarySensor_NULL_ALLBINARY_SENSORValue[] = newAllBinarySensor()
    end
    AllBinarySensor_NULL_ALLBINARY_SENSORValue[]
end
function staticSet_NULL_ALLBINARY_SENSOR(::Type{AllBinarySensor}, value)
    AllBinarySensor_NULL_ALLBINARY_SENSORSet[] = true
    AllBinarySensor_NULL_ALLBINARY_SENSORValue[] = value
end
const AllBinarySensor_maxValue = Ref{Any}(nothing)
const AllBinarySensor_maxSet = Ref(false)
function staticGet_max(::Type{AllBinarySensor})
    if !AllBinarySensor_maxSet[]
        AllBinarySensor_maxSet[] = true
        AllBinarySensor_maxValue[] = Int32(100)
    end
    AllBinarySensor_maxValue[]
end
function staticSet_max(::Type{AllBinarySensor}, value)
    AllBinarySensor_maxSet[] = true
    AllBinarySensor_maxValue[] = value
end

function initFieldsAllBinarySensor(this::AllBinarySensor)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    nothing
end


function initAllBinarySensor(this::AllBinarySensor)
        initFieldsAllBinarySensor(this)
        nothing
        nothing
end

function newAllBinarySensor()
    this = AllBinarySensor()
    initAllBinarySensor(this)
    this
end


function init(this::AllBinarySensor)
        nothing
        nothing
end


function update(this::AllBinarySensor)
        nothing
        nothing
end


function setMax(::Type{AllBinarySensor}, max)
        staticSet_max(AllBinarySensor, max)
        nothing
end


function getMax(::Type{AllBinarySensor})
        return staticGet_max(AllBinarySensor)
end


function getId(this::AllBinarySensor)
        return AllBinary.getMax(AllBinarySensor)
end


function shutdown(this::AllBinarySensor)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, "shutdown")
        nothing
end


function onSensorChange(this::AllBinarySensor)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        nothing
end

