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
# package org.allbinary.string

mutable struct CommonLabels <: JObject
    WIDTH_LABEL::Any
    HEIGHT_LABEL::Any
    END_LABEL::Any
    TOTAL_LABEL::Any
    INDEX_LABEL::Any
    START_LABEL::Any
    COMMAND_LABEL::Any
    NAME_LABEL::Any
    START::Any
    ELAPSED::Any
    CURRENT::Any
    NEXT::Any
    ITEM_LABEL::Any
    RESULT_::Any
    COLON_SEP::Any
    CommonLabels() = new()
end

const CommonLabels_instanceValue = Ref{Any}(nothing)
const CommonLabels_instanceSet = Ref(false)
function staticGet_instance(::Type{CommonLabels})
    if !CommonLabels_instanceSet[]
        CommonLabels_instanceSet[] = true
        CommonLabels_instanceValue[] = newCommonLabels()
    end
    CommonLabels_instanceValue[]
end
function staticSet_instance(::Type{CommonLabels}, value)
    CommonLabels_instanceSet[] = true
    CommonLabels_instanceValue[] = value
end

function initFieldsCommonLabels(this::CommonLabels)
    this.WIDTH_LABEL = nothing
    this.HEIGHT_LABEL = nothing
    this.END_LABEL = nothing
    this.TOTAL_LABEL = nothing
    this.INDEX_LABEL = nothing
    this.START_LABEL = nothing
    this.COMMAND_LABEL = nothing
    this.NAME_LABEL = nothing
    this.START = nothing
    this.ELAPSED = nothing
    this.CURRENT = nothing
    this.NEXT = nothing
    this.ITEM_LABEL = nothing
    this.RESULT_ = nothing
    this.COLON_SEP = nothing
    this.WIDTH_LABEL = " Width: "
    this.HEIGHT_LABEL = " Height: "
    this.END_LABEL = "End: "
    this.TOTAL_LABEL = "Total: "
    this.INDEX_LABEL = "index: "
    this.START_LABEL = "Start: "
    this.COMMAND_LABEL = "Command: "
    this.NAME_LABEL = "Name: "
    this.START = this.START_LABEL
    this.ELAPSED = " Elapsed: "
    this.CURRENT = " Current: "
    this.NEXT = "Next"
    this.ITEM_LABEL = "Item: "
    this.RESULT_ = "Result: "
    this.COLON_SEP = ": "
    nothing
end

function initCommonLabels(this::CommonLabels)
    initFieldsCommonLabels(this)
end

function newCommonLabels()
    this = CommonLabels()
    initCommonLabels(this)
    this
end


function getInstance(::Type{CommonLabels})
        return staticGet_instance(CommonLabels)
end

