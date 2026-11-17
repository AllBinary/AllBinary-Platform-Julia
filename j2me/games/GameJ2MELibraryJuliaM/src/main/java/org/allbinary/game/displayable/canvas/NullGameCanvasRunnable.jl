#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

mutable struct NullGameCanvasRunnable <: JObject
    gameStateFactory::Any
    NullGameCanvasRunnable() = new()
end

const NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLEValue = Ref{Any}(nothing)
const NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLESet = Ref(false)
function staticGet_NULL_GAME_CANVAS_RUNNABLE(::Type{NullGameCanvasRunnable})
    if !NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLESet[]
        NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLESet[] = true
        NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLEValue[] = newNullGameCanvasRunnable()
    end
    NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLEValue[]
end
function staticSet_NULL_GAME_CANVAS_RUNNABLE(::Type{NullGameCanvasRunnable}, value)
    NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLESet[] = true
    NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLEValue[] = value
end

function initFieldsNullGameCanvasRunnable(this::NullGameCanvasRunnable)
    this.gameStateFactory = nothing
    this.gameStateFactory = AllBinary.getInstance(GameStateFactory)
    nothing
end

function initNullGameCanvasRunnable(this::NullGameCanvasRunnable)
    initFieldsNullGameCanvasRunnable(this)
end

function newNullGameCanvasRunnable()
    this = NullGameCanvasRunnable()
    initNullGameCanvasRunnable(this)
    this
end


function getTitle(this::NullGameCanvasRunnable)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function isInitialized(this::NullGameCanvasRunnable)
        return false
end


function isPaused(this::NullGameCanvasRunnable)
        return false
end


function unPause(this::NullGameCanvasRunnable)
        nothing
        nothing
end


function pause(this::NullGameCanvasRunnable)
        nothing
        nothing
end


function isHighScoreSubmitted(this::NullGameCanvasRunnable)
        return false
end


function setHighScoreSubmitted(this::NullGameCanvasRunnable, highScoreSubmitted)
        nothing
        nothing
end


function processGameOver(this::NullGameCanvasRunnable)
        nothing
        nothing
end


function isGameOver(this::NullGameCanvasRunnable)
        return false
end


function initCommands(this::NullGameCanvasRunnable, cmdListener)
        nothing
        nothing
end


function getCurrentStateHashtable(this::NullGameCanvasRunnable)
        return AllBinary.getInstance(StdUtil).NULL_TABLE
end


function getLoadStateHashtable(this::NullGameCanvasRunnable)
        return AllBinary.getInstance(StdUtil).NULL_TABLE
end


function setLoadStateHashtable(this::NullGameCanvasRunnable, hashtable)
        nothing
        nothing
end


function getType(this::NullGameCanvasRunnable)
        return -Int32(1)
end


function setGameState(this::NullGameCanvasRunnable, gameState)
        nothing
        nothing
end


function getGameState(this::NullGameCanvasRunnable)
        return this.gameStateFactory.NO_GAME_STATE
end


function itemStateChanged(this::NullGameCanvasRunnable, item)
        nothing
        nothing
end


function paint(this::NullGameCanvasRunnable, graphics)
        nothing
        nothing
end


function paintThreed(this::NullGameCanvasRunnable, graphics)
        nothing
        nothing
end


function isRunning(this::NullGameCanvasRunnable)
        return false
end


function setRunning(this::NullGameCanvasRunnable, isRunning)
        nothing
        nothing
end


function setThread(this::NullGameCanvasRunnable, thread)
        nothing
        nothing
end


function run(this::NullGameCanvasRunnable)
        nothing
        nothing
end

