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
# package org.allbinary.game.score

mutable struct RemoteErrorHighScoresSingletonFactory <: JObject
    RemoteErrorHighScoresSingletonFactory() = new()
end

const RemoteErrorHighScoresSingletonFactory_SINGLETONValue = Ref{Any}(nothing)
const RemoteErrorHighScoresSingletonFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{RemoteErrorHighScoresSingletonFactory})
    if !RemoteErrorHighScoresSingletonFactory_SINGLETONSet[]
        RemoteErrorHighScoresSingletonFactory_SINGLETONSet[] = true
        RemoteErrorHighScoresSingletonFactory_SINGLETONValue[] = newHighScores(AllBinary.getInstance(CommonStrings).LOADING, "Remote High Scores Did Not Load", AllBinary.getInstance(CommonStrings).PERIODS)
    end
    RemoteErrorHighScoresSingletonFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{RemoteErrorHighScoresSingletonFactory}, value)
    RemoteErrorHighScoresSingletonFactory_SINGLETONSet[] = true
    RemoteErrorHighScoresSingletonFactory_SINGLETONValue[] = value
end

function initFieldsRemoteErrorHighScoresSingletonFactory(this::RemoteErrorHighScoresSingletonFactory)
    nothing
end

function initRemoteErrorHighScoresSingletonFactory(this::RemoteErrorHighScoresSingletonFactory)
    initFieldsRemoteErrorHighScoresSingletonFactory(this)
end

function newRemoteErrorHighScoresSingletonFactory()
    this = RemoteErrorHighScoresSingletonFactory()
    initRemoteErrorHighScoresSingletonFactory(this)
    this
end


function getInstance(::Type{RemoteErrorHighScoresSingletonFactory})
        return staticGet_SINGLETON(RemoteErrorHighScoresSingletonFactory)
end

