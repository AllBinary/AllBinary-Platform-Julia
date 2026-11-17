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

mutable struct NullDemoPaintable <: JObject
    NullDemoPaintable() = new()
end

const NullDemoPaintable_NULL_DEMO_PAINTABLEValue = Ref{Any}(nothing)
const NullDemoPaintable_NULL_DEMO_PAINTABLESet = Ref(false)
function staticGet_NULL_DEMO_PAINTABLE(::Type{NullDemoPaintable})
    if !NullDemoPaintable_NULL_DEMO_PAINTABLESet[]
        NullDemoPaintable_NULL_DEMO_PAINTABLESet[] = true
        NullDemoPaintable_NULL_DEMO_PAINTABLEValue[] = newNullDemoPaintable()
    end
    NullDemoPaintable_NULL_DEMO_PAINTABLEValue[]
end
function staticSet_NULL_DEMO_PAINTABLE(::Type{NullDemoPaintable}, value)
    NullDemoPaintable_NULL_DEMO_PAINTABLESet[] = true
    NullDemoPaintable_NULL_DEMO_PAINTABLEValue[] = value
end

function initFieldsNullDemoPaintable(this::NullDemoPaintable)
    nothing
end

function initNullDemoPaintable(this::NullDemoPaintable)
    initFieldsNullDemoPaintable(this)
end

function newNullDemoPaintable()
    this = NullDemoPaintable()
    initNullDemoPaintable(this)
    this
end


function showGamePaintable(this::NullDemoPaintable)
        nothing
        nothing
end

