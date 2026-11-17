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

mutable struct SoundThreadPool <: JObject
    SoundThreadPool() = new()
end

const SoundThreadPool_instanceValue = Ref{Any}(nothing)
const SoundThreadPool_instanceSet = Ref(false)
function staticGet_instance(::Type{SoundThreadPool})
    if !SoundThreadPool_instanceSet[]
        SoundThreadPool_instanceSet[] = true
        SoundThreadPool_instanceValue[] = newThreadPool("Sound", Int32(1), staticGet_NORMAL_PRIORITY(ThreadPool))
    end
    SoundThreadPool_instanceValue[]
end
function staticSet_instance(::Type{SoundThreadPool}, value)
    SoundThreadPool_instanceSet[] = true
    SoundThreadPool_instanceValue[] = value
end

function initFieldsSoundThreadPool(this::SoundThreadPool)
    nothing
end

function initSoundThreadPool(this::SoundThreadPool)
    initFieldsSoundThreadPool(this)
end

function newSoundThreadPool()
    this = SoundThreadPool()
    initSoundThreadPool(this)
    this
end


function getInstance(::Type{SoundThreadPool})
        return staticGet_instance(SoundThreadPool)
end

