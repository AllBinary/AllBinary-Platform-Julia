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

mutable struct HighScoresHelperBase <: JObject
    logUtil::Any
    highScoresArrayP::Any
    HighScoresHelperBase() = new()
end


function initFieldsHighScoresHelperBase(this::HighScoresHelperBase)
    this.logUtil = nothing
    this.highScoresArrayP = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.highScoresArrayP = AllBinary.getInstance(LastFetchHighScoresFactory).highScoresArray
    nothing
end

function initHighScoresHelperBase(this::HighScoresHelperBase)
    initFieldsHighScoresHelperBase(this)
end

function newHighScoresHelperBase()
    this = HighScoresHelperBase()
    initHighScoresHelperBase(this)
    this
end


function setHighScoresArray(this::HighScoresHelperBase, highScoresArrayP)
        if highScoresArrayP !== nothing
            commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), commonStrings.START), Int32(Base.length(highScoresArrayP)))), this, "setHighScoresArray")
        else
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.putF(this.logUtil, commonStrings.START, this, "setHighScoresArray")
        end
        this.highScoresArrayP = highScoresArrayP
        nothing
end


function getNextHighScores(this::HighScoresHelperBase)
        return AllBinary.getInstance(NullHighScoresSingletonFactory)
end


function isAnyHighScores(this::HighScoresHelperBase)
        throw(jNewException("RuntimeException", ""))
end


function setSelectedHighScores(this::HighScoresHelperBase, selectedHighScores)
        nothing
        nothing
end


function getSelectedHighScores(this::HighScoresHelperBase)
        return AllBinary.getInstance(NullHighScoresSingletonFactory)
end


function getHighScoresArray(this::HighScoresHelperBase)
        return this.highScoresArrayP
end


function selectHighScores(this::HighScoresHelperBase)
        nothing
        nothing
end

