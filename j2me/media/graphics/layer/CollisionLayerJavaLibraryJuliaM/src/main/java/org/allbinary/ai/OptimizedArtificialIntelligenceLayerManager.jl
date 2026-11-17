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

# extends LayerManager: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OptimizedArtificialIntelligenceLayerManager <: JObject
    OptimizedArtificialIntelligenceLayerManager() = new()
end


function initFieldsOptimizedArtificialIntelligenceLayerManager(this::OptimizedArtificialIntelligenceLayerManager)
    nothing
end


function initOptimizedArtificialIntelligenceLayerManager(this::OptimizedArtificialIntelligenceLayerManager)
        initLayerManager(this, AllBinary.getInstance(LayerManagerNoDebug))
        nothing
end

function newOptimizedArtificialIntelligenceLayerManager()
    this = OptimizedArtificialIntelligenceLayerManager()
    initOptimizedArtificialIntelligenceLayerManager(this)
    this
end

