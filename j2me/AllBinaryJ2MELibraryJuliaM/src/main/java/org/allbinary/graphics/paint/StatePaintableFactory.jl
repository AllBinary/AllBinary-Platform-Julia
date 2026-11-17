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
# package org.allbinary.graphics.paint

mutable struct StatePaintableFactory <: JObject
    StatePaintableFactory() = new()
end

const StatePaintableFactory_instanceValue = Ref{Any}(nothing)
const StatePaintableFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{StatePaintableFactory})
    if !StatePaintableFactory_instanceSet[]
        StatePaintableFactory_instanceSet[] = true
        StatePaintableFactory_instanceValue[] = newStatePaintable()
    end
    StatePaintableFactory_instanceValue[]
end
function staticSet_instance(::Type{StatePaintableFactory}, value)
    StatePaintableFactory_instanceSet[] = true
    StatePaintableFactory_instanceValue[] = value
end

function initFieldsStatePaintableFactory(this::StatePaintableFactory)
    nothing
end

function initStatePaintableFactory(this::StatePaintableFactory)
    initFieldsStatePaintableFactory(this)
end

function newStatePaintableFactory()
    this = StatePaintableFactory()
    initStatePaintableFactory(this)
    this
end


function getInstance(::Type{StatePaintableFactory})
        return staticGet_instance(StatePaintableFactory)
end

