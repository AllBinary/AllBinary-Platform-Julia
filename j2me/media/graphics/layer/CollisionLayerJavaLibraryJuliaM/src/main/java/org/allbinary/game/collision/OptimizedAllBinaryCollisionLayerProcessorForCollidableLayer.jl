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

# extends LayerProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer <: JObject
    OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer() = new()
end


function initFieldsOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer(this::OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer)
    nothing
end


function initOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer(this::OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer)
        initLayerProcessor(this, newOptimizedAllBinaryCollisionLayerManager())
        nothing
end

function newOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer()
    this = OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer()
    initOptimizedAllBinaryCollisionLayerProcessorForCollidableLayer(this)
    this
end


function processAt(this::OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer, allBinaryLayerManager, layerInterface, startIndex)
        local collidableInterfaceCompositeInterface = (layerInterface)
        local collidableBase = AllBinary.getCollidableInferface(collidableInterfaceCompositeInterface)
        if AllBinary.isCollidable(collidableBase, collidableInterfaceCompositeInterface)
            local layerManager = AllBinary.getLayerManager(this)
            local size::Int32 = AllBinary.getSize(layerManager)
            local collidableInterfaceCompositeInterface2 = nothing
            local collidableBase2 = nothing
            let
                local index::Int32 = startIndex + Int32(1)
                while index < size
                try
                collidableInterfaceCompositeInterface2 = (AllBinary.getLayerAt(layerManager, index))
                collidableBase2 = AllBinary.getCollidableInferface(collidableInterfaceCompositeInterface2)
                if AllBinary.isCollidable(collidableBase2, collidableInterfaceCompositeInterface) && AllBinary.isCollision(collidableBase, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                    AllBinary.collide(collidableBase, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)
                    AllBinary.collide(collidableBase2, collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface)
                end
                finally
                    index += Int32(1)
                end
                end
            end
        end
        nothing
end


function isProcessorLayer(this::OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer, layerInterface)
        if AllBinary.implmentsCollidableInterface(layerInterface)
            return true
        else
            return false
        end
end

