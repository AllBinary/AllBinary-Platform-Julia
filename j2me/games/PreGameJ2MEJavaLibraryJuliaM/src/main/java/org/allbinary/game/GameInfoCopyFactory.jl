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

mutable struct GameInfoCopyFactory <: JObject
    GameInfoCopyFactory() = new()
end


function initFieldsGameInfoCopyFactory(this::GameInfoCopyFactory)
    nothing
end

function initGameInfoCopyFactory(this::GameInfoCopyFactory)
    initFieldsGameInfoCopyFactory(this)
end

function newGameInfoCopyFactory()
    this = GameInfoCopyFactory()
    initGameInfoCopyFactory(this)
    this
end


function getInstanceMaxLevel(::Type{GameInfoCopyFactory}, gameInfo, maxLevel)
        return newGameInfo(AllBinary.getGameType(gameInfo), AllBinary.getGameMode(gameInfo), AllBinary.getPlayerType(gameInfo), maxLevel, AllBinary.getCurrentLevel(gameInfo))
end


function getInstance(::Type{GameInfoCopyFactory}, gameInfo)
        return newGameInfo(AllBinary.getGameType(gameInfo), AllBinary.getGameMode(gameInfo), AllBinary.getPlayerType(gameInfo), AllBinary.getHighestLevel(gameInfo), AllBinary.getCurrentLevel(gameInfo))
end

