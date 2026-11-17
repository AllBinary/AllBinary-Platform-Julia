#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic

mutable struct PropertyInitUtil <: JObject
    PropertyInitUtil() = new()
end

const PropertyInitUtil_instanceValue = Ref{Any}(nothing)
const PropertyInitUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{PropertyInitUtil})
    if !PropertyInitUtil_instanceSet[]
        PropertyInitUtil_instanceSet[] = true
        PropertyInitUtil_instanceValue[] = newPropertyInitUtil()
    end
    PropertyInitUtil_instanceValue[]
end
function staticSet_instance(::Type{PropertyInitUtil}, value)
    PropertyInitUtil_instanceSet[] = true
    PropertyInitUtil_instanceValue[] = value
end

function initFieldsPropertyInitUtil(this::PropertyInitUtil)
    nothing
end

function initPropertyInitUtil(this::PropertyInitUtil)
    initFieldsPropertyInitUtil(this)
end

function newPropertyInitUtil()
    this = PropertyInitUtil()
    initPropertyInitUtil(this)
    this
end


function getInstance(::Type{PropertyInitUtil}, value)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        local logUtil = AllBinary.getInstance(LogUtil)
        AllBinary.putF(logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "PropertyInitUtil: "), value)), logUtil, commonStrings.CONSTRUCTOR)
        return staticGet_instance(PropertyInitUtil)
end

