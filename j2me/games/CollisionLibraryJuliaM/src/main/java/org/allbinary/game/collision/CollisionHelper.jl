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

mutable struct CollisionHelper <: JObject
    sourceLayerInterface::Any
    CollisionHelper() = new()
end


function initFieldsCollisionHelper(this::CollisionHelper)
    this.sourceLayerInterface = nothing
    
    nothing
end


function initCollisionHelper(this::CollisionHelper, sourceLayerInterface)
        initFieldsCollisionHelper(this)
        this.sourceLayerInterface = sourceLayerInterface
        nothing
end

function newCollisionHelper(sourceLayerInterface)
    this = CollisionHelper()
    initCollisionHelper(this, sourceLayerInterface)
    this
end


function isCollidable(this::CollisionHelper, layerInterface)
        return true
end


function getOwnerLayerInterface(this::CollisionHelper)
        return this.sourceLayerInterface
end


function setOwnerLayerInterface(this::CollisionHelper, sourceLayerInterface)
        this.sourceLayerInterface = sourceLayerInterface
        nothing
end

