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

# extends CollisionHelper: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SourceCollisionHelper <: JObject
    SourceCollisionHelper() = new()
end


function initFieldsSourceCollisionHelper(this::SourceCollisionHelper)
    nothing
end


function initSourceCollisionHelper(this::SourceCollisionHelper, layerInterface)
        initCollisionHelper(this, layerInterface)
        nothing
end

function newSourceCollisionHelper(layerInterface)
    this = SourceCollisionHelper()
    initSourceCollisionHelper(this, layerInterface)
    this
end


function isCollidable(this::SourceCollisionHelper, layerInterface)
        if this.sourceLayerInterface != layerInterface
            return true
        end
        return false
end

