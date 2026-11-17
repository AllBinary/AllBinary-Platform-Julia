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
# package org.allbinary.canvas

mutable struct Processor <: JObject
    Processor() = new()
end

const Processor_SINGLETONValue = Ref{Any}(nothing)
const Processor_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{Processor})
    if !Processor_SINGLETONSet[]
        Processor_SINGLETONSet[] = true
        Processor_SINGLETONValue[] = newProcessor()
    end
    Processor_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{Processor}, value)
    Processor_SINGLETONSet[] = true
    Processor_SINGLETONValue[] = value
end

function initFieldsProcessor(this::Processor)
    nothing
end

function initProcessor(this::Processor)
    initFieldsProcessor(this)
end

function newProcessor()
    this = Processor()
    initProcessor(this)
    this
end


function getInstance(::Type{Processor})
        return staticGet_SINGLETON(Processor)
end


function process(this::Processor)
        nothing
        nothing
end


function processt(this::Processor, timeDelta)
        nothing
        nothing
end

