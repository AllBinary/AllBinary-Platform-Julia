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
# package org.allbinary.game.graphics.hud

mutable struct HudGraphicsPosition <: JObject
    anchor::Int32
    point::Any
    HudGraphicsPosition() = new()
end

const HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONValue = Ref{Any}(nothing)
const HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONSet = Ref(false)
function staticGet_NULL_HUD_GRAPHICS_POSITION(::Type{HudGraphicsPosition})
    if !HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONSet[]
        HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONSet[] = true
        HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONValue[] = newHudGraphicsPosition(AllBinary.getInstance(PointFactory).ZERO_ZERO, Int32(9))
    end
    HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONValue[]
end
function staticSet_NULL_HUD_GRAPHICS_POSITION(::Type{HudGraphicsPosition}, value)
    HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONSet[] = true
    HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONValue[] = value
end

function initFieldsHudGraphicsPosition(this::HudGraphicsPosition)
    this.anchor = Int32(0)
    this.point = nothing
    this.anchor = Int32(0)
    this.point = AllBinary.getInstance(PointFactory).ZERO_ZERO
    nothing
end


function initHudGraphicsPosition(this::HudGraphicsPosition, point, anchor)
        initFieldsHudGraphicsPosition(this)
        AllBinary.setAnchor(this, anchor)
        AllBinary.setPoint(this, point)
        nothing
end

function newHudGraphicsPosition(point, anchor)
    this = HudGraphicsPosition()
    initHudGraphicsPosition(this, point, anchor)
    this
end


function getAnchor(this::HudGraphicsPosition)
        return this.anchor
end


function setAnchor(this::HudGraphicsPosition, anchor)
        this.anchor = anchor
        nothing
end


function getPoint(this::HudGraphicsPosition)
        return this.point
end


function setPoint(this::HudGraphicsPosition, point)
        this.point = point
        nothing
end

