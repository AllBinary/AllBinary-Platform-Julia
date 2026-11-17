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

# extends LayerProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SingleLayerLayerProcessor <: JObject
    SingleLayerLayerProcessor() = new()
end


function initFieldsSingleLayerLayerProcessor(this::SingleLayerLayerProcessor)
    nothing
end


function initSingleLayerLayerProcessor(this::SingleLayerLayerProcessor)
        initLayerProcessor(this, newSingleLayerLayerManager())
        nothing
end

function newSingleLayerLayerProcessor()
    this = SingleLayerLayerProcessor()
    initSingleLayerLayerProcessor(this)
    this
end


function process(this::SingleLayerLayerProcessor, allBinaryLayerManager)
        local layerManager = AllBinary.getLayerManager(this)
        AllBinary.processAt(this, allBinaryLayerManager, (AllBinary.getLayerAt(layerManager, Int32(0))), Int32(0))
        nothing
end

