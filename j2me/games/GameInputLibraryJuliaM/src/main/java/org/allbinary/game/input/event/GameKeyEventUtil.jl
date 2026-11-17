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
# package org.allbinary.game.input.event

mutable struct GameKeyEventUtil <: JObject
    GameKeyEventUtil() = new()
end


function initFieldsGameKeyEventUtil(this::GameKeyEventUtil)
    nothing
end


function initGameKeyEventUtil(this::GameKeyEventUtil)
        initFieldsGameKeyEventUtil(this)
        nothing
        nothing
end

function newGameKeyEventUtil()
    this = GameKeyEventUtil()
    initGameKeyEventUtil(this)
    this
end


function getKey(::Type{GameKeyEventUtil}, anyType)
        local gameKeyEvent = (anyType)
        return AllBinary.getKey(gameKeyEvent)
end

