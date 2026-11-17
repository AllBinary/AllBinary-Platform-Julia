# Generated Code Do Not Modify
# package org.allbinary.game.score

# extends HighScoresBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicHighScoresFactory <: JObject
    logUtil::Any
    abeClientInformation::Any
    highScoresArray::Any
    TOP::Any
    SCORES::Any
    PERSONAL_HIGH_SCORES::Any
    FETCH::Any
    BasicHighScoresFactory() = new()
end


function initFieldsBasicHighScoresFactory(this::BasicHighScoresFactory)
    this.logUtil = nothing
    this.abeClientInformation = nothing
    this.highScoresArray = nothing
    this.TOP = nothing
    this.SCORES = nothing
    this.PERSONAL_HIGH_SCORES = nothing
    this.FETCH = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    this.highScoresArray = jNewArray(Any, Int32(1), nothing)
    this.TOP = "Top"
    this.SCORES = "Scores"
    this.PERSONAL_HIGH_SCORES = "Personal Top Scores"
    this.FETCH = "fetchHighScores"
    nothing
end


function initBasicHighScoresFactory(this::BasicHighScoresFactory, abeClientInformation, softwareInformation)
        initHighScoresBase(this)
        initFieldsBasicHighScoresFactory(this)
        this.abeClientInformation = abeClientInformation
        nothing
end

function newBasicHighScoresFactory(abeClientInformation, softwareInformation)
    this = BasicHighScoresFactory()
    initBasicHighScoresFactory(this, abeClientInformation, softwareInformation)
    this
end


function fetchHighScores(this::BasicHighScoresFactory, gameInfo, highScoresResultsListener)
        AllBinary.putF(this.logUtil, "Getting Local HighScores", this, this.FETCH)
        AllBinary.fetchHighScoresPreload(this, gameInfo, highScoresResultsListener, true)
        nothing
end


function fetchHighScoresPreload(this::BasicHighScoresFactory, gameInfo, highScoresResultsListener, preload)
        try
            this.highScoresArray[Int32(0) + 1] = AllBinary.getInstance(RecordStoreHighScores, this.abeClientInformation, gameInfo, this.TOP, this.PERSONAL_HIGH_SCORES, this.SCORES, newScoreComparator(true))
            AllBinary.setHighScoresArray(highScoresResultsListener, this.highScoresArray)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.FETCH, e)
        end
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

