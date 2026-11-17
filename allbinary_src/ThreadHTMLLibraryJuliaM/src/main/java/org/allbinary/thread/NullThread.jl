#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.thread

mutable struct NullThread <: JObject
    NullThread() = new()
end

const NullThread_NULL_THREADValue = Ref{Any}(nothing)
const NullThread_NULL_THREADSet = Ref(false)
function staticGet_NULL_THREAD(::Type{NullThread})
    if !NullThread_NULL_THREADSet[]
        NullThread_NULL_THREADSet[] = true
        NullThread_NULL_THREADValue[] = newThread(AllBinary.getInstance(NullRunnable), AllBinary.getInstance(StringUtil).EMPTY_STRING)
    end
    NullThread_NULL_THREADValue[]
end
function staticSet_NULL_THREAD(::Type{NullThread}, value)
    NullThread_NULL_THREADSet[] = true
    NullThread_NULL_THREADValue[] = value
end

function initFieldsNullThread(this::NullThread)
    nothing
end

function initNullThread(this::NullThread)
    initFieldsNullThread(this)
end

function newNullThread()
    this = NullThread()
    initNullThread(this)
    this
end

