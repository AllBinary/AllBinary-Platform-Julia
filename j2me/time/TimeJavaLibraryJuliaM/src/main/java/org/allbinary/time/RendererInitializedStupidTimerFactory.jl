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
# package org.allbinary.time

mutable struct RendererInitializedStupidTimerFactory <: JObject
    RendererInitializedStupidTimerFactory() = new()
end

const RendererInitializedStupidTimerFactory_instanceValue = Ref{Any}(nothing)
const RendererInitializedStupidTimerFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{RendererInitializedStupidTimerFactory})
    if !RendererInitializedStupidTimerFactory_instanceSet[]
        RendererInitializedStupidTimerFactory_instanceSet[] = true
        RendererInitializedStupidTimerFactory_instanceValue[] = newStupidTimer()
    end
    RendererInitializedStupidTimerFactory_instanceValue[]
end
function staticSet_instance(::Type{RendererInitializedStupidTimerFactory}, value)
    RendererInitializedStupidTimerFactory_instanceSet[] = true
    RendererInitializedStupidTimerFactory_instanceValue[] = value
end

function initFieldsRendererInitializedStupidTimerFactory(this::RendererInitializedStupidTimerFactory)
    nothing
end

function initRendererInitializedStupidTimerFactory(this::RendererInitializedStupidTimerFactory)
    initFieldsRendererInitializedStupidTimerFactory(this)
end

function newRendererInitializedStupidTimerFactory()
    this = RendererInitializedStupidTimerFactory()
    initRendererInitializedStupidTimerFactory(this)
    this
end


function getInstance(::Type{RendererInitializedStupidTimerFactory})
        return staticGet_instance(RendererInitializedStupidTimerFactory)
end

