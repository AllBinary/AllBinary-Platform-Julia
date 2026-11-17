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
# package org.allbinary.game.score

mutable struct LastFetchHighScoresFactory <: JObject
    highScoresArray::Any
    LastFetchHighScoresFactory() = new()
end

const LastFetchHighScoresFactory_instanceValue = Ref{Any}(nothing)
const LastFetchHighScoresFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{LastFetchHighScoresFactory})
    if !LastFetchHighScoresFactory_instanceSet[]
        LastFetchHighScoresFactory_instanceSet[] = true
        LastFetchHighScoresFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    LastFetchHighScoresFactory_instanceValue[]
end
function staticSet_instance(::Type{LastFetchHighScoresFactory}, value)
    LastFetchHighScoresFactory_instanceSet[] = true
    LastFetchHighScoresFactory_instanceValue[] = value
end

function initFieldsLastFetchHighScoresFactory(this::LastFetchHighScoresFactory)
    this.highScoresArray = nothing
    this.highScoresArray = AllBinary.getInstance(NoHighScoresFactory).NO_HIGH_SCORES
    nothing
end

function initLastFetchHighScoresFactory(this::LastFetchHighScoresFactory)
    initFieldsLastFetchHighScoresFactory(this)
end

function newLastFetchHighScoresFactory()
    this = LastFetchHighScoresFactory()
    initLastFetchHighScoresFactory(this)
    this
end


function getInstance(::Type{LastFetchHighScoresFactory})
        if staticGet_instance(LastFetchHighScoresFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(LastFetchHighScoresFactory, newLastFetchHighScoresFactory())
        end
        return (staticGet_instance(LastFetchHighScoresFactory))
end

