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

mutable struct NullHighScoresSingletonFactory <: JObject
    NullHighScoresSingletonFactory() = new()
end

const NullHighScoresSingletonFactory_SINGLETONValue = Ref{Any}(nothing)
const NullHighScoresSingletonFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NullHighScoresSingletonFactory})
    if !NullHighScoresSingletonFactory_SINGLETONSet[]
        NullHighScoresSingletonFactory_SINGLETONSet[] = true
        NullHighScoresSingletonFactory_SINGLETONValue[] = newHighScores(AllBinary.getInstance(CommonStrings).LOADING, "High Scores Not Loaded", AllBinary.getInstance(CommonStrings).PERIODS)
    end
    NullHighScoresSingletonFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NullHighScoresSingletonFactory}, value)
    NullHighScoresSingletonFactory_SINGLETONSet[] = true
    NullHighScoresSingletonFactory_SINGLETONValue[] = value
end

function initFieldsNullHighScoresSingletonFactory(this::NullHighScoresSingletonFactory)
    nothing
end

function initNullHighScoresSingletonFactory(this::NullHighScoresSingletonFactory)
    initFieldsNullHighScoresSingletonFactory(this)
end

function newNullHighScoresSingletonFactory()
    this = NullHighScoresSingletonFactory()
    initNullHighScoresSingletonFactory(this)
    this
end


function getInstance(::Type{NullHighScoresSingletonFactory})
        return staticGet_SINGLETON(NullHighScoresSingletonFactory)
end

