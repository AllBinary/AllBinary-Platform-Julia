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

# extends LayerManagerLoggingBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LayerManagerLogging <: JObject
    logUtil::Any
    stringBuilder::Any
    APPEND::Any
    APPEND_::Any
    _AT_::Any
    ATTEMPT_REMOVE_::Any
    REMOVE_::Any
    REMOVE::Any
    DID_NOT_REMOVE::Any
    CLEAR::Any
    LayerManagerLogging() = new()
end

const LayerManagerLogging_instanceValue = Ref{Any}(nothing)
const LayerManagerLogging_instanceSet = Ref(false)
function staticGet_instance(::Type{LayerManagerLogging})
    if !LayerManagerLogging_instanceSet[]
        LayerManagerLogging_instanceSet[] = true
        LayerManagerLogging_instanceValue[] = newLayerManagerLogging()
    end
    LayerManagerLogging_instanceValue[]
end
function staticSet_instance(::Type{LayerManagerLogging}, value)
    LayerManagerLogging_instanceSet[] = true
    LayerManagerLogging_instanceValue[] = value
end
const LayerManagerLogging_removeFailedValue = Ref{Any}(nothing)
const LayerManagerLogging_removeFailedSet = Ref(false)
function staticGet_removeFailed(::Type{LayerManagerLogging})
    if !LayerManagerLogging_removeFailedSet[]
        LayerManagerLogging_removeFailedSet[] = true
        LayerManagerLogging_removeFailedValue[] = false
    end
    LayerManagerLogging_removeFailedValue[]
end
function staticSet_removeFailed(::Type{LayerManagerLogging}, value)
    LayerManagerLogging_removeFailedSet[] = true
    LayerManagerLogging_removeFailedValue[] = value
end

function initFieldsLayerManagerLogging(this::LayerManagerLogging)
    this.logUtil = nothing
    this.stringBuilder = nothing
    this.APPEND = nothing
    this.APPEND_ = nothing
    this._AT_ = nothing
    this.ATTEMPT_REMOVE_ = nothing
    this.REMOVE_ = nothing
    this.REMOVE = nothing
    this.DID_NOT_REMOVE = nothing
    this.CLEAR = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.stringBuilder = newStringMaker()
    this.APPEND = "append"
    this.APPEND_ = " append: "
    this._AT_ = " at: "
    this.ATTEMPT_REMOVE_ = " Remove Attempt: "
    this.REMOVE_ = " Remove: "
    this.REMOVE = "remove"
    this.DID_NOT_REMOVE = " Did not remove: "
    this.CLEAR = " Clear List"
    nothing
end

function initLayerManagerLogging(this::LayerManagerLogging)
    initLayerManagerLoggingBase(this)
    initFieldsLayerManagerLogging(this)
end

function newLayerManagerLogging()
    this = LayerManagerLogging()
    initLayerManagerLogging(this)
    this
end


function getInstance(::Type{LayerManagerLogging})
        return staticGet_instance(LayerManagerLogging)
end


function append(this::LayerManagerLogging, layerInterface)
        AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.appendint(this.stringBuilder, ((AllBinary.hashCode(AllBinary.getInstance(TsUtil), this)) % Int32)), this.APPEND_), AllBinary.getName(layerInterface))), this, this.APPEND)
        nothing
end


function appendAt(this::LayerManagerLogging, layerInterface, index)
        AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.appendint(this.stringBuilder, ((AllBinary.hashCode(AllBinary.getInstance(TsUtil), this)) % Int32)), this.APPEND_), AllBinary.getName(layerInterface)), this._AT_), index)), this, this.APPEND)
        nothing
end


function remove(this::LayerManagerLogging, layerInterface)
        if layerInterface === nothing
            AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.appendint(this.stringBuilder, ((AllBinary.hashCode(AllBinary.getInstance(TsUtil), this)) % Int32)), this.ATTEMPT_REMOVE_), AllBinary.toString(AllBinary.getInstance(StringUtil), layerInterface))), this, this.REMOVE)
        else
            AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.appendint(this.stringBuilder, ((AllBinary.hashCode(AllBinary.getInstance(TsUtil), this)) % Int32)), this.ATTEMPT_REMOVE_), AllBinary.getName(layerInterface))), this, this.REMOVE)
        end
        nothing
end


function removeResult(this::LayerManagerLogging, layerManager, layerInterface, result)
        if layerInterface === nothing
            AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.appendint(this.stringBuilder, ((AllBinary.hashCode(AllBinary.getInstance(TsUtil), this)) % Int32)), this.REMOVE_), AllBinary.toString(AllBinary.getInstance(StringUtil), layerInterface))), this, this.REMOVE)
        elseif result
            if staticGet_removeFailed(LayerManagerLogging)
                AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.appendint(this.stringBuilder, ((AllBinary.hashCode(AllBinary.getInstance(TsUtil), this)) % Int32)), this.REMOVE_), AllBinary.getName(layerInterface))), this, this.REMOVE)
            end
        else
            AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.appendint(this.stringBuilder, ((AllBinary.hashCode(AllBinary.getInstance(TsUtil), this)) % Int32)), this.DID_NOT_REMOVE), AllBinary.getName(layerInterface))), this, this.REMOVE)
            staticSet_removeFailed(LayerManagerLogging, true)
        end
        nothing
end


function log(this::LayerManagerLogging, layerManager)
        AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
        local size::Int32 = AllBinary.getSize(layerManager)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        AllBinary.append(AllBinary.append(this.stringBuilder, AllBinary.toHexString(Integer, AllBinary.hashCode(AllBinary.getInstance(TsUtil), layerManager))), commonSeps.COLON_SEP)
        AllBinary.append(AllBinary.appendint(this.stringBuilder, size), commonSeps.COLON_SEP)
        local allBinaryLayer = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            allBinaryLayer = ((AllBinary.getLayerAt(layerManager, index)))
            AllBinary.append(AllBinary.append(this.stringBuilder, AllBinary.getName(allBinaryLayer)), commonSeps.COMMA)
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.putF(this.logUtil, AllBinary.toString(this.stringBuilder), this, this.REMOVE)
        nothing
end


function clear(this::LayerManagerLogging)
        AllBinary.delete(this.stringBuilder, Int32(0), AllBinary.length(this.stringBuilder))
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.appendint(this.stringBuilder, ((AllBinary.hashCode(AllBinary.getInstance(TsUtil), this)) % Int32)), this.CLEAR)), this, this.CLEAR)
        nothing
end

