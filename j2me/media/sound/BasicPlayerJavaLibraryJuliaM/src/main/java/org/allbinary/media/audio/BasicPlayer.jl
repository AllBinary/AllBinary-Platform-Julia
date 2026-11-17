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
# package org.allbinary.media.audio

#BasicPlayerJavaLibrary
mutable struct BasicPlayer <: JObject
    commonStrings::Any
    listenersList::Any
    stateP::Int32
    loopCountP::Int32
    BasicPlayer() = new()
end

const BasicPlayer_CONTROL_TYPEValue = Ref{Any}(nothing)
const BasicPlayer_CONTROL_TYPESet = Ref(false)
function staticGet_CONTROL_TYPE(::Type{BasicPlayer})
    if !BasicPlayer_CONTROL_TYPESet[]
        BasicPlayer_CONTROL_TYPESet[] = true
        BasicPlayer_CONTROL_TYPEValue[] = "ToneControl"
    end
    BasicPlayer_CONTROL_TYPEValue[]
end
function staticSet_CONTROL_TYPE(::Type{BasicPlayer}, value)
    BasicPlayer_CONTROL_TYPESet[] = true
    BasicPlayer_CONTROL_TYPEValue[] = value
end

function initFieldsBasicPlayer(this::BasicPlayer)
    this.commonStrings = nothing
    this.listenersList = nothing
    this.stateP = Int32(0)
    this.loopCountP = Int32(0)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.listenersList = newBasicArrayListD()
    this.stateP = Int32(0)
    this.loopCountP = Int32(0)
    nothing
end


function initBasicPlayer(this::BasicPlayer)
        initFieldsBasicPlayer(this)
        AllBinary.setLoopCount(this, Int32(0))
        AllBinary.setState(this, staticGet_UNREALIZED(Player))
        nothing
end

function newBasicPlayer()
    this = BasicPlayer()
    initBasicPlayer(this)
    this
end


function getContentType(this::BasicPlayer)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function getControl(this::BasicPlayer, controlType)
        return newNullControl()
end


function getControls(this::BasicPlayer)
        return jNewArray(Any, Int32(0), nothing)
end


function close(this::BasicPlayer)
        nothing
        nothing
end


function addPlayerListener(this::BasicPlayer, playerListener)
        if !AllBinary.contains(this.listenersList, playerListener)
            AllBinary.add(this.listenersList, playerListener)
        end
        nothing
end


function removePlayerListener(this::BasicPlayer, playerListener)
        AllBinary.remove(this.listenersList, playerListener)
        nothing
end


function getState(this::BasicPlayer)
        return this.stateP
end


function setState(this::BasicPlayer, state)
        this.stateP = state
        nothing
end


function getDuration(this::BasicPlayer)
        return Int64(0)
end


function getMediaTime(this::BasicPlayer)
        return Int64(0)
end


function deallocate(this::BasicPlayer)
        nothing
        nothing
end


function prefetch(this::BasicPlayer)
        nothing
        nothing
end


function realize(this::BasicPlayer)
        nothing
        nothing
end


function setLoopCount(this::BasicPlayer, count)
        this.loopCountP = count
        nothing
end


function getLoopCount(this::BasicPlayer)
        return this.loopCountP
end


function setMediaTime(this::BasicPlayer, now)
        return Int64(0)
end


function start(this::BasicPlayer)
        AllBinary.setState(this, staticGet_STARTED(Player))
        nothing
end


function stop(this::BasicPlayer)
        AllBinary.setState(this, staticGet_PREFETCHED(Player))
        nothing
end


function setVolume(this::BasicPlayer, leftVolume, rightVolume)
        nothing
        nothing
end

