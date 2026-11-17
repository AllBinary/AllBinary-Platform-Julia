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

mutable struct NullPriorityRunnable <: JObject
    NullPriorityRunnable() = new()
end


function initFieldsNullPriorityRunnable(this::NullPriorityRunnable)
    nothing
end

function initNullPriorityRunnable(this::NullPriorityRunnable)
    initFieldsNullPriorityRunnable(this)
end

function newNullPriorityRunnable()
    this = NullPriorityRunnable()
    initNullPriorityRunnable(this)
    this
end


function getPriority(this::NullPriorityRunnable)
        return Int32(0)
end


function isDone(this::NullPriorityRunnable)
        return true
end


function reset(this::NullPriorityRunnable)
        nothing
        nothing
end


function run(this::NullPriorityRunnable)
        nothing
        nothing
end

