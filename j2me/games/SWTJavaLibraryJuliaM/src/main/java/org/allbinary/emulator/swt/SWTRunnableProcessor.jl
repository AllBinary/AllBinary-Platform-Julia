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

# extends SWTProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SWTRunnableProcessor <: JObject
    SWTRunnableProcessor() = new()
end

const SWTRunnableProcessor_instanceRValue = Ref{Any}(nothing)
const SWTRunnableProcessor_instanceRSet = Ref(false)
function staticGet_instanceR(::Type{SWTRunnableProcessor})
    if !SWTRunnableProcessor_instanceRSet[]
        SWTRunnableProcessor_instanceRSet[] = true
        SWTRunnableProcessor_instanceRValue[] = newSWTRunnableProcessor()
    end
    SWTRunnableProcessor_instanceRValue[]
end
function staticSet_instanceR(::Type{SWTRunnableProcessor}, value)
    SWTRunnableProcessor_instanceRSet[] = true
    SWTRunnableProcessor_instanceRValue[] = value
end

function initFieldsSWTRunnableProcessor(this::SWTRunnableProcessor)
    nothing
end


function getInstance(::Type{SWTRunnableProcessor})
        return staticGet_instanceR(SWTRunnableProcessor)
end


function initSWTRunnableProcessor(this::SWTRunnableProcessor)
        initSWTProcessor(this)
        initFieldsSWTRunnableProcessor(this)
        nothing
        nothing
end

function newSWTRunnableProcessor()
    this = SWTRunnableProcessor()
    initSWTRunnableProcessor(this)
    this
end


function process(this::SWTRunnableProcessor, display)
        AllBinary.run(this.runnable)
        nothing
end

