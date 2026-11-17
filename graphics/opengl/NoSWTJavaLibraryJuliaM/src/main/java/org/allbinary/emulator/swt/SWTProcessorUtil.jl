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

mutable struct SWTProcessorUtil <: JObject
    swtProcessor::Any
    SWTProcessorUtil() = new()
end

const SWTProcessorUtil_instanceValue = Ref{Any}(nothing)
const SWTProcessorUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{SWTProcessorUtil})
    if !SWTProcessorUtil_instanceSet[]
        SWTProcessorUtil_instanceSet[] = true
        SWTProcessorUtil_instanceValue[] = newSWTProcessorUtil()
    end
    SWTProcessorUtil_instanceValue[]
end
function staticSet_instance(::Type{SWTProcessorUtil}, value)
    SWTProcessorUtil_instanceSet[] = true
    SWTProcessorUtil_instanceValue[] = value
end

function initFieldsSWTProcessorUtil(this::SWTProcessorUtil)
    this.swtProcessor = nothing
    this.swtProcessor = AllBinary.getInstance(SWTProcessor)
    nothing
end

function initSWTProcessorUtil(this::SWTProcessorUtil)
    initFieldsSWTProcessorUtil(this)
end

function newSWTProcessorUtil()
    this = SWTProcessorUtil()
    initSWTProcessorUtil(this)
    this
end


function getInstance(::Type{SWTProcessorUtil})
        return staticGet_instance(SWTProcessorUtil)
end

