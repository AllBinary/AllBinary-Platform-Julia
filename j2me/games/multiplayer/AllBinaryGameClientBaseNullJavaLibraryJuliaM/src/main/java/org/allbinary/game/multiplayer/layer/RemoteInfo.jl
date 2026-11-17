#=
  
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
=#
# Generated Code Do Not Modify
# package org.allbinary.game.multiplayer.layer

mutable struct RemoteInfo <: JObject
    RemoteInfo() = new()
end

const RemoteInfo_NEW_PLAYER_IDValue = Ref{Any}(nothing)
const RemoteInfo_NEW_PLAYER_IDSet = Ref(false)
function staticGet_NEW_PLAYER_ID(::Type{RemoteInfo})
    if !RemoteInfo_NEW_PLAYER_IDSet[]
        RemoteInfo_NEW_PLAYER_IDSet[] = true
        RemoteInfo_NEW_PLAYER_IDValue[] = Int32(0)
    end
    RemoteInfo_NEW_PLAYER_IDValue[]
end
function staticSet_NEW_PLAYER_ID(::Type{RemoteInfo}, value)
    RemoteInfo_NEW_PLAYER_IDSet[] = true
    RemoteInfo_NEW_PLAYER_IDValue[] = value
end
const RemoteInfo_REMOTE_INFOValue = Ref{Any}(nothing)
const RemoteInfo_REMOTE_INFOSet = Ref(false)
function staticGet_REMOTE_INFO(::Type{RemoteInfo})
    if !RemoteInfo_REMOTE_INFOSet[]
        RemoteInfo_REMOTE_INFOSet[] = true
        RemoteInfo_REMOTE_INFOValue[] = newRemoteInfo(AllBinary.getInstance(StringUtil).EMPTY_STRING, -Int32(1), -Int32(1), staticGet_NEW_PLAYER_ID(RemoteInfo))
    end
    RemoteInfo_REMOTE_INFOValue[]
end
function staticSet_REMOTE_INFO(::Type{RemoteInfo}, value)
    RemoteInfo_REMOTE_INFOSet[] = true
    RemoteInfo_REMOTE_INFOValue[] = value
end

function initFieldsRemoteInfo(this::RemoteInfo)
    nothing
end


function initRemoteInfo(this::RemoteInfo, username, actorSessionId, playerInputId, id)
        initFieldsRemoteInfo(this)
        nothing
        nothing
end

function newRemoteInfo(username, actorSessionId, playerInputId, id)
    this = RemoteInfo()
    initRemoteInfo(this, username, actorSessionId, playerInputId, id)
    this
end

