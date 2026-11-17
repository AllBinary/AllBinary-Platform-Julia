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

mutable struct ABRunnable <: JObject
    running::Bool
    ABRunnable() = new()
end


function initFieldsABRunnable(this::ABRunnable)
    this.running = false
    this.running = false
    nothing
end

function initABRunnable(this::ABRunnable)
    initFieldsABRunnable(this)
end

function newABRunnable()
    this = ABRunnable()
    initABRunnable(this)
    this
end


function setThread(this::ABRunnable, thread)
        nothing
        nothing
end


function isRunning(this::ABRunnable)
        return this.running
end


function setRunning(this::ABRunnable, running)
        this.running = running
        nothing
end


function run(this::ABRunnable)
        nothing
        nothing
end


function getType(this::ABRunnable)
        return -Int32(1)
end

