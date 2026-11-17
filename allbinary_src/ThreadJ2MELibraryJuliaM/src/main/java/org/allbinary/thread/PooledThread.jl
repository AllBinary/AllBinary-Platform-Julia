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

# extends Thread: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PooledThread <: JObject
    logUtil::Any
    commonStrings::Any
    threadObjectUtil::Any
    threadPool::Any
    INTERRUPT_EXCEPTION::Any
    PooledThread() = new()
end


function initFieldsPooledThread(this::PooledThread)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.threadObjectUtil = nothing
    this.threadPool = nothing
    this.INTERRUPT_EXCEPTION = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.threadObjectUtil = AllBinary.getInstance(ThreadObjectUtil)
    
    this.INTERRUPT_EXCEPTION = "Exit InterruptedException"
    nothing
end


function initPooledThread(this::PooledThread, threadPool)
        initThread(this, AllBinary.createName(threadPool))
        initFieldsPooledThread(this)
        AllBinary.putF(this.logUtil, this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR)
        this.threadPool = threadPool
        nothing
end

function newPooledThread(threadPool)
    this = PooledThread()
    initPooledThread(this, threadPool)
    this
end


function run(this::PooledThread)
        AllBinary.threadStarted(this.threadPool)
        while true
            local task2 = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE
            try
                task2 = AllBinary.getTask(this.threadPool)
                this.threadPool.runningTask = true
                AllBinary.startTask(this.threadPool, task2)
            catch ex
                local logUtil = AllBinary.getInstance(LogUtil)
                AllBinary.putF(logUtil, this.INTERRUPT_EXCEPTION, this, this.commonStrings.RUN)
                break
            end
            if task2 === this.threadObjectUtil.NULL_PRIORITY_RUNNABLE
                break
            end
            try
                AllBinary.run(task2)
                AllBinary.completedTask(this.threadPool, task2)
                this.threadPool.runningTask = false
            catch e
                logUtil = AllBinary.getInstance(LogUtil)
                AllBinary.put(logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.EXCEPTION_LABEL), AllBinary.toString(AllBinary.getInstance(StringUtil), task2))), this, this.commonStrings.RUN, e)
            end
        end
        AllBinary.threadStopped(this.threadPool)
        nothing
end

