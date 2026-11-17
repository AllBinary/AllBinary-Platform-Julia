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

mutable struct ThreadFactoryUtil <: JObject
    logUtil::Any
    ThreadFactoryUtil() = new()
end

const ThreadFactoryUtil_instanceValue = Ref{Any}(nothing)
const ThreadFactoryUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ThreadFactoryUtil})
    if !ThreadFactoryUtil_instanceSet[]
        ThreadFactoryUtil_instanceSet[] = true
        ThreadFactoryUtil_instanceValue[] = newThreadFactoryUtil()
    end
    ThreadFactoryUtil_instanceValue[]
end
function staticSet_instance(::Type{ThreadFactoryUtil}, value)
    ThreadFactoryUtil_instanceSet[] = true
    ThreadFactoryUtil_instanceValue[] = value
end

function initFieldsThreadFactoryUtil(this::ThreadFactoryUtil)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initThreadFactoryUtil(this::ThreadFactoryUtil)
    initFieldsThreadFactoryUtil(this)
end

function newThreadFactoryUtil()
    this = ThreadFactoryUtil()
    initThreadFactoryUtil(this)
    this
end


function getInstance(::Type{ThreadFactoryUtil})
        return staticGet_instance(ThreadFactoryUtil)
end


function getInstanceGameCanvasRunnable(this::ThreadFactoryUtil, runnable)
        return AllBinary.getInstanceType(this, runnable, AllBinary.getType(runnable))
end


function getInstanceForRunnable(this::ThreadFactoryUtil, runnable)
        return AllBinary.getInstanceType(this, runnable, AllBinary.getType(runnable))
end


function getInstanceType(this::ThreadFactoryUtil, runnable, type_)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        if AllBinary.isHTML(J2MEUtil)
            if type_ == staticGet_TYPE(DemoCanvas) || type_ == staticGet_TYPE(AllBinaryGameCanvas)
                local demoGameSingleThreadStartRunnable = newRunnableCanvasSingleThreadStartRunnable((runnable))
                AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: "), AllBinary.toString(AllBinary.getInstance(StringUtil), runnable))), this, commonStrings.CONSTRUCTOR)
                primaryThreadPool = AllBinary.getInstance(PrimaryThreadPool)
                AllBinary.runTask(primaryThreadPool, demoGameSingleThreadStartRunnable)
            else
                AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Using Pseudo Thread for Runnable under PlayN/HTML5: "), AllBinary.toString(AllBinary.getInstance(StringUtil), runnable))), this, commonStrings.CONSTRUCTOR)
                local primaryThreadPool = AllBinary.getInstance(PrimaryThreadPool)
                AllBinary.runTask(primaryThreadPool, runnable)
            end
        end
        local thread = newThread(runnable, AllBinary.toString(runnable))
        AllBinary.putF(this.logUtil, AllBinary.toString(thread), this, commonStrings.CONSTRUCTOR)
        return thread
end


function start(this::ThreadFactoryUtil, thread)
        AllBinary.start(thread)
        nothing
end

