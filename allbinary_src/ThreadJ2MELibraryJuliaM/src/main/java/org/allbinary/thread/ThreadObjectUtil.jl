# Generated Code Do Not Modify
# package org.allbinary.thread

mutable struct ThreadObjectUtil <: JObject
    NULL_PRIORITY_RUNNABLE::Any
    ThreadObjectUtil() = new()
end

const ThreadObjectUtil_instanceValue = Ref{Any}(nothing)
const ThreadObjectUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ThreadObjectUtil})
    if !ThreadObjectUtil_instanceSet[]
        ThreadObjectUtil_instanceSet[] = true
        ThreadObjectUtil_instanceValue[] = newThreadObjectUtil()
    end
    ThreadObjectUtil_instanceValue[]
end
function staticSet_instance(::Type{ThreadObjectUtil}, value)
    ThreadObjectUtil_instanceSet[] = true
    ThreadObjectUtil_instanceValue[] = value
end

function initFieldsThreadObjectUtil(this::ThreadObjectUtil)
    this.NULL_PRIORITY_RUNNABLE = nothing
    this.NULL_PRIORITY_RUNNABLE = newNullPriorityRunnable()
    nothing
end

function initThreadObjectUtil(this::ThreadObjectUtil)
    initFieldsThreadObjectUtil(this)
end

function newThreadObjectUtil()
    this = ThreadObjectUtil()
    initThreadObjectUtil(this)
    this
end


function getInstance(::Type{ThreadObjectUtil})
        return staticGet_instance(ThreadObjectUtil)
end


function notifyObject(this::ThreadObjectUtil, anyType)
        AllBinary.notify(anyType)
        nothing
end


function waitObject(this::ThreadObjectUtil, anyType)
        AllBinary.wait(anyType)
        nothing
end


function waitObjectFor(this::ThreadObjectUtil, anyType, delay)
        AllBinary.waitFor(AllBinary.getInstance(TsUtil), anyType, delay)
        nothing
end


function processThread(this::ThreadObjectUtil, runnable)
        local thread = newThread(runnable)
        AllBinary.start(thread)
        nothing
end

