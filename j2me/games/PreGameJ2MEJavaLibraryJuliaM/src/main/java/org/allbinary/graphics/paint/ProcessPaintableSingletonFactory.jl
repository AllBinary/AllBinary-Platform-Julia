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

mutable struct ProcessPaintableSingletonFactory <: JObject
    ProcessPaintableSingletonFactory() = new()
end

const ProcessPaintableSingletonFactory_SINGLETONValue = Ref{Any}(nothing)
const ProcessPaintableSingletonFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{ProcessPaintableSingletonFactory})
    if !ProcessPaintableSingletonFactory_SINGLETONSet[]
        ProcessPaintableSingletonFactory_SINGLETONSet[] = true
        ProcessPaintableSingletonFactory_SINGLETONValue[] = newProcessPaintable()
    end
    ProcessPaintableSingletonFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{ProcessPaintableSingletonFactory}, value)
    ProcessPaintableSingletonFactory_SINGLETONSet[] = true
    ProcessPaintableSingletonFactory_SINGLETONValue[] = value
end

function initFieldsProcessPaintableSingletonFactory(this::ProcessPaintableSingletonFactory)
    nothing
end


function initProcessPaintableSingletonFactory(this::ProcessPaintableSingletonFactory)
        initFieldsProcessPaintableSingletonFactory(this)
        nothing
        nothing
end

function newProcessPaintableSingletonFactory()
    this = ProcessPaintableSingletonFactory()
    initProcessPaintableSingletonFactory(this)
    this
end


function getInstance(::Type{ProcessPaintableSingletonFactory})
        return staticGet_SINGLETON(ProcessPaintableSingletonFactory)
end

