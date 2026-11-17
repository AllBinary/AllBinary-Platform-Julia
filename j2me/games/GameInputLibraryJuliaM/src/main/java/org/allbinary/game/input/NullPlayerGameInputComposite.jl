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
# package org.allbinary.game.input

mutable struct NullPlayerGameInputComposite <: JObject
    NullPlayerGameInputComposite() = new()
end

const NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITEValue = Ref{Any}(nothing)
const NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITESet = Ref(false)
function staticGet_NULL_PLAYER_GAME_INPUT_COMPOSITE(::Type{NullPlayerGameInputComposite})
    if !NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITESet[]
        NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITESet[] = true
        NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITEValue[] = newNullPlayerGameInputComposite()
    end
    NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITEValue[]
end
function staticSet_NULL_PLAYER_GAME_INPUT_COMPOSITE(::Type{NullPlayerGameInputComposite}, value)
    NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITESet[] = true
    NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITEValue[] = value
end

function initFieldsNullPlayerGameInputComposite(this::NullPlayerGameInputComposite)
    nothing
end

function initNullPlayerGameInputComposite(this::NullPlayerGameInputComposite)
    initFieldsNullPlayerGameInputComposite(this)
end

function newNullPlayerGameInputComposite()
    this = NullPlayerGameInputComposite()
    initNullPlayerGameInputComposite(this)
    this
end


function getName(this::NullPlayerGameInputComposite)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function processInput(this::NullPlayerGameInputComposite, layerManager)
        nothing
        nothing
end


function initInputProcessors(this::NullPlayerGameInputComposite)
        nothing
        nothing
end


function getPlayerGameInput(this::NullPlayerGameInputComposite)
        return AllBinary.getInstance(NoPlayerGameInput)
end

