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

# extends LayerProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollidableInterfaceLayerProcessor <: JObject
    CollidableInterfaceLayerProcessor() = new()
end


function initFieldsCollidableInterfaceLayerProcessor(this::CollidableInterfaceLayerProcessor)
    nothing
end


function initCollidableInterfaceLayerProcessor(this::CollidableInterfaceLayerProcessor)
        initLayerProcessor(this, newCollidableInterfaceLayerManager())
        nothing
end

function newCollidableInterfaceLayerProcessor()
    this = CollidableInterfaceLayerProcessor()
    initCollidableInterfaceLayerProcessor(this)
    this
end


function processAt(this::CollidableInterfaceLayerProcessor, allBinaryLayerManager, layerInterface, index)
        local collidableInterfaceCompositeInterface = (layerInterface)
        if AllBinary.isCollidable(AllBinary.getCollidableInferface(collidableInterfaceCompositeInterface), (collidableInterfaceCompositeInterface))
            AllBinary.process(AllBinary.getInstance(AllBinaryCollisionManager), AllBinary.getLayerManager(this), collidableInterfaceCompositeInterface, index)
        end
        nothing
end


function isProcessorLayer(this::CollidableInterfaceLayerProcessor, layerInterface)
        if AllBinary.implmentsCollidableInterface(layerInterface)
            return true
        else
            return false
        end
end

