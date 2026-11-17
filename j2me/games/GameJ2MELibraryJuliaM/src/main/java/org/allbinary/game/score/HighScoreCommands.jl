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

mutable struct HighScoreCommands <: JObject
    DISPLAY::Any
    PERSONAL::Any
    WORLD::Any
    HighScoreCommands() = new()
end

const HighScoreCommands_instanceValue = Ref{Any}(nothing)
const HighScoreCommands_instanceSet = Ref(false)
function staticGet_instance(::Type{HighScoreCommands})
    if !HighScoreCommands_instanceSet[]
        HighScoreCommands_instanceSet[] = true
        HighScoreCommands_instanceValue[] = newHighScoreCommands()
    end
    HighScoreCommands_instanceValue[]
end
function staticSet_instance(::Type{HighScoreCommands}, value)
    HighScoreCommands_instanceSet[] = true
    HighScoreCommands_instanceValue[] = value
end

function initFieldsHighScoreCommands(this::HighScoreCommands)
    this.DISPLAY = nothing
    this.PERSONAL = nothing
    this.WORLD = nothing
    this.DISPLAY = newCommand("Scores", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.PERSONAL = newCommand("Personal", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    this.WORLD = newCommand("World", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    nothing
end

function initHighScoreCommands(this::HighScoreCommands)
    initFieldsHighScoreCommands(this)
end

function newHighScoreCommands()
    this = HighScoreCommands()
    initHighScoreCommands(this)
    this
end


function getInstance(::Type{HighScoreCommands})
        return staticGet_instance(HighScoreCommands)
end

