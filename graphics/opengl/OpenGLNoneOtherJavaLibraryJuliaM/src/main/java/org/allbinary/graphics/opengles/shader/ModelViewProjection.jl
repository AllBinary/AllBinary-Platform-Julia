#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles.shader

mutable struct ModelViewProjection <: JObject
    ModelViewProjection() = new()
end

const ModelViewProjection_instanceValue = Ref{Any}(nothing)
const ModelViewProjection_instanceSet = Ref(false)
function staticGet_instance(::Type{ModelViewProjection})
    if !ModelViewProjection_instanceSet[]
        ModelViewProjection_instanceSet[] = true
        ModelViewProjection_instanceValue[] = newModelViewProjection()
    end
    ModelViewProjection_instanceValue[]
end
function staticSet_instance(::Type{ModelViewProjection}, value)
    ModelViewProjection_instanceSet[] = true
    ModelViewProjection_instanceValue[] = value
end

function initFieldsModelViewProjection(this::ModelViewProjection)
    nothing
end

function initModelViewProjection(this::ModelViewProjection)
    initFieldsModelViewProjection(this)
end

function newModelViewProjection()
    this = ModelViewProjection()
    initModelViewProjection(this)
    this
end


function getInstance(::Type{ModelViewProjection})
        return staticGet_instance(ModelViewProjection)
end


function get(this::ModelViewProjection)
        return AllBinary.getInstance(NullUtil).NULL_FLOAT_ARRAY
end

