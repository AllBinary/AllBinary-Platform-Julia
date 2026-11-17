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
# package org.allbinary.layer

mutable struct LayerProcessor <: JObject
    commonStrings::Any
    layerManager::Any
    LayerProcessor() = new()
end


function initFieldsLayerProcessor(this::LayerProcessor)
    this.commonStrings = nothing
    this.layerManager = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    nothing
end


function initLayerProcessor(this::LayerProcessor, layerManager)
        initFieldsLayerProcessor(this)
        this.layerManager = layerManager
        nothing
end

function newLayerProcessor(layerManager)
    this = LayerProcessor()
    initLayerProcessor(this, layerManager)
    this
end


function processAt(this::LayerProcessor, allBinaryLayerManager, layerInterface, index)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function isProcessorLayer(this::LayerProcessor, layerInterface)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function getLayerManager(this::LayerProcessor)
        return this.layerManager
end


function process(this::LayerProcessor, allBinaryLayerManager)
        local layerManager = AllBinary.getLayerManager(this)
        local size::Int32 = AllBinary.getSize(layerManager)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.processAt(this, allBinaryLayerManager, (AllBinary.getLayerAt(layerManager, index)), index)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

