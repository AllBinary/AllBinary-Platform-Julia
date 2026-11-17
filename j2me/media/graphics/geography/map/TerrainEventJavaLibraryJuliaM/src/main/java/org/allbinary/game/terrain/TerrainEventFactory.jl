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

mutable struct TerrainEventFactory <: JObject
    TerrainEventFactory() = new()
end


function initFieldsTerrainEventFactory(this::TerrainEventFactory)
    nothing
end


function initTerrainEventFactory(this::TerrainEventFactory)
        initFieldsTerrainEventFactory(this)
        nothing
        nothing
end

function newTerrainEventFactory()
    this = TerrainEventFactory()
    initTerrainEventFactory(this)
    this
end


function getInstance(this::TerrainEventFactory)
        return newTerrainEvent(AllBinary.getInstance(NullUtil).NULL_OBJECT)
end

