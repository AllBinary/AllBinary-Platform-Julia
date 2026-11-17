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

# extends LayerProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TickableLayerProcessor <: JObject
    TickableLayerProcessor() = new()
end


function initFieldsTickableLayerProcessor(this::TickableLayerProcessor)
    nothing
end


function initTickableLayerProcessor(this::TickableLayerProcessor)
        initLayerProcessor(this, newTickableLayerManager())
        nothing
end

function newTickableLayerProcessor()
    this = TickableLayerProcessor()
    initTickableLayerProcessor(this)
    this
end


function processAt(this::TickableLayerProcessor, allBinaryLayerManager, layerInterface, index)
        local tickableInterface = (layerInterface)
        AllBinary.processTick(tickableInterface, allBinaryLayerManager)
        nothing
end


function isProcessorLayer(this::TickableLayerProcessor, layerInterface)
        if AllBinary.implmentsTickableInterface(layerInterface)
            return true
        else
            return false
        end
end

