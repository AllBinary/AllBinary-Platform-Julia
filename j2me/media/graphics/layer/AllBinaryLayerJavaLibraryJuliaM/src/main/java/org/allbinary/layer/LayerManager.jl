# Generated Code Do Not Modify
# package org.allbinary.layer

mutable struct LayerManager <: JObject
    logUtil::Any
    commonStrings::Any
    systemWrapper::Any
    tsUtil::Any
    layerManagerLogging::Any
    list::Any
    anyType::Any
    LayerManager() = new()
end


function initFieldsLayerManager(this::LayerManager)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.systemWrapper = nothing
    this.tsUtil = nothing
    this.layerManagerLogging = nothing
    this.list = nothing
    this.anyType = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.systemWrapper = AllBinary.getInstance(ABSystemWrapper)
    this.tsUtil = AllBinary.getInstance(TsUtil)
    
    this.list = newBasicArrayListD()
    this.anyType = newSynchObject()
    nothing
end


function initLayerManager(this::LayerManager, layerManagerLogging)
        initFieldsLayerManager(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.layerManagerLogging = layerManagerLogging
        nothing
end

function newLayerManager(layerManagerLogging)
    this = LayerManager()
    initLayerManager(this, layerManagerLogging)
    this
end


function contains(this::LayerManager, layerInterface)
        return AllBinary.contains(this.list, layerInterface)
end


function update(this::LayerManager, layerInterface)
        local had::Bool = AllBinary.remove(this.list, layerInterface)
        if had
            local nextLayerInterface = nothing
            local size::Int32 = AllBinary.size(this.list)
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                nextLayerInterface = (AllBinary.get(this.list, index))
                if AllBinary.getZP(layerInterface) > AllBinary.getZP(nextLayerInterface)
                    AllBinary.addAt(this.list, index, layerInterface)
                    return
                end
                finally
                    index += Int32(1)
                end
                end
            end
            AllBinary.add(this.list, layerInterface)
        end
        nothing
end


function insert(this::LayerManager, layerInterface)
        local nextLayerInterface = nothing
        local size::Int32 = AllBinary.size(this.list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            nextLayerInterface = (AllBinary.get(this.list, index))
            if AllBinary.getZP(layerInterface) > AllBinary.getZP(nextLayerInterface)
                AllBinary.appendAt(this, layerInterface, index)
                return
            end
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.append(this, layerInterface)
        nothing
end


function append(this::LayerManager, layerInterface)
        AllBinary.append(this.layerManagerLogging, layerInterface)
        AllBinary.add(this.list, layerInterface)
        nothing
end


function appendAt(this::LayerManager, layerInterface, index)
        AllBinary.appendAt(this.layerManagerLogging, layerInterface, index)
        AllBinary.addAt(this.list, index, layerInterface)
        nothing
end


function remove(this::LayerManager, layerInterface)
        begin
            AllBinary.remove(this.layerManagerLogging, layerInterface)
            local result::Bool = AllBinary.remove(this.list, layerInterface)
            AllBinary.removeResult(this.layerManagerLogging, this, layerInterface, result)
        end
        nothing
end


function getLayerAt(this::LayerManager, index)
        return (this.list.objectArray[index + 1])
end


function getSize(this::LayerManager)
        return AllBinary.size(this.list)
end


function cleanup(this::LayerManager)
        begin
            AllBinary.clear(this.list)
            AllBinary.clear(this.layerManagerLogging)
            AllBinary.gc(this.tsUtil)
            AllBinary.gc(this.tsUtil)
        end
        nothing
end


function paint(this::LayerManager, g, x, y)
        begin
            local comp = nothing
            let
                local index::Int32 = AllBinary.size(this.list)
                while (index -= Int32(1)) >= Int32(0)
                try
                comp = (this.list.objectArray[index + 1])
                if comp !== nothing && AllBinary.isVisible(comp)
                    AllBinary.paint(comp, g)
                end
                finally
                end
                end
            end
        end
        nothing
end

