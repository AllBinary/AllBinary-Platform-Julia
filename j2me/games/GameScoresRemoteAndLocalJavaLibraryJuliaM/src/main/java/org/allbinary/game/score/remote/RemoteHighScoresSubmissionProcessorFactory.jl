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

mutable struct RemoteHighScoresSubmissionProcessorFactory <: JObject
    RemoteHighScoresSubmissionProcessorFactory() = new()
end

const RemoteHighScoresSubmissionProcessorFactory_SINGLETONValue = Ref{Any}(nothing)
const RemoteHighScoresSubmissionProcessorFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{RemoteHighScoresSubmissionProcessorFactory})
    if !RemoteHighScoresSubmissionProcessorFactory_SINGLETONSet[]
        RemoteHighScoresSubmissionProcessorFactory_SINGLETONSet[] = true
        RemoteHighScoresSubmissionProcessorFactory_SINGLETONValue[] = newRemoteHighScoresSubmissionProcessor()
    end
    RemoteHighScoresSubmissionProcessorFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{RemoteHighScoresSubmissionProcessorFactory}, value)
    RemoteHighScoresSubmissionProcessorFactory_SINGLETONSet[] = true
    RemoteHighScoresSubmissionProcessorFactory_SINGLETONValue[] = value
end

function initFieldsRemoteHighScoresSubmissionProcessorFactory(this::RemoteHighScoresSubmissionProcessorFactory)
    nothing
end

function initRemoteHighScoresSubmissionProcessorFactory(this::RemoteHighScoresSubmissionProcessorFactory)
    initFieldsRemoteHighScoresSubmissionProcessorFactory(this)
end

function newRemoteHighScoresSubmissionProcessorFactory()
    this = RemoteHighScoresSubmissionProcessorFactory()
    initRemoteHighScoresSubmissionProcessorFactory(this)
    this
end


function getInstance(::Type{RemoteHighScoresSubmissionProcessorFactory})
        return staticGet_SINGLETON(RemoteHighScoresSubmissionProcessorFactory)
end

