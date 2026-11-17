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
# package org.allbinary.game.multiplayer.layer

mutable struct MultiplayerBehavior <: JObject
    MultiplayerBehavior() = new()
end

const MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORValue = Ref{Any}(nothing)
const MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORSet = Ref(false)
function staticGet_NULL_MULTIPLAYER_BEHAVIOR(::Type{MultiplayerBehavior})
    if !MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORSet[]
        MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORSet[] = true
        MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORValue[] = newMultiplayerBehavior(AllBinary.getInstance(StringUtil).EMPTY_STRING)
    end
    MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORValue[]
end
function staticSet_NULL_MULTIPLAYER_BEHAVIOR(::Type{MultiplayerBehavior}, value)
    MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORSet[] = true
    MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIORValue[] = value
end

function initFieldsMultiplayerBehavior(this::MultiplayerBehavior)
    nothing
end


function initMultiplayerBehavior(this::MultiplayerBehavior, username)
        initFieldsMultiplayerBehavior(this)
        nothing
        nothing
end

function newMultiplayerBehavior(username)
    this = MultiplayerBehavior()
    initMultiplayerBehavior(this, username)
    this
end


function startTick(this::MultiplayerBehavior)
        nothing
        nothing
end


function endTick(this::MultiplayerBehavior)
        nothing
        nothing
end


function getApproximateElapsed(this::MultiplayerBehavior)
        return Int64(0)
end

