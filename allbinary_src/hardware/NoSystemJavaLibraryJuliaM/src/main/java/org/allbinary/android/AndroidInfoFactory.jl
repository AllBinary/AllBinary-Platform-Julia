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
# package org.allbinary.android

mutable struct AndroidInfoFactory <: JObject
    version::Int32
    AndroidInfoFactory() = new()
end

const AndroidInfoFactory_instanceValue = Ref{Any}(nothing)
const AndroidInfoFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{AndroidInfoFactory})
    if !AndroidInfoFactory_instanceSet[]
        AndroidInfoFactory_instanceSet[] = true
        AndroidInfoFactory_instanceValue[] = newAndroidInfoFactory()
    end
    AndroidInfoFactory_instanceValue[]
end
function staticSet_instance(::Type{AndroidInfoFactory}, value)
    AndroidInfoFactory_instanceSet[] = true
    AndroidInfoFactory_instanceValue[] = value
end

function initFieldsAndroidInfoFactory(this::AndroidInfoFactory)
    this.version = Int32(0)
    this.version = Int32(8)
    nothing
end

function initAndroidInfoFactory(this::AndroidInfoFactory)
    initFieldsAndroidInfoFactory(this)
end

function newAndroidInfoFactory()
    this = AndroidInfoFactory()
    initAndroidInfoFactory(this)
    this
end


function getInstance(::Type{AndroidInfoFactory})
        return staticGet_instance(AndroidInfoFactory)
end


function getVersion(this::AndroidInfoFactory)
        return this.version
end

