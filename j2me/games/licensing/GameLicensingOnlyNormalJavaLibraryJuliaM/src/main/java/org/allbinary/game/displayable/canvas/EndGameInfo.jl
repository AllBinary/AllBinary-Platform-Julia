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
# package org.allbinary.game.displayable.canvas

mutable struct EndGameInfo <: JObject
    NORMAL_GAME_OVER::Any
    NORMAL_GAME_OVER_WIN::Any
    gameOverStr::Any
    winStr::Any
    EndGameInfo() = new()
end


function initFieldsEndGameInfo(this::EndGameInfo)
    this.NORMAL_GAME_OVER = nothing
    this.NORMAL_GAME_OVER_WIN = nothing
    this.gameOverStr = nothing
    this.winStr = nothing
    this.NORMAL_GAME_OVER = "Game Over"
    this.NORMAL_GAME_OVER_WIN = "You Won"
    this.gameOverStr = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.winStr = this.gameOverStr
    nothing
end


function initEndGameInfo(this::EndGameInfo)
        initFieldsEndGameInfo(this)
        nothing
        nothing
end

function newEndGameInfo()
    this = EndGameInfo()
    initEndGameInfo(this)
    this
end


function update(this::EndGameInfo, gameInfo, myCanvas)
        AllBinary.setGameOverStr(this, this.NORMAL_GAME_OVER)
        AllBinary.setWinStr(this, this.NORMAL_GAME_OVER_WIN)
        nothing
end


function getGameOverStr(this::EndGameInfo)
        return this.gameOverStr
end


function setGameOverStr(this::EndGameInfo, gameOverStr)
        this.gameOverStr = gameOverStr
        nothing
end


function getWinStr(this::EndGameInfo)
        return this.winStr
end


function setWinStr(this::EndGameInfo, winStr)
        this.winStr = winStr
        nothing
end

