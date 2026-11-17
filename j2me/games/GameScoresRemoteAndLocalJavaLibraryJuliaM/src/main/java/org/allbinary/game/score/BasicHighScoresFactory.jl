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
mutable struct BasicHighScoresFactory <: JObject
    logUtil::Any
    abeClientInformation::Any
    softwareInformation::Any
    highScoresArray::Any
    TOP::Any
    SCORES::Any
    PERSONAL_HIGH_SCORES::Any
    WORLD_TOP_SCORES::Any
    FETCH::Any
    BasicHighScoresFactory() = new()
end


function initFieldsBasicHighScoresFactory(this::BasicHighScoresFactory)
    this.logUtil = nothing
    this.abeClientInformation = nothing
    this.softwareInformation = nothing
    this.highScoresArray = nothing
    this.TOP = nothing
    this.SCORES = nothing
    this.PERSONAL_HIGH_SCORES = nothing
    this.WORLD_TOP_SCORES = nothing
    this.FETCH = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    
    this.highScoresArray = jNewArray(Any, Int32(2), nothing)
    this.TOP = "Top"
    this.SCORES = "Scores"
    this.PERSONAL_HIGH_SCORES = "Personal Top Scores"
    this.WORLD_TOP_SCORES = "World Top Scores"
    this.FETCH = "fetchHighScores"
    nothing
end


function initBasicHighScoresFactory(this::BasicHighScoresFactory, abeClientInformation, softwareInformation)
        initHighScoresBase(this)
        initFieldsBasicHighScoresFactory(this)
        this.abeClientInformation = abeClientInformation
        this.softwareInformation = softwareInformation
        nothing
end

function newBasicHighScoresFactory(abeClientInformation, softwareInformation)
    this = BasicHighScoresFactory()
    initBasicHighScoresFactory(this, abeClientInformation, softwareInformation)
    this
end


function fetchHighScores(this::BasicHighScoresFactory, gameInfo, highScoresResultsListener)
        AllBinary.putF(this.logUtil, "Getting Remote/Local HighScores", this, this.FETCH)
        AllBinary.fetchHighScoresPreload(this, gameInfo, highScoresResultsListener, true)
        nothing
end


function fetchHighScoresPreload(this::BasicHighScoresFactory, gameInfo, highScoresResultsListener, preload)
        AllBinary.runTask(AllBinary.getInstance(SecondaryThreadPool), newARunnable() #= Java anonymous class body: implement it as a named type
            

function run(this::BasicHighScoresFactory)
                local logUtil = AllBinary.getInstance(LogUtil)
                try
                    AllBinary.putF(logUtil, this.commonStrings.START, this, this.FETCH)
                    this.highScoresArray[Int32(0) + 1] = AllBinary.getInstance(RecordStoreHighScores, this.abeClientInformation, gameInfo, this.TOP, this.PERSONAL_HIGH_SCORES, this.SCORES, newScoreComparator(true))
                    local gameType = AllBinary.getGameType(gameInfo)
                    local gameTypeFactory = AllBinary.getInstance(GameTypeFactory)
                    local gameInfo2 = gameInfo
                    if gameType === gameTypeFactory.SINGLE_PLAYER || gameType === gameTypeFactory.BOT
                        gameInfo2 = AllBinary.getInstance(BasicHighScoresGameInfoFactory).SINGLE_PLAYER_SERVER
                    elseif gameType === gameTypeFactory.MULTI_PLAYER
                        gameInfo2 = AllBinary.getInstance(BasicHighScoresGameInfoFactory).MULTI_PLAYER_SERVER
                    end
                    this.highScoresArray[Int32(1) + 1] = AllBinary.getInstancePreload(RemoteHighScores, this.abeClientInformation, this.softwareInformation, gameInfo2, this.WORLD_TOP_SCORES, this.SCORES, AllBinary.getInstance(BooleanFactory).FALSE, preload)
                    AllBinary.putF(logUtil, this.commonStrings.END, this, this.FETCH)
                    AllBinary.getInstance(LastFetchHighScoresFactory).highScoresArray = this.highScoresArray
                    AllBinary.setHighScoresArray(highScoresResultsListener, this.highScoresArray)
                catch e
                    AllBinary.put(logUtil, this.commonStrings.EXCEPTION, this, this.FETCH, e)
                end
        nothing
end =#)
        nothing
end


function createHighScoresHelper(this::BasicHighScoresFactory)
        return newHighScoresHelper2()
end


function loaded(::Type{BasicHighScoresFactory}, index2)
        if index2 >= Int32(0)
            return true
        end
        return false
end

