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
    isAlive::Bool
    taskQueue::Any
    numThreads::Int32
    runningTask::Bool
    currentPriorityRunnable::Any
    ThreadPool() = new()
end

const ThreadPool_NORMAL_PRIORITYValue = Ref{Any}(nothing)
const ThreadPool_NORMAL_PRIORITYSet = Ref(false)
function staticGet_NORMAL_PRIORITY(::Type{ThreadPool})
    if !ThreadPool_NORMAL_PRIORITYSet[]
        ThreadPool_NORMAL_PRIORITYSet[] = true
        ThreadPool_NORMAL_PRIORITYValue[] = Int32(5)
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
    this.isAlive = false
    this.taskQueue = nothing
    this.numThreads = Int32(0)
    this.runningTask = false
    this.currentPriorityRunnable = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.NULL_RUNNABLE = AllBinary.getInstance(NullRunnable)
    this.threadPoolStrings = AllBinary.getInstance(ThreadPoolStrings)
    this.threadObjectUtil = AllBinary.getInstance(ThreadObjectUtil)
    this.isAlive = false
    this.taskQueue = newBasicArrayListD()
    this.numThreads = Int32(0)
    this.runningTask = false
    this.currentPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE
    nothing
end


function initThreadPool(this::ThreadPool, poolName, numThreads, priority)
        initFieldsThreadPool(this)
        nothing
        nothing
end

function newThreadPool(poolName, numThreads, priority)
    this = ThreadPool()
    initThreadPool(this, poolName, numThreads, priority)
    this
end


function runAPriorityTask(this::ThreadPool)
        if !AllBinary.isDone(this.currentPriorityRunnable)
            AllBinary.run(this.currentPriorityRunnable)
        else
            local runnable = AllBinary.getTask(this)
            if runnable === this.NULL_RUNNABLE
                return
            end
            this.currentPriorityRunnable = (runnable)
            if !(this.currentPriorityRunnable === this.threadObjectUtil.NULL_PRIORITY_RUNNABLE)
                AllBinary.reset(this.currentPriorityRunnable)
                AllBinary.run(this.currentPriorityRunnable)
            end
        end
        nothing
end


function runATask(this::ThreadPool)
        local runnable = AllBinary.getTask(this)
        if runnable !== nothing
            AllBinary.run(runnable)
        end
        nothing
end


function init(this::ThreadPool)
        if !this.isAlive
            this.isAlive = true
            this.taskQueue = newBasicArrayListD()
        end
        nothing
end


function runTaskWithPriority(this::ThreadPool, task)
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
        end
        nothing
end


function runTask(this::ThreadPool, task)
        if !this.isAlive
            AllBinary.init(this)
        end
        if task !== nothing
            AllBinary.add(this.taskQueue, task)
        end
        nothing
end


function getTask(this::ThreadPool)
        if AllBinary.isEmpty(this.taskQueue)
            return this.NULL_RUNNABLE
        end
        return (AllBinary.removeAt(this.taskQueue, Int32(0)))
end


function clear(this::ThreadPool)
        AllBinary.clear(this.taskQueue)
        nothing
end


function close(this::ThreadPool)
        if this.isAlive
            this.isAlive = false
            AllBinary.clear(this.taskQueue)
            this.currentPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE
        end
        nothing
end


function join(this::ThreadPool)
        this.isAlive = false
        AllBinary.clear(this.taskQueue)
        this.currentPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE
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
            this.currentPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE
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

