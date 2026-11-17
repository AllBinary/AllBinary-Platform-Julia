#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.canvas

mutable struct ABToGBUtil <: JObject
    abCanvas::Any
    allBinaryGameLayerManager::Any
    ABToGBUtil() = new()
end

const ABToGBUtil_instanceValue = Ref{Any}(nothing)
const ABToGBUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ABToGBUtil})
    if !ABToGBUtil_instanceSet[]
        ABToGBUtil_instanceSet[] = true
        ABToGBUtil_instanceValue[] = newABToGBUtil()
    end
    ABToGBUtil_instanceValue[]
end
function staticSet_instance(::Type{ABToGBUtil}, value)
    ABToGBUtil_instanceSet[] = true
    ABToGBUtil_instanceValue[] = value
end

function initFieldsABToGBUtil(this::ABToGBUtil)
    this.abCanvas = nothing
    this.allBinaryGameLayerManager = nothing
    this.abCanvas = staticGet_NULL_CANVAS(NullCanvas)
    this.allBinaryGameLayerManager = AllBinary.getNullInstance(AllBinaryGameLayerManager)
    nothing
end

function initABToGBUtil(this::ABToGBUtil)
    initFieldsABToGBUtil(this)
end

function newABToGBUtil()
    this = ABToGBUtil()
    initABToGBUtil(this)
    this
end


function getInstance(::Type{ABToGBUtil})
        return staticGet_instance(ABToGBUtil)
end

