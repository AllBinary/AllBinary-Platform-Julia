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

#This is mainly for network communications.
# extends ThreadPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SecondaryThreadPool <: JObject
    SecondaryThreadPool() = new()
end

const SecondaryThreadPool_instanceValue = Ref{Any}(nothing)
const SecondaryThreadPool_instanceSet = Ref(false)
function staticGet_instance(::Type{SecondaryThreadPool})
    if !SecondaryThreadPool_instanceSet[]
        SecondaryThreadPool_instanceSet[] = true
        SecondaryThreadPool_instanceValue[] = newSecondaryThreadPool("Secondary", Int32(1), staticGet_NORMAL_PRIORITY(ThreadPool))
    end
    SecondaryThreadPool_instanceValue[]
end
function staticSet_instance(::Type{SecondaryThreadPool}, value)
    SecondaryThreadPool_instanceSet[] = true
    SecondaryThreadPool_instanceValue[] = value
end

function initFieldsSecondaryThreadPool(this::SecondaryThreadPool)
    nothing
end


function getInstance(::Type{SecondaryThreadPool})
        return staticGet_instance(SecondaryThreadPool)
end


function initSecondaryThreadPool(this::SecondaryThreadPool, poolName, numThreads, priority)
        initThreadPool(this, poolName, numThreads, priority)
        nothing
end

function newSecondaryThreadPool(poolName, numThreads, priority)
    this = SecondaryThreadPool()
    initSecondaryThreadPool(this, poolName, numThreads, priority)
    this
end


function runTask(this::SecondaryThreadPool, task)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(newStringMaker(), AllBinary.toString(AllBinary.getInstance(StringUtil), task)), jCurrentTimeMillis())), this, this.threadPoolStrings.ADD_TASK)
        AllBinary.runTask(this, task)
        nothing
end


function startTask(this::SecondaryThreadPool, task)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(AllBinary.append(newStringMaker(), this.threadPoolStrings.START_TASK), AllBinary.toString(AllBinary.getInstance(StringUtil), task)), jCurrentTimeMillis())), this, this.commonStrings.RUN)
        nothing
end


function completedTask(this::SecondaryThreadPool, task)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(AllBinary.append(newStringMaker(), this.threadPoolStrings.COMPLETE_TASK), AllBinary.toString(AllBinary.getInstance(StringUtil), task)), jCurrentTimeMillis())), this, this.commonStrings.RUN)
        nothing
end

