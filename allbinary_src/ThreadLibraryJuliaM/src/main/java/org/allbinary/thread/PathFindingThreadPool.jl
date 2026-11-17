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
mutable struct PathFindingThreadPool <: JObject
    PathFindingThreadPool() = new()
end

const PathFindingThreadPool_instanceValue = Ref{Any}(nothing)
const PathFindingThreadPool_instanceSet = Ref(false)
function staticGet_instance(::Type{PathFindingThreadPool})
    if !PathFindingThreadPool_instanceSet[]
        PathFindingThreadPool_instanceSet[] = true
        PathFindingThreadPool_instanceValue[] = newPathFindingThreadPool("PathFinding", Int32(1), Int32(1))
    end
    PathFindingThreadPool_instanceValue[]
end
function staticSet_instance(::Type{PathFindingThreadPool}, value)
    PathFindingThreadPool_instanceSet[] = true
    PathFindingThreadPool_instanceValue[] = value
end

function initFieldsPathFindingThreadPool(this::PathFindingThreadPool)
    nothing
end


function getInstance(::Type{PathFindingThreadPool})
        return staticGet_instance(PathFindingThreadPool)
end


function initPathFindingThreadPool(this::PathFindingThreadPool, poolName, numThreads, priority)
        initThreadPool(this, poolName, numThreads, staticGet_NORMAL_PRIORITY(ThreadPool))
        nothing
end

function newPathFindingThreadPool(poolName, numThreads, priority)
    this = PathFindingThreadPool()
    initPathFindingThreadPool(this, poolName, numThreads, priority)
    this
end


function runTaskWithPriority(this::PathFindingThreadPool, task)
        AllBinary.runTaskWithPriority(this, task)
        nothing
end


function runTask(this::PathFindingThreadPool, task)
        AllBinary.runTask(this, task)
        nothing
end


function startTask(this::PathFindingThreadPool, task)
        nothing
        nothing
end


function completedTask(this::PathFindingThreadPool, task)
        nothing
        nothing
end

