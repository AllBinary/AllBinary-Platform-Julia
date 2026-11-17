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

mutable struct NullAllBinaryGameCanvas <: JObject
    NullAllBinaryGameCanvas() = new()
end

const NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASValue = Ref{Any}(nothing)
const NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASSet = Ref(false)
function staticGet_NULL_ALLBINARY_GAME_CANVAS(::Type{NullAllBinaryGameCanvas})
    if !NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASSet[]
        NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASSet[] = true
        NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASValue[] = newNullAllBinaryGameCanvas()
    end
    NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASValue[]
end
function staticSet_NULL_ALLBINARY_GAME_CANVAS(::Type{NullAllBinaryGameCanvas}, value)
    NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASSet[] = true
    NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASValue[] = value
end

function initFieldsNullAllBinaryGameCanvas(this::NullAllBinaryGameCanvas)
    nothing
end

function initNullAllBinaryGameCanvas(this::NullAllBinaryGameCanvas)
    initFieldsNullAllBinaryGameCanvas(this)
end

function newNullAllBinaryGameCanvas()
    this = NullAllBinaryGameCanvas()
    initNullAllBinaryGameCanvas(this)
    this
end


function getLayerManager(this::NullAllBinaryGameCanvas)
        throw(jNewException("RuntimeException", ""))
end


function addCommand(this::NullAllBinaryGameCanvas, cmd)
        throw(jNewException("RuntimeException", ""))
        nothing
end


function getHeight(this::NullAllBinaryGameCanvas)
        throw(jNewException("RuntimeException", ""))
end


function getWidth(this::NullAllBinaryGameCanvas)
        throw(jNewException("RuntimeException", ""))
end


function removeCommand(this::NullAllBinaryGameCanvas, cmd)
        throw(jNewException("RuntimeException", ""))
        nothing
end


function setCommandListener(this::NullAllBinaryGameCanvas, l)
        throw(jNewException("RuntimeException", ""))
        nothing
end

