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
# package org.allbinary.game.collision

# extends LayerManager: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OptimizedAllBinaryCollisionLayerManager <: JObject
    OptimizedAllBinaryCollisionLayerManager() = new()
end


function initFieldsOptimizedAllBinaryCollisionLayerManager(this::OptimizedAllBinaryCollisionLayerManager)
    nothing
end


function initOptimizedAllBinaryCollisionLayerManager(this::OptimizedAllBinaryCollisionLayerManager)
        initLayerManager(this, AllBinary.getInstance(LayerManagerNoDebug))
        nothing
end

function newOptimizedAllBinaryCollisionLayerManager()
    this = OptimizedAllBinaryCollisionLayerManager()
    initOptimizedAllBinaryCollisionLayerManager(this)
    this
end

