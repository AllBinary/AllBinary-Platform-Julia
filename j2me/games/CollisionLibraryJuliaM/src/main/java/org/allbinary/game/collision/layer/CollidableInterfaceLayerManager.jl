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
# package org.allbinary.game.collision.layer

# extends LayerManager: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollidableInterfaceLayerManager <: JObject
    CollidableInterfaceLayerManager() = new()
end


function initFieldsCollidableInterfaceLayerManager(this::CollidableInterfaceLayerManager)
    nothing
end


function initCollidableInterfaceLayerManager(this::CollidableInterfaceLayerManager)
        initLayerManager(this, AllBinary.getInstance(LayerManagerNoDebug))
        nothing
end

function newCollidableInterfaceLayerManager()
    this = CollidableInterfaceLayerManager()
    initCollidableInterfaceLayerManager(this)
    this
end

