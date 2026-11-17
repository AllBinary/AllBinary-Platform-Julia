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
# package org.allbinary.game.input

# extends LayerProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OptimizedGameInputLayerProcessorForCollidableLayer <: JObject
    OptimizedGameInputLayerProcessorForCollidableLayer() = new()
end


function initFieldsOptimizedGameInputLayerProcessorForCollidableLayer(this::OptimizedGameInputLayerProcessorForCollidableLayer)
    nothing
end


function initOptimizedGameInputLayerProcessorForCollidableLayer(this::OptimizedGameInputLayerProcessorForCollidableLayer)
        initLayerProcessor(this, newOptimizedGameInputLayerManager())
        nothing
end

function newOptimizedGameInputLayerProcessorForCollidableLayer()
    this = OptimizedGameInputLayerProcessorForCollidableLayer()
    initOptimizedGameInputLayerProcessorForCollidableLayer(this)
    this
end


function processAt(this::OptimizedGameInputLayerProcessorForCollidableLayer, allBinaryLayerManager, layerInterface, index)
        local gameInputInterface = (layerInterface)
        AllBinary.processInput(gameInputInterface, allBinaryLayerManager)
        nothing
end


function isProcessorLayer(this::OptimizedGameInputLayerProcessorForCollidableLayer, layerInterface)
        if AllBinary.implmentsGameInputInterface(layerInterface)
            return true
        else
            return false
        end
end

