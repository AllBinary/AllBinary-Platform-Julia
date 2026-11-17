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

# extends ThreadPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MusicThreadPool <: JObject
    MusicThreadPool() = new()
end

const MusicThreadPool_THREAD_POOLValue = Ref{Any}(nothing)
const MusicThreadPool_THREAD_POOLSet = Ref(false)
function staticGet_THREAD_POOL(::Type{MusicThreadPool})
    if !MusicThreadPool_THREAD_POOLSet[]
        MusicThreadPool_THREAD_POOLSet[] = true
        MusicThreadPool_THREAD_POOLValue[] = newThreadPool("Music", Int32(2), staticGet_NORMAL_PRIORITY(ThreadPool))
    end
    MusicThreadPool_THREAD_POOLValue[]
end
function staticSet_THREAD_POOL(::Type{MusicThreadPool}, value)
    MusicThreadPool_THREAD_POOLSet[] = true
    MusicThreadPool_THREAD_POOLValue[] = value
end

function initFieldsMusicThreadPool(this::MusicThreadPool)
    nothing
end


function getInstance(::Type{MusicThreadPool})
        return staticGet_THREAD_POOL(MusicThreadPool)
end


function initMusicThreadPool(this::MusicThreadPool, poolName, numThreads, priority)
        initThreadPool(this, poolName, numThreads, priority)
        nothing
end

function newMusicThreadPool(poolName, numThreads, priority)
    this = MusicThreadPool()
    initMusicThreadPool(this, poolName, numThreads, priority)
    this
end


function runTask(this::MusicThreadPool, task)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(newStringMaker(), AllBinary.toString(AllBinary.getInstance(StringUtil), task)), jCurrentTimeMillis())), this, this.threadPoolStrings.ADD_TASK)
        AllBinary.runTask(this, task)
        nothing
end


function startTask(this::MusicThreadPool, task)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(AllBinary.append(newStringMaker(), this.threadPoolStrings.START_TASK), AllBinary.toString(AllBinary.getInstance(StringUtil), task)), jCurrentTimeMillis())), this, this.commonStrings.RUN)
        nothing
end


function completedTask(this::MusicThreadPool, task)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(AllBinary.append(newStringMaker(), this.threadPoolStrings.COMPLETE_TASK), AllBinary.toString(AllBinary.getInstance(StringUtil), task)), jCurrentTimeMillis())), this, this.commonStrings.RUN)
        nothing
end

