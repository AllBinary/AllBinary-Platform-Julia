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

# extends BasicPlayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoPlayer <: JObject
    NoPlayer() = new()
end

const NoPlayer_NO_PLAYERValue = Ref{Any}(nothing)
const NoPlayer_NO_PLAYERSet = Ref(false)
function staticGet_NO_PLAYER(::Type{NoPlayer})
    if !NoPlayer_NO_PLAYERSet[]
        NoPlayer_NO_PLAYERSet[] = true
        NoPlayer_NO_PLAYERValue[] = newNoPlayer()
    end
    NoPlayer_NO_PLAYERValue[]
end
function staticSet_NO_PLAYER(::Type{NoPlayer}, value)
    NoPlayer_NO_PLAYERSet[] = true
    NoPlayer_NO_PLAYERValue[] = value
end

function initFieldsNoPlayer(this::NoPlayer)
    nothing
end


function initNoPlayer(this::NoPlayer)
        initBasicPlayer(this)
        initFieldsNoPlayer(this)
        nothing
        nothing
end

function newNoPlayer()
    this = NoPlayer()
    initNoPlayer(this)
    this
end


function close(this::NoPlayer)
        nothing
        nothing
end


function getContentType(this::NoPlayer)
        return AllBinary.getInstance(StringUtil).NULL_STRING
end


function getControl(this::NoPlayer, controlType)
        return newNullControl()
end


function getControls(this::NoPlayer)
        return jNewArray(Any, Int32(0), nothing)
end

