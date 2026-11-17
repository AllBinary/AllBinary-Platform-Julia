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
# package org.allbinary.game.score.remote

mutable struct RemoteHighScoresData <: JObject
    HIGH_SCORES::Any
    CUSTOMER_USER_NAME::Any
    DISPLAY_NAME::Any
    SCORE::Any
    GAME_INFO::Any
    GAME_CONFIGURATION::Any
    RemoteHighScoresData() = new()
end

const RemoteHighScoresData_SINGLETONValue = Ref{Any}(nothing)
const RemoteHighScoresData_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{RemoteHighScoresData})
    if !RemoteHighScoresData_SINGLETONSet[]
        RemoteHighScoresData_SINGLETONSet[] = true
        RemoteHighScoresData_SINGLETONValue[] = newRemoteHighScoresData()
    end
    RemoteHighScoresData_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{RemoteHighScoresData}, value)
    RemoteHighScoresData_SINGLETONSet[] = true
    RemoteHighScoresData_SINGLETONValue[] = value
end

function initFieldsRemoteHighScoresData(this::RemoteHighScoresData)
    this.HIGH_SCORES = nothing
    this.CUSTOMER_USER_NAME = nothing
    this.DISPLAY_NAME = nothing
    this.SCORE = nothing
    this.GAME_INFO = nothing
    this.GAME_CONFIGURATION = nothing
    this.HIGH_SCORES = "HIGH_SCORES"
    this.CUSTOMER_USER_NAME = "CUSTOMER_USER_NAME"
    this.DISPLAY_NAME = "DISPLAY_NAME"
    this.SCORE = "SCORE"
    this.GAME_INFO = "GAME_INFO"
    this.GAME_CONFIGURATION = "GAME_CONFIGURATION"
    nothing
end

function initRemoteHighScoresData(this::RemoteHighScoresData)
    initFieldsRemoteHighScoresData(this)
end

function newRemoteHighScoresData()
    this = RemoteHighScoresData()
    initRemoteHighScoresData(this)
    this
end


function getInstance(::Type{RemoteHighScoresData})
        return staticGet_SINGLETON(RemoteHighScoresData)
end

