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
# package org.allbinary.game.terrain

mutable struct BasicTerrainInfo <: JObject
    angle::Any
    BasicTerrainInfo() = new()
end

const BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOValue = Ref{Any}(nothing)
const BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOSet = Ref(false)
function staticGet_NULL_BASIC_TERRAIN_INFO(::Type{BasicTerrainInfo})
    if !BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOSet[]
        BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOSet[] = true
        BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOValue[] = newBasicTerrainInfo(AllBinary.getInstance(AngleFactory).NOT_ANGLE)
    end
    BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOValue[]
end
function staticSet_NULL_BASIC_TERRAIN_INFO(::Type{BasicTerrainInfo}, value)
    BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOSet[] = true
    BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOValue[] = value
end

function initFieldsBasicTerrainInfo(this::BasicTerrainInfo)
    this.angle = nothing
    
    nothing
end


function initBasicTerrainInfo(this::BasicTerrainInfo, angle)
        initFieldsBasicTerrainInfo(this)
        this.angle = angle
        nothing
end

function newBasicTerrainInfo(angle)
    this = BasicTerrainInfo()
    initBasicTerrainInfo(this, angle)
    this
end


function getAngle(this::BasicTerrainInfo)
        return this.angle
end


function setAngle(this::BasicTerrainInfo, angle)
        this.angle = angle
        nothing
end

