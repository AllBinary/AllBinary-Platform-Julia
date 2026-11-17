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

mutable struct GameEventHandlerUtil <: JObject
    GameEventHandlerUtil() = new()
end


function initFieldsGameEventHandlerUtil(this::GameEventHandlerUtil)
    nothing
end

function initGameEventHandlerUtil(this::GameEventHandlerUtil)
    initFieldsGameEventHandlerUtil(this)
end

function newGameEventHandlerUtil()
    this = GameEventHandlerUtil()
    initGameEventHandlerUtil(this)
    this
end


function removeAllListeners(::Type{GameEventHandlerUtil})
        AllBinary.removeAllListeners(AllBinary.getInstance(UpGameKeyEventHandler))
        AllBinary.removeAllListeners(AllBinary.getInstance(DownGameKeyEventHandler))
        nothing
end

