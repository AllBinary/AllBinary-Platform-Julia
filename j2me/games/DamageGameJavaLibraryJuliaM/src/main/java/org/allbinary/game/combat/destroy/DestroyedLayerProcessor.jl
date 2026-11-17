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
# package org.allbinary.game.combat.destroy

# extends BasicLayerProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DestroyedLayerProcessor <: JObject
    DestroyedLayerProcessor() = new()
end

const DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORValue = Ref{Any}(nothing)
const DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORSet = Ref(false)
function staticGet_DESTROYED_LAYER_PROCESSOR(::Type{DestroyedLayerProcessor})
    if !DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORSet[]
        DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORSet[] = true
        DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORValue[] = staticGet_NULL_LAYER_PROCESSOR(BasicLayerProcessor)
    end
    DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORValue[]
end
function staticSet_DESTROYED_LAYER_PROCESSOR(::Type{DestroyedLayerProcessor}, value)
    DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORSet[] = true
    DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSORValue[] = value
end

function initFieldsDestroyedLayerProcessor(this::DestroyedLayerProcessor)
    nothing
end


function initDestroyedLayerProcessor(this::DestroyedLayerProcessor)
        initBasicLayerProcessor(this)
        initFieldsDestroyedLayerProcessor(this)
        nothing
        nothing
end

function newDestroyedLayerProcessor()
    this = DestroyedLayerProcessor()
    initDestroyedLayerProcessor(this)
    this
end


function init(::Type{DestroyedLayerProcessor})
        staticSet_DESTROYED_LAYER_PROCESSOR(DestroyedLayerProcessor, newDestroyedLayerProcessor())
        nothing
end


function getInstance(::Type{DestroyedLayerProcessor})
        return staticGet_DESTROYED_LAYER_PROCESSOR(DestroyedLayerProcessor)
end


function process(this::DestroyedLayerProcessor, allBinaryLayerManager)
        local list = AllBinary.getList(this)
        local size::Int32 = AllBinary.size(list)
        local destroyedEventHandler = AllBinary.getInstance(DestroyedEventHandler)
        local destroyEventCircularStaticPool = AllBinary.getInstance(DestroyEventCircularStaticPool)
        local destroyedEvent = nothing
        local layerInterface = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local layerInterfaceCanBeNull = list.objectArray[index + 1]
            if layerInterfaceCanBeNull !== nothing
                layerInterface = (layerInterfaceCanBeNull)
                AllBinary.remove(allBinaryLayerManager, layerInterface)
                destroyedEvent = AllBinary.getInstanceForLayer(destroyEventCircularStaticPool, layerInterface)
                AllBinary.fireEvent(destroyedEventHandler, destroyedEvent)
            else
                local commonStrings = AllBinary.getInstance(CommonStrings)
            end
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.clear(list)
        nothing
end

