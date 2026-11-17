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
# package org.allbinary.thread

mutable struct ThreadPoolStrings <: JObject
    ADD_TASK::Any
    START_TASK::Any
    COMPLETE_TASK::Any
    ThreadPoolStrings() = new()
end

const ThreadPoolStrings_instanceValue = Ref{Any}(nothing)
const ThreadPoolStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{ThreadPoolStrings})
    if !ThreadPoolStrings_instanceSet[]
        ThreadPoolStrings_instanceSet[] = true
        ThreadPoolStrings_instanceValue[] = newThreadPoolStrings()
    end
    ThreadPoolStrings_instanceValue[]
end
function staticSet_instance(::Type{ThreadPoolStrings}, value)
    ThreadPoolStrings_instanceSet[] = true
    ThreadPoolStrings_instanceValue[] = value
end

function initFieldsThreadPoolStrings(this::ThreadPoolStrings)
    this.ADD_TASK = nothing
    this.START_TASK = nothing
    this.COMPLETE_TASK = nothing
    this.ADD_TASK = "addTask"
    this.START_TASK = "Started Task: "
    this.COMPLETE_TASK = "Completed Task: "
    nothing
end

function initThreadPoolStrings(this::ThreadPoolStrings)
    initFieldsThreadPoolStrings(this)
end

function newThreadPoolStrings()
    this = ThreadPoolStrings()
    initThreadPoolStrings(this)
    this
end


function getInstance(::Type{ThreadPoolStrings})
        return staticGet_instance(ThreadPoolStrings)
end

