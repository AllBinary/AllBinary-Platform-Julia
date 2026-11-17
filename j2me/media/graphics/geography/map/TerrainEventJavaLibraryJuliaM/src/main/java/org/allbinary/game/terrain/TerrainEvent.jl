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

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TerrainEvent <: JObject
    basicTerrainInfo::Any
    TerrainEvent() = new()
end


function initFieldsTerrainEvent(this::TerrainEvent)
    this.basicTerrainInfo = nothing
    this.basicTerrainInfo = staticGet_NULL_BASIC_TERRAIN_INFO(BasicTerrainInfo)
    nothing
end


function initTerrainEvent(this::TerrainEvent, basicTerrainInfo)
        initAllBinaryEventObject(this, basicTerrainInfo)
        initFieldsTerrainEvent(this)
        AllBinary.setBasicTerrainInfo(this, this.basicTerrainInfo)
        nothing
end

function newTerrainEvent(basicTerrainInfo)
    this = TerrainEvent()
    initTerrainEvent(this, basicTerrainInfo)
    this
end


function toString(this::TerrainEvent)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "TerrainEvent: \n")
        AllBinary.append(stringBuffer, "LayerInterface: ")
        AllBinary.append(stringBuffer, AllBinary.toString(this.basicTerrainInfo))
        return AllBinary.toString(stringBuffer)
end


function getBasicTerrainInfo(this::TerrainEvent)
        return this.basicTerrainInfo
end


function setBasicTerrainInfo(this::TerrainEvent, basicTerrainInfo)
        this.basicTerrainInfo = basicTerrainInfo
        nothing
end


function setBasicTerrainInfoForCircularStaticPool(this::TerrainEvent, basicTerrainInfo)
        this.basicTerrainInfo = basicTerrainInfo
        nothing
end

