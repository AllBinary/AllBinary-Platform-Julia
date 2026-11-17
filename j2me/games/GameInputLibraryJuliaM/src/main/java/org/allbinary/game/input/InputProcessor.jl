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

mutable struct InputProcessor <: JObject
    gameInputStrings::Any
    InputProcessor() = new()
end


function initFieldsInputProcessor(this::InputProcessor)
    this.gameInputStrings = nothing
    this.gameInputStrings = AllBinary.getInstance(GameInputStrings)
    nothing
end

function initInputProcessor(this::InputProcessor)
    initFieldsInputProcessor(this)
end

function newInputProcessor()
    this = InputProcessor()
    initInputProcessor(this)
    this
end


function keyPressedByDevice(this::InputProcessor, keyCode, deviceId)
        nothing
        nothing
end


function keyReleasedByDevice(this::InputProcessor, canvas, keyCode, deviceId)
        nothing
        nothing
end

