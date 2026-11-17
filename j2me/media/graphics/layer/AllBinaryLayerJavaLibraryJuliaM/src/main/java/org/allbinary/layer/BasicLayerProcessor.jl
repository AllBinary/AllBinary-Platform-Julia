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

mutable struct BasicLayerProcessor <: JObject
    logUtil::Any
    list::Any
    BasicLayerProcessor() = new()
end

const BasicLayerProcessor_NULL_LAYER_PROCESSORValue = Ref{Any}(nothing)
const BasicLayerProcessor_NULL_LAYER_PROCESSORSet = Ref(false)
function staticGet_NULL_LAYER_PROCESSOR(::Type{BasicLayerProcessor})
    if !BasicLayerProcessor_NULL_LAYER_PROCESSORSet[]
        BasicLayerProcessor_NULL_LAYER_PROCESSORSet[] = true
        BasicLayerProcessor_NULL_LAYER_PROCESSORValue[] = newBasicLayerProcessor()
    end
    BasicLayerProcessor_NULL_LAYER_PROCESSORValue[]
end
function staticSet_NULL_LAYER_PROCESSOR(::Type{BasicLayerProcessor}, value)
    BasicLayerProcessor_NULL_LAYER_PROCESSORSet[] = true
    BasicLayerProcessor_NULL_LAYER_PROCESSORValue[] = value
end

function initFieldsBasicLayerProcessor(this::BasicLayerProcessor)
    this.logUtil = nothing
    this.list = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.list = newBasicArrayListD()
    nothing
end


function initBasicLayerProcessor(this::BasicLayerProcessor)
        initFieldsBasicLayerProcessor(this)
        nothing
        nothing
end

function newBasicLayerProcessor()
    this = BasicLayerProcessor()
    initBasicLayerProcessor(this)
    this
end


function add(this::BasicLayerProcessor, layerInterface)
        if !AllBinary.contains(this.list, layerInterface)
            AllBinary.add(this.list, layerInterface)
        end
        nothing
end


function process(this::BasicLayerProcessor, allBinaryLayerManager)
        throw(jNewException("Exception", AllBinary.getInstance(CommonStrings).NOT_IMPLEMENTED))
        nothing
end


function getList(this::BasicLayerProcessor)
        return this.list
end

