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
# package org.allbinary.ai

# extends LayerProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer <: JObject
    OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer() = new()
end


function initFieldsOptimizedArtificialIntelligenceLayerProcessorForCollidableLayer(this::OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer)
    nothing
end


function initOptimizedArtificialIntelligenceLayerProcessorForCollidableLayer(this::OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer)
        initLayerProcessor(this, newOptimizedArtificialIntelligenceLayerManager())
        nothing
end

function newOptimizedArtificialIntelligenceLayerProcessorForCollidableLayer()
    this = OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer()
    initOptimizedArtificialIntelligenceLayerProcessorForCollidableLayer(this)
    this
end


function processAt(this::OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer, allBinaryLayerManager, layerInterface, index)
        local artificialIntelligenceCompositeInterface = (layerInterface)
        AllBinary.processAI(AllBinary.getArtificialIntelligenceInterface(artificialIntelligenceCompositeInterface), allBinaryLayerManager)
        nothing
end


function isProcessorLayer(this::OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer, layerInterface)
        if AllBinary.implmentsArtificialIntelligenceCompositeInterface(layerInterface)
            return true
        else
            return false
        end
end

