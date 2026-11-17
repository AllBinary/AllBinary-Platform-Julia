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
# package org.allbinary.game.input

# extends GameInput: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PlayerGameInput <: JObject
    gameInputStrings::Any
    playerInputId::Int32
    PlayerGameInput() = new()
end


function initFieldsPlayerGameInput(this::PlayerGameInput)
    this.gameInputStrings = nothing
    this.playerInputId = Int32(0)
    this.gameInputStrings = AllBinary.getInstance(GameInputStrings)
    
    nothing
end


function initPlayerGameInput(this::PlayerGameInput, gameKeyEventList, removalGameKeyEventList, playerInputId)
        initGameInput(this, gameKeyEventList, removalGameKeyEventList)
        initFieldsPlayerGameInput(this)
        this.playerInputId = playerInputId
        nothing
end

function newPlayerGameInput(gameKeyEventList, removalGameKeyEventList, playerInputId)
    this = PlayerGameInput()
    initPlayerGameInput(this, gameKeyEventList, removalGameKeyEventList, playerInputId)
    this
end


function onPressGameKeyEvent(this::PlayerGameInput, gameKeyEvent)
        AllBinary.add(this, gameKeyEvent)
        AllBinary.addForRemoval(this, gameKeyEvent)
        nothing
end


function onDownGameKeyEvent(this::PlayerGameInput, gameKeyEvent)
        AllBinary.add(this, gameKeyEvent)
        nothing
end


function onDownKeyEvent(this::PlayerGameInput, gameKeyEvent)
        AllBinary.add(this, gameKeyEvent)
        AllBinary.addForRemoval(this, gameKeyEvent)
        nothing
end


function onDownKey(this::PlayerGameInput, gameKeyEvent)
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).START_LABEL), AllBinary.toString(gameKeyEvent))), this, this.gameInputStrings.ON_DOWN_GAME_KEY)
        nothing
end


function onUpGameKeyEvent(this::PlayerGameInput, gameKeyEvent)
        AllBinary.addForRemoval(this, gameKeyEvent)
        nothing
end


function onUpKeyEvent(this::PlayerGameInput, gameKeyEvent)
        nothing
        nothing
end


function onEvent(this::PlayerGameInput, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function getPlayerInputId(this::PlayerGameInput)
        return this.playerInputId
end

