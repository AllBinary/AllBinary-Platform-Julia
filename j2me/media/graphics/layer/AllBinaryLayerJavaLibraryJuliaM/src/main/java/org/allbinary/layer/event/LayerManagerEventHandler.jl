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
# package org.allbinary.layer.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LayerManagerEventHandler <: JObject
    list::Any
    CREATE::Any
    DELETE::Any
    LayerManagerEventHandler() = new()
end

const LayerManagerEventHandler_instanceValue = Ref{Any}(nothing)
const LayerManagerEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{LayerManagerEventHandler})
    if !LayerManagerEventHandler_instanceSet[]
        LayerManagerEventHandler_instanceSet[] = true
        LayerManagerEventHandler_instanceValue[] = newLayerManagerEventHandler()
    end
    LayerManagerEventHandler_instanceValue[]
end
function staticSet_instance(::Type{LayerManagerEventHandler}, value)
    LayerManagerEventHandler_instanceSet[] = true
    LayerManagerEventHandler_instanceValue[] = value
end

function initFieldsLayerManagerEventHandler(this::LayerManagerEventHandler)
    this.list = nothing
    this.CREATE = nothing
    this.DELETE = nothing
    this.list = newBasicArrayListD()
    this.CREATE = "Create"
    this.DELETE = "Delete"
    nothing
end


function getInstance(::Type{LayerManagerEventHandler})
        return staticGet_instance(LayerManagerEventHandler)
end


function initLayerManagerEventHandler(this::LayerManagerEventHandler)
        initBasicEventHandler(this)
        initFieldsLayerManagerEventHandler(this)
        nothing
        nothing
end

function newLayerManagerEventHandler()
    this = LayerManagerEventHandler()
    initLayerManagerEventHandler(this)
    this
end


function addListener(this::LayerManagerEventHandler, layerManagerEventListener)
        if !AllBinary.contains(this.list, layerManagerEventListener)
            AllBinary.add(this.list, layerManagerEventListener)
        end
        nothing
end


function removeAllListeners(this::LayerManagerEventHandler)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListener(this::LayerManagerEventHandler, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEvent(this::LayerManagerEventHandler, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local layerManagerEventListener = (this.list.objectArray[index + 1])
                AllBinary.onCreateLayerManagerEvent(layerManagerEventListener, (eventObject))
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            finally
            end
            end
        end
        AllBinary.fireEvent(this, eventObject)
        nothing
end


function fireDeleteEvent(this::LayerManagerEventHandler, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local layerManagerEventListener = (this.list.objectArray[index + 1])
                AllBinary.onDeleteLayerManagerEvent(layerManagerEventListener, (eventObject))
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            finally
            end
            end
        end
        local eventListenerInterfaceList = this.eventListenerInterfaceList
        local eventListenerInterface = nothing
        local layerManagerEventListenerInterface = nothing
        local listenerIndex::Int32 = Int32(0)
        while listenerIndex < AllBinary.size(eventListenerInterfaceList)
            try
                eventListenerInterface = (eventListenerInterfaceList.objectArray[listenerIndex + 1])
                layerManagerEventListenerInterface = ((eventListenerInterface))
                AllBinary.onDeleteLayerManagerEvent(layerManagerEventListenerInterface, (eventObject))
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            listenerIndex += Int32(1)
        end
        nothing
end


function process(this::LayerManagerEventHandler, eventObject, eventListenerInterface)
        local layerManagerEventListenerInterface = ((eventListenerInterface))
        AllBinary.onCreateLayerManagerEvent(layerManagerEventListenerInterface, (eventObject))
        nothing
end

