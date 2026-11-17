#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.emulator.swt

mutable struct SWTProcessor <: JObject
    runnable::Any
    SWTProcessor() = new()
end

const SWTProcessor_instanceValue = Ref{Any}(nothing)
const SWTProcessor_instanceSet = Ref(false)
function staticGet_instance(::Type{SWTProcessor})
    if !SWTProcessor_instanceSet[]
        SWTProcessor_instanceSet[] = true
        SWTProcessor_instanceValue[] = newSWTProcessor()
    end
    SWTProcessor_instanceValue[]
end
function staticSet_instance(::Type{SWTProcessor}, value)
    SWTProcessor_instanceSet[] = true
    SWTProcessor_instanceValue[] = value
end

function initFieldsSWTProcessor(this::SWTProcessor)
    this.runnable = nothing
    this.runnable = AllBinary.getInstance(NullRunnable)
    nothing
end

function initSWTProcessor(this::SWTProcessor)
    initFieldsSWTProcessor(this)
end

function newSWTProcessor()
    this = SWTProcessor()
    initSWTProcessor(this)
    this
end


function getInstance(::Type{SWTProcessor})
        return staticGet_instance(SWTProcessor)
end


function process(this::SWTProcessor, display)
        AllBinary.sleep(display)
        nothing
end

