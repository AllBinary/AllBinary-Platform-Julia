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

# extends ThreadPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PrimaryThreadPool <: JObject
    PrimaryThreadPool() = new()
end

const PrimaryThreadPool_THREAD_POOLValue = Ref{Any}(nothing)
const PrimaryThreadPool_THREAD_POOLSet = Ref(false)
function staticGet_THREAD_POOL(::Type{PrimaryThreadPool})
    if !PrimaryThreadPool_THREAD_POOLSet[]
        PrimaryThreadPool_THREAD_POOLSet[] = true
        PrimaryThreadPool_THREAD_POOLValue[] = newThreadPool("Primary", Int32(1), staticGet_NORMAL_PRIORITY(ThreadPool))
    end
    PrimaryThreadPool_THREAD_POOLValue[]
end
function staticSet_THREAD_POOL(::Type{PrimaryThreadPool}, value)
    PrimaryThreadPool_THREAD_POOLSet[] = true
    PrimaryThreadPool_THREAD_POOLValue[] = value
end

function initFieldsPrimaryThreadPool(this::PrimaryThreadPool)
    nothing
end


function getInstance(::Type{PrimaryThreadPool})
        return staticGet_THREAD_POOL(PrimaryThreadPool)
end


function initPrimaryThreadPool(this::PrimaryThreadPool, poolName, numThreads, priority)
        initThreadPool(this, poolName, numThreads, priority)
        nothing
end

function newPrimaryThreadPool(poolName, numThreads, priority)
    this = PrimaryThreadPool()
    initPrimaryThreadPool(this, poolName, numThreads, priority)
    this
end


function runTask(this::PrimaryThreadPool, task)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(newStringMaker(), AllBinary.toString(AllBinary.getInstance(StringUtil), task)), ((jCurrentTimeMillis()) % Int64))), this, this.threadPoolStrings.ADD_TASK)
        AllBinary.runTask(this, task)
        nothing
end


function startTask(this::PrimaryThreadPool, task)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.threadPoolStrings.START_TASK), AllBinary.toString(AllBinary.getInstance(StringUtil), task))), this, this.commonStrings.RUN)
        nothing
end


function completedTask(this::PrimaryThreadPool, task)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.threadPoolStrings.COMPLETE_TASK), AllBinary.toString(AllBinary.getInstance(StringUtil), task))), this, this.commonStrings.RUN)
        nothing
end

