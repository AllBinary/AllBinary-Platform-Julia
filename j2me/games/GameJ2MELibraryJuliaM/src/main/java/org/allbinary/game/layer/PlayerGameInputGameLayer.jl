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
# package org.allbinary.game.layer

# extends AllBinaryGameLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PlayerGameInputGameLayer <: JObject
    playerGameInput::Any
    PlayerGameInputGameLayer() = new()
end


function initFieldsPlayerGameInputGameLayer(this::PlayerGameInputGameLayer)
    this.playerGameInput = nothing
    
    nothing
end


function initPlayerGameInputGameLayer(this::PlayerGameInputGameLayer, playerInputId)
        initAllBinaryGameLayer(this, AllBinary.getInstance(StringUtil).EMPTY_STRING, newRectangle(AllBinary.getInstance(PointFactory).ZERO_ZERO, Int32(0), Int32(0)), newStaticViewPosition(Int32(0), Int32(0), Int32(0)))
        initFieldsPlayerGameInputGameLayer(this)
        this.playerGameInput = newPlayerGameInput(AllBinary.getGameKeyEventList(this), newBasicArrayListD(), playerInputId)
        local canvasStrings = AllBinary.getInstance(CanvasStrings)
        AllBinary.putF(this.logUtil, "Danger Danger Danger: Should Not Be Called Except For Testing Input", this, canvasStrings.PAINT)
        nothing
end

function newPlayerGameInputGameLayer(playerInputId)
    this = PlayerGameInputGameLayer()
    initPlayerGameInputGameLayer(this, playerInputId)
    this
end


function getPlayerGameInput(this::PlayerGameInputGameLayer)
        return this.playerGameInput
end


function initInputProcessors(this::PlayerGameInputGameLayer)
        nothing
        nothing
end


function processInput(this::PlayerGameInputGameLayer, myManager)
        nothing
        nothing
end


function paint(this::PlayerGameInputGameLayer, graphics)
        nothing
        nothing
end

