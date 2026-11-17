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
# package org.allbinary.game

mutable struct GameInfo <: JObject
    logUtil::Any
    gameInfoData::Any
    gameType::Any
    gameMode::Any
    playerType::Any
    highestLevel::Int32
    currentLevel::Int32
    NEW_LEVEL::Any
    SET_CURRENT_LEVEL::Any
    NEXT_GAME_LEVEL::Any
    GameInfo() = new()
end

const GameInfo_NONEValue = Ref{Any}(nothing)
const GameInfo_NONESet = Ref(false)
function staticGet_NONE(::Type{GameInfo})
    if !GameInfo_NONESet[]
        GameInfo_NONESet[] = true
        GameInfo_NONEValue[] = newGameInfo(AllBinary.getInstance(GameTypeFactory).NONE, staticGet_NONE(GameMode), AllBinary.getInstance(PlayerTypesFactory).PLAYER_TYPE_ONE, -Int32(1), -Int32(1))
    end
    GameInfo_NONEValue[]
end
function staticSet_NONE(::Type{GameInfo}, value)
    GameInfo_NONESet[] = true
    GameInfo_NONEValue[] = value
end
const GameInfo_LEVEL_NAMEValue = Ref{Any}(nothing)
const GameInfo_LEVEL_NAMESet = Ref(false)
function staticGet_LEVEL_NAME(::Type{GameInfo})
    if !GameInfo_LEVEL_NAMESet[]
        GameInfo_LEVEL_NAMESet[] = true
        GameInfo_LEVEL_NAMEValue[] = "LEVEL"
    end
    GameInfo_LEVEL_NAMEValue[]
end
function staticSet_LEVEL_NAME(::Type{GameInfo}, value)
    GameInfo_LEVEL_NAMESet[] = true
    GameInfo_LEVEL_NAMEValue[] = value
end

function initFieldsGameInfo(this::GameInfo)
    this.logUtil = nothing
    this.gameInfoData = nothing
    this.gameType = nothing
    this.gameMode = nothing
    this.playerType = nothing
    this.highestLevel = Int32(0)
    this.currentLevel = Int32(0)
    this.NEW_LEVEL = nothing
    this.SET_CURRENT_LEVEL = nothing
    this.NEXT_GAME_LEVEL = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.gameInfoData = AllBinary.getInstance(GameInfoData)
    
    
    
    this.highestLevel = Int32(0)
    
    this.NEW_LEVEL = "New Level: "
    this.SET_CURRENT_LEVEL = "setCurrentLevel"
    this.NEXT_GAME_LEVEL = "nextGameLevel"
    nothing
end


function initGameInfo(this::GameInfo, gameType, gameMode, playerType, highestLevel, currentLevel)
        initFieldsGameInfo(this)
        this.gameType = gameType
        this.gameMode = gameMode
        AllBinary.setHighestLevel(this, highestLevel)
        this.currentLevel = currentLevel
        this.playerType = playerType
        nothing
end

function newGameInfo(gameType, gameMode, playerType, highestLevel, currentLevel)
    this = GameInfo()
    initGameInfo(this, gameType, gameMode, playerType, highestLevel, currentLevel)
    this
end


function getGameType(this::GameInfo)
        return this.gameType
end


function getGameMode(this::GameInfo)
        return this.gameMode
end


function getPlayerType(this::GameInfo)
        return this.playerType
end


function getHighestLevel(this::GameInfo)
        return this.highestLevel
end


function setHighestLevel(this::GameInfo, highestLevel)
        this.highestLevel = highestLevel
        nothing
end


function getCurrentLevel(this::GameInfo)
        return this.currentLevel
end


function setCurrentLevel(this::GameInfo, currentLevel)
        this.currentLevel = currentLevel
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.NEW_LEVEL), AllBinary.getCurrentLevel(this))), this, this.SET_CURRENT_LEVEL)
        nothing
end


function nextGameLevel(this::GameInfo)
        if AllBinary.getCurrentLevel(this) < AllBinary.getHighestLevel(this)
            this.currentLevel += Int32(1)
        end
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).NEXT), AllBinary.getInstance(CommonSeps).SPACE), this.NEW_LEVEL), AllBinary.getCurrentLevel(this))), this, this.NEXT_GAME_LEVEL)
        nothing
end


function previousGameLevel(this::GameInfo)
        if AllBinary.getCurrentLevel(this) > Int32(1)
            this.currentLevel -= Int32(1)
        end
        nothing
end


function isLastLevel(this::GameInfo)
        if AllBinary.getCurrentLevel(this) >= AllBinary.getHighestLevel(this)
            return true
        else
            return false
        end
end


function toHashtable(this::GameInfo)
        local hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
        AllBinary.put(hashtable, this.gameInfoData.GAME_TYPE, AllBinary.toString(AllBinary.getGameType(this)))
        AllBinary.put(hashtable, this.gameInfoData.GAME_MODE, AllBinary.toString(this.gameMode))
        AllBinary.put(hashtable, this.gameInfoData.PLAYER_TYPE, AllBinary.toString(this.playerType))
        AllBinary.put(hashtable, this.gameInfoData.HIGHEST_LEVEL, jstr(AllBinary.getHighestLevel(this)))
        AllBinary.put(hashtable, this.gameInfoData.CURRENT_LEVEL, jstr(this.currentLevel))
        return hashtable
end


function toString(this::GameInfo)
        local stringBuffer = newStringMaker()
        local commonSeps = AllBinary.getInstance(CommonSeps)
        AllBinary.append(stringBuffer, this.gameInfoData.GAME_TYPE)
        AllBinary.append(stringBuffer, commonSeps.EQUALS)
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getGameType(this)))
        AllBinary.append(stringBuffer, commonSeps.COMMA_SEP)
        AllBinary.append(stringBuffer, this.gameInfoData.GAME_MODE)
        AllBinary.append(stringBuffer, commonSeps.EQUALS)
        AllBinary.append(stringBuffer, AllBinary.toString(this.gameMode))
        AllBinary.append(stringBuffer, commonSeps.COMMA_SEP)
        AllBinary.append(stringBuffer, this.gameInfoData.PLAYER_TYPE)
        AllBinary.append(stringBuffer, commonSeps.EQUALS)
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), this.playerType))
        AllBinary.append(stringBuffer, commonSeps.COMMA_SEP)
        AllBinary.append(stringBuffer, this.gameInfoData.HIGHEST_LEVEL)
        AllBinary.append(stringBuffer, commonSeps.EQUALS)
        AllBinary.appendint(stringBuffer, AllBinary.getHighestLevel(this))
        AllBinary.append(stringBuffer, commonSeps.COMMA_SEP)
        AllBinary.append(stringBuffer, this.gameInfoData.CURRENT_LEVEL)
        AllBinary.append(stringBuffer, commonSeps.EQUALS)
        AllBinary.appendint(stringBuffer, this.currentLevel)
        return AllBinary.toString(stringBuffer)
end

