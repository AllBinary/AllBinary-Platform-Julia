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
# package org.allbinary.game.score.displayable

mutable struct HighScoreUtil <: JObject
    logUtil::Any
    commonStrings::Any
    highScoresFactoryInterface::Any
    highScoresArray::Any
    highScore::Any
    abeClientInformation::Any
    gameInfo::Any
    highScoresHelper::Any
    firstTime::Bool
    HighScoreUtil() = new()
end

const HighScoreUtil_SUBMIT_TEXTBOX_COMMANDValue = Ref{Any}(nothing)
const HighScoreUtil_SUBMIT_TEXTBOX_COMMANDSet = Ref(false)
function staticGet_SUBMIT_TEXTBOX_COMMAND(::Type{HighScoreUtil})
    if !HighScoreUtil_SUBMIT_TEXTBOX_COMMANDSet[]
        HighScoreUtil_SUBMIT_TEXTBOX_COMMANDSet[] = true
        HighScoreUtil_SUBMIT_TEXTBOX_COMMANDValue[] = newCommand("Submit", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    end
    HighScoreUtil_SUBMIT_TEXTBOX_COMMANDValue[]
end
function staticSet_SUBMIT_TEXTBOX_COMMAND(::Type{HighScoreUtil}, value)
    HighScoreUtil_SUBMIT_TEXTBOX_COMMANDSet[] = true
    HighScoreUtil_SUBMIT_TEXTBOX_COMMANDValue[] = value
end

function initFieldsHighScoreUtil(this::HighScoreUtil)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.highScoresFactoryInterface = nothing
    this.highScoresArray = nothing
    this.highScore = nothing
    this.abeClientInformation = nothing
    this.gameInfo = nothing
    this.highScoresHelper = nothing
    this.firstTime = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    
    
    
    
    this.firstTime = true
    nothing
end


function initHighScoreUtil(this::HighScoreUtil, highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
        initFieldsHighScoreUtil(this)
        this.highScoresFactoryInterface = highScoresFactoryInterface
        this.highScoresHelper = highScoresHelper
        this.highScoresArray = AllBinary.getHighScoresArray(this.highScoresHelper)
        this.highScore = highScore
        this.abeClientInformation = abeClientInformation
        this.gameInfo = gameInfo
        nothing
end

function newHighScoreUtil(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
    this = HighScoreUtil()
    initHighScoreUtil(this, highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
    this
end


function setHighScoresArray(this::HighScoreUtil, highScoresArray)
        this.highScoresArray = highScoresArray
        this.firstTime = false
        AllBinary.saveHighScore(this)
        nothing
end


function update(this::HighScoreUtil, name)
        AllBinary.save(AllBinary.getInstance(HighScoreNamePersistanceSingleton), this.abeClientInformation, this.gameInfo, name)
        AllBinary.setName(this.highScore, name)
        nothing
end


function saveHighScore(this::HighScoreUtil)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.START), AllBinary.toString(AllBinary.getInstance(StringUtil), this.highScore))), this, "saveHighScore")
        local size::Int32 = Int32(Base.length(this.highScoresArray))
        if this.firstTime && size == Int32(0)
            AllBinary.putF(this.logUtil, "Games canvas did not give us any HighScores", this, "saveHighScore")
            AllBinary.fetchHighScores(this.highScoresFactoryInterface, this.gameInfo, this)
            return
        end
        local highScores = nothing
        local highScoresAsString = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            highScores = this.highScoresArray[index + 1]
            AllBinary.addHighScore(highScores, this.highScore)
            highScoresAsString = AllBinary.toString(highScores)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Added/Adding Score: "), highScoresAsString)), this, "saveHighScore")
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.setHighScoresArray(this.highScoresHelper, this.highScoresArray)
        nothing
end


function submit(this::HighScoreUtil, myCanvas)
        local commandListener = AllBinary.getCustomCommandListener(myCanvas)
        AllBinary.commandAction(commandListener, staticGet_SUBMIT_TEXTBOX_COMMAND(HighScoreUtil), myCanvas)
        nothing
end

