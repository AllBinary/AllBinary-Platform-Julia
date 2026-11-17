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
# package org.allbinary.game.layer.drop

# extends BasicLayerProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DropLayerProcessor <: JObject
    DropLayerProcessor() = new()
end

const DropLayerProcessor_LAYER_PROCESSORValue = Ref{Any}(nothing)
const DropLayerProcessor_LAYER_PROCESSORSet = Ref(false)
function staticGet_LAYER_PROCESSOR(::Type{DropLayerProcessor})
    if !DropLayerProcessor_LAYER_PROCESSORSet[]
        DropLayerProcessor_LAYER_PROCESSORSet[] = true
        DropLayerProcessor_LAYER_PROCESSORValue[] = newDropLayerProcessor()
    end
    DropLayerProcessor_LAYER_PROCESSORValue[]
end
function staticSet_LAYER_PROCESSOR(::Type{DropLayerProcessor}, value)
    DropLayerProcessor_LAYER_PROCESSORSet[] = true
    DropLayerProcessor_LAYER_PROCESSORValue[] = value
end

function initFieldsDropLayerProcessor(this::DropLayerProcessor)
    nothing
end


function initDropLayerProcessor(this::DropLayerProcessor)
        initBasicLayerProcessor(this)
        initFieldsDropLayerProcessor(this)
        nothing
        nothing
end

function newDropLayerProcessor()
    this = DropLayerProcessor()
    initDropLayerProcessor(this)
    this
end


function getInstance(::Type{DropLayerProcessor})
        return staticGet_LAYER_PROCESSOR(DropLayerProcessor)
end


function process(this::DropLayerProcessor, allBinaryLayerManager)
        local list = AllBinary.getList(this)
        local size::Int32 = AllBinary.size(list)
        local layerInterface = nothing
        local dropLayerInterface = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            layerInterface = (list.objectArray[index + 1])
            dropLayerInterface = (layerInterface)
            layerInterface = (AllBinary.getDroppedLayer(dropLayerInterface))
            AllBinary.append(allBinaryLayerManager, layerInterface)
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.clear(list)
        nothing
end

