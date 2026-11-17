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

# extends LayerManager: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AllBinaryLayerManager <: JObject
    layerManagerEventHandler::Any
    createLayerManagerEvent::Any
    deleteLayerManagerEvent::Any
    basicLayerProcessorArray::Any
    AllBinaryLayerManager() = new()
end


function initFieldsAllBinaryLayerManager(this::AllBinaryLayerManager)
    this.layerManagerEventHandler = nothing
    this.createLayerManagerEvent = nothing
    this.deleteLayerManagerEvent = nothing
    this.basicLayerProcessorArray = nothing
    this.layerManagerEventHandler = AllBinary.getInstance(LayerManagerEventHandler)
    this.createLayerManagerEvent = newLayerManagerEvent(this, this.layerManagerEventHandler.CREATE)
    this.deleteLayerManagerEvent = newLayerManagerEvent(this, this.layerManagerEventHandler.DELETE)
    this.basicLayerProcessorArray = jNewArray(Any, Int32(0), nothing)
    nothing
end


function initAllBinaryLayerManager(this::AllBinaryLayerManager)
        initLayerManager(this, AllBinary.getInstance(LayerManagerNoDebug))
        initFieldsAllBinaryLayerManager(this)
        nothing
end

function newAllBinaryLayerManager()
    this = AllBinaryLayerManager()
    initAllBinaryLayerManager(this)
    this
end


function getLayerProcessorArray(this::AllBinaryLayerManager)
        return this.basicLayerProcessorArray
end


function setLayerProcessorArray(this::AllBinaryLayerManager, layerProcessorArray)
        this.basicLayerProcessorArray = layerProcessorArray
        nothing
end


function log(this::AllBinaryLayerManager)
        local size::Int32 = Int32(Base.length(this.basicLayerProcessorArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local layerProcessorInterface = this.basicLayerProcessorArray[index + 1]
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function append(this::AllBinaryLayerManager, layerInterface)
        if !AllBinary.contains(this, layerInterface)
            AllBinary.appendProcessors(this, layerInterface)
            AllBinary.append(this, layerInterface)
        end
        nothing
end


function appendAt(this::AllBinaryLayerManager, layerInterface, index)
        if !AllBinary.contains(this, layerInterface)
            AllBinary.appendProcessors(this, layerInterface)
            AllBinary.appendAt(this, layerInterface, index)
        end
        nothing
end


function appendProcessors(this::AllBinaryLayerManager, layerInterface)
        AllBinary.setLayerInterface(this.createLayerManagerEvent, layerInterface)
        AllBinary.fireEvent(this.layerManagerEventHandler, this.createLayerManagerEvent)
        local layerProcessorInterface = nothing
        let
            local index::Int32 = Int32(Base.length(this.basicLayerProcessorArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            layerProcessorInterface = this.basicLayerProcessorArray[index + 1]
            if AllBinary.isProcessorLayer(layerProcessorInterface, layerInterface)
                AllBinary.append(AllBinary.getLayerManager(layerProcessorInterface), layerInterface)
            end
            finally
            end
            end
        end
        nothing
end


function remove(this::AllBinaryLayerManager, layerInterface)
        AllBinary.setLayerInterface(this.deleteLayerManagerEvent, layerInterface)
        AllBinary.fireDeleteEvent(this.layerManagerEventHandler, this.deleteLayerManagerEvent)
        local layerProcessorInterface = nothing
        let
            local index::Int32 = Int32(Base.length(this.basicLayerProcessorArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            layerProcessorInterface = this.basicLayerProcessorArray[index + 1]
            AllBinary.remove(AllBinary.getLayerManager(layerProcessorInterface), layerInterface)
            finally
            end
            end
        end
        AllBinary.remove(this, layerInterface)
        nothing
end


function process(this::AllBinaryLayerManager)
        local layerProcessorInterface = nothing
        local size::Int32 = Int32(Base.length(this.basicLayerProcessorArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            layerProcessorInterface = this.basicLayerProcessorArray[index + 1]
            AllBinary.process(layerProcessorInterface, this)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function cleanup(this::AllBinaryLayerManager)
        local layerProcessorInterface = nothing
        local size::Int32 = Int32(Base.length(this.basicLayerProcessorArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            layerProcessorInterface = this.basicLayerProcessorArray[index + 1]
            AllBinary.cleanup(AllBinary.getLayerManager(layerProcessorInterface))
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.cleanup(this)
        nothing
end

