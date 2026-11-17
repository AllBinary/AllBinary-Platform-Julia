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

mutable struct HighScore <: JObject
    id::Int32
    name::Any
    gameInfo::Any
    score::Int64
    scoreString::Any
    HighScore() = new()
end


function initFieldsHighScore(this::HighScore)
    this.id = Int32(0)
    this.name = nothing
    this.gameInfo = nothing
    this.score = Int64(0)
    this.scoreString = nothing
    
    
    
    
    
    nothing
end


function initHighScore(this::HighScore, id, name, gameInfo, score)
        initFieldsHighScore(this)
        this.id = id
        this.name = name
        this.gameInfo = gameInfo
        this.score = score
        this.scoreString = jstr(this.score)
        nothing
end

function newHighScore(id, name, gameInfo, score)
    this = HighScore()
    initHighScore(this, id, name, gameInfo, score)
    this
end


function getId(this::HighScore)
        return this.id
end


function getName(this::HighScore)
        return this.name
end


function getScore(this::HighScore)
        return this.score
end


function getAsBytes(this::HighScore)
        local byteArrayOutputStream = newByteArrayOutputStream()
        local outputStream = newDataOutputStream(byteArrayOutputStream)
        AllBinary.writeUTF(outputStream, AllBinary.getName(this))
        AllBinary.writeLong(outputStream, AllBinary.getScore(this))
        return AllBinary.toByteArray(byteArrayOutputStream)
end


function getGameInfo(this::HighScore)
        return this.gameInfo
end


function getScoreString(this::HighScore)
        return this.scoreString
end


function setName(this::HighScore, name)
        this.name = name
        nothing
end


function toString(this::HighScore)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        return AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.appendlong(AllBinary.append(AllBinary.append(newStringMaker(), this.name), commonSeps.COLON), this.score), commonSeps.FORWARD_SLASH), this.scoreString))
end

