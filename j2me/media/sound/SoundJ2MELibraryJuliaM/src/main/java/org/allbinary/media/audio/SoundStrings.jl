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
# package org.allbinary.media.audio

mutable struct SoundStrings <: JObject
    STOP_ALL::Any
    CLOSE_ALL::Any
    SOUND::Any
    INIT_SOUND::Any
    STOPPING_SOUND::Any
    CLOSING_SOUND::Any
    SoundStrings() = new()
end

const SoundStrings_instanceValue = Ref{Any}(nothing)
const SoundStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{SoundStrings})
    if !SoundStrings_instanceSet[]
        SoundStrings_instanceSet[] = true
        SoundStrings_instanceValue[] = newSoundStrings()
    end
    SoundStrings_instanceValue[]
end
function staticSet_instance(::Type{SoundStrings}, value)
    SoundStrings_instanceSet[] = true
    SoundStrings_instanceValue[] = value
end

function initFieldsSoundStrings(this::SoundStrings)
    this.STOP_ALL = nothing
    this.CLOSE_ALL = nothing
    this.SOUND = nothing
    this.INIT_SOUND = nothing
    this.STOPPING_SOUND = nothing
    this.CLOSING_SOUND = nothing
    this.STOP_ALL = "stopAll"
    this.CLOSE_ALL = "closeAll"
    this.SOUND = " Sound: "
    this.INIT_SOUND = "Initializing Sound: "
    this.STOPPING_SOUND = "Stopping Sound: "
    this.CLOSING_SOUND = "Closing Sound: "
    nothing
end

function initSoundStrings(this::SoundStrings)
    initFieldsSoundStrings(this)
end

function newSoundStrings()
    this = SoundStrings()
    initSoundStrings(this)
    this
end


function getInstance(::Type{SoundStrings})
        return staticGet_instance(SoundStrings)
end

