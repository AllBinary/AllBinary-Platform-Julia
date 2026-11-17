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

mutable struct ThreadPool <: JObject
    logUtil::Any
    commonStrings::Any
    NULL_RUNNABLE::Any
    threadPoolStrings::Any
    threadObjectUtil::Any
    poolName::Any
    priority::Int32
    isAlive::Bool
    taskQueue::Any
    threadID::Int32
    numThreads::Int32
    runningTask::Bool
    ThreadPool() = new()
end

const ThreadPool_ROOT_NAMEValue = Ref{Any}(nothing)
const ThreadPool_ROOT_NAMESet = Ref(false)
function staticGet_ROOT_NAME(::Type{ThreadPool})
    if !ThreadPool_ROOT_NAMESet[]
        ThreadPool_ROOT_NAMESet[] = true
        ThreadPool_ROOT_NAMEValue[] = "-PooledThread-"
    end
    ThreadPool_ROOT_NAMEValue[]
end
function staticSet_ROOT_NAME(::Type{ThreadPool}, value)
    ThreadPool_ROOT_NAMESet[] = true
    ThreadPool_ROOT_NAMEValue[] = value
end
const ThreadPool_NORMAL_PRIORITYValue = Ref{Any}(nothing)
const ThreadPool_NORMAL_PRIORITYSet = Ref(false)
function staticGet_NORMAL_PRIORITY(::Type{ThreadPool})
    if !ThreadPool_NORMAL_PRIORITYSet[]
        ThreadPool_NORMAL_PRIORITYSet[] = true
        ThreadPool_NORMAL_PRIORITYValue[] = staticGet_NORM_PRIORITY(Thread)
    end
    ThreadPool_NORMAL_PRIORITYValue[]
end
function staticSet_NORMAL_PRIORITY(::Type{ThreadPool}, value)
    ThreadPool_NORMAL_PRIORITYSet[] = true
    ThreadPool_NORMAL_PRIORITYValue[] = value
end

function initFieldsThreadPool(this::ThreadPool)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.NULL_RUNNABLE = nothing
    this.threadPoolStrings = nothing
    this.threadObjectUtil = nothing
    this.poolName = nothing
    this.priority = Int32(0)
    this.isAlive = false
    this.taskQueue = nothing
    this.threadID = Int32(0)
    this.numThreads = Int32(0)
    this.runningTask = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.NULL_RUNNABLE = AllBinary.getInstance(NullRunnable)
    this.threadPoolStrings = AllBinary.getInstance(ThreadPoolStrings)
    this.threadObjectUtil = AllBinary.getInstance(ThreadObjectUtil)
    
    
    this.isAlive = false
    this.taskQueue = AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
    this.threadID = Int32(0)
    
    this.runningTask = false
    nothing
end


function initThreadPool(this::ThreadPool, poolName, numThreads, priority)
        initFieldsThreadPool(this)
        this.poolName = poolName
        this.priority = priority
        this.numThreads = numThreads
        nothing
end

function newThreadPool(poolName, numThreads, priority)
    this = ThreadPool()
    initThreadPool(this, poolName, numThreads, priority)
    this
end


function init(this::ThreadPool)
        if !this.isAlive
            this.isAlive = true
            this.taskQueue = newBasicArrayListD()
            local pooledThread = nothing
            let
                local i::Int32 = Int32(0)
                while i < this.numThreads
                try
                pooledThread = newPooledThread(this)
                AllBinary.setPriority(pooledThread, this.priority)
                AllBinary.start(pooledThread)
                finally
                    i += Int32(1)
                end
                end
            end
        end
        nothing
end


function runAPriorityTask(this::ThreadPool)
        throw(jNewException("RuntimeException", ""))
        nothing
end


function runTaskWithPriority(this::ThreadPool, task)
        begin
            if !this.isAlive
                AllBinary.init(this)
            end
            if task !== nothing
                local size::Int32 = AllBinary.size(this.taskQueue)
                local runnable = nothing
                local lowerPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE
                let
                    local index::Int32 = Int32(0)
                    while index < size
                    try
                    runnable = (AllBinary.get(this.taskQueue, index))
                    if AllBinary.getPriority(runnable) > AllBinary.getPriority(task)
                        lowerPriorityRunnable = runnable
                        break
                    end
                    finally
                        index += Int32(1)
                    end
                    end
                end
                if lowerPriorityRunnable === this.threadObjectUtil.NULL_PRIORITY_RUNNABLE
                    AllBinary.add(this.taskQueue, task)
                else
                    index = AllBinary.indexOf(this.taskQueue, lowerPriorityRunnable)
                    AllBinary.addAt(this.taskQueue, index, task)
                end
                AllBinary.notify(this)
            end
        end
        nothing
end


function runTask(this::ThreadPool, task)
        begin
            if !this.isAlive
                AllBinary.init(this)
            end
            if task !== nothing
                AllBinary.add(this.taskQueue, task)
                AllBinary.notify(this)
            end
        end
        nothing
end


function getTask(this::ThreadPool)
        begin
            while AllBinary.size(this.taskQueue) == Int32(0)
                if !this.isAlive
                    return this.NULL_RUNNABLE
                end
                AllBinary.wait(this)
            end
            local runnable = (AllBinary.removeAt(this.taskQueue, Int32(0)))
            return runnable
        end
end


function clear(this::ThreadPool)
        begin
            if this.isAlive
                AllBinary.clear(this.taskQueue)
            end
        end
        nothing
end


function close(this::ThreadPool)
        begin
            if this.isAlive
                this.isAlive = false
                AllBinary.clear(this.taskQueue)
            end
        end
        nothing
end


function join(this::ThreadPool)
        begin
            this.isAlive = false
            AllBinary.clear(this.taskQueue)
            AllBinary.notifyAll(this)
        end
        nothing
end


function isBusy(this::ThreadPool)
        if !this.isAlive
            return false
        end
        if AllBinary.size(this.taskQueue) > Int32(0)
            return true
        end
        if this.runningTask
            return true
        end
        return false
end


function threadStarted(this::ThreadPool)
        nothing
        nothing
end


function threadStopped(this::ThreadPool)
        if this.numThreads == Int32(1)
            this.isAlive = false
            AllBinary.clear(this.taskQueue)
        end
        nothing
end


function startTask(this::ThreadPool, task)
        nothing
        nothing
end


function completedTask(this::ThreadPool, task)
        nothing
        nothing
end


function createName(this::ThreadPool)
        return AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.append(newStringMaker(), this.poolName), staticGet_ROOT_NAME(ThreadPool)), (let old = this.threadID; this.threadID += Int32(1); old end)))
end

