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
# package org.allbinary.game.tick

# extends LayerManager: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TickableLayerManager <: JObject
    TickableLayerManager() = new()
end


function initFieldsTickableLayerManager(this::TickableLayerManager)
    nothing
end


function initTickableLayerManager(this::TickableLayerManager)
        initLayerManager(this, AllBinary.getInstance(LayerManagerNoDebug))
        nothing
end

function newTickableLayerManager()
    this = TickableLayerManager()
    initTickableLayerManager(this)
    this
end

