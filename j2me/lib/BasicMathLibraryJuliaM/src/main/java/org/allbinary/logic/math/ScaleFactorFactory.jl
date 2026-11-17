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
# package org.allbinary.logic.math

mutable struct ScaleFactorFactory <: JObject
    DEFAULT_SCALE_FACTOR::Int32
    DEFAULT_SCALE_VALUE::Int32
    ScaleFactorFactory() = new()
end

const ScaleFactorFactory_instanceValue = Ref{Any}(nothing)
const ScaleFactorFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ScaleFactorFactory})
    if !ScaleFactorFactory_instanceSet[]
        ScaleFactorFactory_instanceSet[] = true
        ScaleFactorFactory_instanceValue[] = newScaleFactorFactory()
    end
    ScaleFactorFactory_instanceValue[]
end
function staticSet_instance(::Type{ScaleFactorFactory}, value)
    ScaleFactorFactory_instanceSet[] = true
    ScaleFactorFactory_instanceValue[] = value
end

function initFieldsScaleFactorFactory(this::ScaleFactorFactory)
    this.DEFAULT_SCALE_FACTOR = Int32(0)
    this.DEFAULT_SCALE_VALUE = Int32(0)
    this.DEFAULT_SCALE_FACTOR = Int32(10)
    this.DEFAULT_SCALE_VALUE = Int32(1024)
    nothing
end

function initScaleFactorFactory(this::ScaleFactorFactory)
    initFieldsScaleFactorFactory(this)
end

function newScaleFactorFactory()
    this = ScaleFactorFactory()
    initScaleFactorFactory(this)
    this
end


function getInstance(::Type{ScaleFactorFactory})
        return staticGet_instance(ScaleFactorFactory)
end

