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

# extends AllBinarySensor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoAllBinarySensor <: JObject
    NoAllBinarySensor() = new()
end

const NoAllBinarySensor_instanceValue = Ref{Any}(nothing)
const NoAllBinarySensor_instanceSet = Ref(false)
function staticGet_instance(::Type{NoAllBinarySensor})
    if !NoAllBinarySensor_instanceSet[]
        NoAllBinarySensor_instanceSet[] = true
        NoAllBinarySensor_instanceValue[] = newNoAllBinarySensor()
    end
    NoAllBinarySensor_instanceValue[]
end
function staticSet_instance(::Type{NoAllBinarySensor}, value)
    NoAllBinarySensor_instanceSet[] = true
    NoAllBinarySensor_instanceValue[] = value
end

function initFieldsNoAllBinarySensor(this::NoAllBinarySensor)
    nothing
end


function getInstance(::Type{NoAllBinarySensor})
        return staticGet_instance(NoAllBinarySensor)
end


function initNoAllBinarySensor(this::NoAllBinarySensor)
        initAllBinarySensor(this)
        initFieldsNoAllBinarySensor(this)
        nothing
        nothing
end

function newNoAllBinarySensor()
    this = NoAllBinarySensor()
    initNoAllBinarySensor(this)
    this
end

