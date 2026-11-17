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

# extends GameAdStateBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameAdState <: JObject
    GameAdState() = new()
end


function initFieldsGameAdState(this::GameAdState)
    nothing
end


function initGameAdState(this::GameAdState, adConfiguration)
        initGameAdStateBase(this, adConfiguration)
        AllBinary.addListenerInterface(AllBinary.getInstance(VirtualKeyboardEventHandler), this)
        nothing
end

function newGameAdState(adConfiguration)
    this = GameAdState()
    initGameAdState(this, adConfiguration)
    this
end


function onVirtualKeyboardEvent(this::GameAdState, virtualKeyboardEvent)
        nothing
        nothing
end


function onEvent(this::GameAdState, eventObject)
        AllBinary.onEvent(this, eventObject)
        nothing
end

