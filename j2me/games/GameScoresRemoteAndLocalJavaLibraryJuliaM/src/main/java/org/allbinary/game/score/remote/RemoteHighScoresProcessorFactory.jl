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

mutable struct RemoteHighScoresProcessorFactory <: JObject
    RemoteHighScoresProcessorFactory() = new()
end

const RemoteHighScoresProcessorFactory_SINGLETONValue = Ref{Any}(nothing)
const RemoteHighScoresProcessorFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{RemoteHighScoresProcessorFactory})
    if !RemoteHighScoresProcessorFactory_SINGLETONSet[]
        RemoteHighScoresProcessorFactory_SINGLETONSet[] = true
        RemoteHighScoresProcessorFactory_SINGLETONValue[] = newRemoteHighScoresProcessor()
    end
    RemoteHighScoresProcessorFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{RemoteHighScoresProcessorFactory}, value)
    RemoteHighScoresProcessorFactory_SINGLETONSet[] = true
    RemoteHighScoresProcessorFactory_SINGLETONValue[] = value
end

function initFieldsRemoteHighScoresProcessorFactory(this::RemoteHighScoresProcessorFactory)
    nothing
end

function initRemoteHighScoresProcessorFactory(this::RemoteHighScoresProcessorFactory)
    initFieldsRemoteHighScoresProcessorFactory(this)
end

function newRemoteHighScoresProcessorFactory()
    this = RemoteHighScoresProcessorFactory()
    initRemoteHighScoresProcessorFactory(this)
    this
end


function getInstance(::Type{RemoteHighScoresProcessorFactory})
        return staticGet_SINGLETON(RemoteHighScoresProcessorFactory)
end

