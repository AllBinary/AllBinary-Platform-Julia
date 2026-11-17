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
# package org.allbinary.media.audio

mutable struct PlayerStateUtil <: JObject
    commonStrings::Any
    UNREALIZED::Any
    REALIZED::Any
    PREFETCHED::Any
    STARTED::Any
    CLOSED::Any
    PlayerStateUtil() = new()
end

const PlayerStateUtil_instanceValue = Ref{Any}(nothing)
const PlayerStateUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{PlayerStateUtil})
    if !PlayerStateUtil_instanceSet[]
        PlayerStateUtil_instanceSet[] = true
        PlayerStateUtil_instanceValue[] = newPlayerStateUtil()
    end
    PlayerStateUtil_instanceValue[]
end
function staticSet_instance(::Type{PlayerStateUtil}, value)
    PlayerStateUtil_instanceSet[] = true
    PlayerStateUtil_instanceValue[] = value
end

function initFieldsPlayerStateUtil(this::PlayerStateUtil)
    this.commonStrings = nothing
    this.UNREALIZED = nothing
    this.REALIZED = nothing
    this.PREFETCHED = nothing
    this.STARTED = nothing
    this.CLOSED = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.UNREALIZED = "UNREALIZED"
    this.REALIZED = "REALIZED"
    this.PREFETCHED = "PREFETCHED"
    this.STARTED = "STARTED"
    this.CLOSED = "CLOSED"
    nothing
end

function initPlayerStateUtil(this::PlayerStateUtil)
    initFieldsPlayerStateUtil(this)
end

function newPlayerStateUtil()
    this = PlayerStateUtil()
    initPlayerStateUtil(this)
    this
end


function getInstance(::Type{PlayerStateUtil})
        return staticGet_instance(PlayerStateUtil)
end


function convert(this::PlayerStateUtil, state)
        if state == staticGet_UNREALIZED(Player)
            return this.UNREALIZED
        elseif state == staticGet_REALIZED(Player)
            return this.REALIZED
        elseif state == staticGet_PREFETCHED(Player)
            return this.PREFETCHED
        elseif state == staticGet_STARTED(Player)
            return this.STARTED
        elseif state == staticGet_CLOSED(Player)
            return this.CLOSED
        end
        return this.commonStrings.UNKNOWN
end

