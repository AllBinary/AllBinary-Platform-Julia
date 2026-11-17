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
# package org.allbinary.thread

mutable struct ThreadUtil <: JObject
    logUtil::Any
    JOIN::Any
    ThreadUtil() = new()
end

const ThreadUtil_instanceValue = Ref{Any}(nothing)
const ThreadUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ThreadUtil})
    if !ThreadUtil_instanceSet[]
        ThreadUtil_instanceSet[] = true
        ThreadUtil_instanceValue[] = newThreadUtil()
    end
    ThreadUtil_instanceValue[]
end
function staticSet_instance(::Type{ThreadUtil}, value)
    ThreadUtil_instanceSet[] = true
    ThreadUtil_instanceValue[] = value
end

function initFieldsThreadUtil(this::ThreadUtil)
    this.logUtil = nothing
    this.JOIN = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.JOIN = "join"
    nothing
end

function initThreadUtil(this::ThreadUtil)
    initFieldsThreadUtil(this)
end

function newThreadUtil()
    this = ThreadUtil()
    initThreadUtil(this)
    this
end


function getInstance(::Type{ThreadUtil})
        return staticGet_instance(ThreadUtil)
end


function isRunning(this::ThreadUtil, thread)
        if thread !== nothing && AllBinary.isAlive(thread)
            return true
        else
            return false
        end
end


function join(this::ThreadUtil, thread)
        if AllBinary.isRunning(AllBinary.getInstance(ThreadUtil), thread)
            AllBinary.putF(this.logUtil, "Waiting for Thread To Join/End", this, this.JOIN)
            AllBinary.join(thread)
        end
        nothing
end

