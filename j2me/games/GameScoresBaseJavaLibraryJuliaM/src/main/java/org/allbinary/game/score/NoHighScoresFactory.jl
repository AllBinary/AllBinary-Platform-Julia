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

# extends HighScoresBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoHighScoresFactory <: JObject
    logUtil::Any
    NO_HIGH_SCORES::Any
    NoHighScoresFactory() = new()
end

const NoHighScoresFactory_instanceValue = Ref{Any}(nothing)
const NoHighScoresFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{NoHighScoresFactory})
    if !NoHighScoresFactory_instanceSet[]
        NoHighScoresFactory_instanceSet[] = true
        NoHighScoresFactory_instanceValue[] = newNoHighScoresFactory()
    end
    NoHighScoresFactory_instanceValue[]
end
function staticSet_instance(::Type{NoHighScoresFactory}, value)
    NoHighScoresFactory_instanceSet[] = true
    NoHighScoresFactory_instanceValue[] = value
end

function initFieldsNoHighScoresFactory(this::NoHighScoresFactory)
    this.logUtil = nothing
    this.NO_HIGH_SCORES = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.NO_HIGH_SCORES = jNewArray(Any, Int32(0), nothing)
    nothing
end


function getInstance(::Type{NoHighScoresFactory})
        return staticGet_instance(NoHighScoresFactory)
end


function initNoHighScoresFactory(this::NoHighScoresFactory)
        initHighScoresBase(this)
        initFieldsNoHighScoresFactory(this)
        nothing
        nothing
end

function newNoHighScoresFactory()
    this = NoHighScoresFactory()
    initNoHighScoresFactory(this)
    this
end


function fetchHighScores(this::NoHighScoresFactory, gameInfo, highScoresResultsListener)
        AllBinary.putF(this.logUtil, "Getting No HighScores", this, "fetchHighScores")
        AllBinary.setHighScoresArray(highScoresResultsListener, this.NO_HIGH_SCORES)
        nothing
end


function createHighScoresHelper(this::NoHighScoresFactory)
        return newHighScoresHelperBase()
end

