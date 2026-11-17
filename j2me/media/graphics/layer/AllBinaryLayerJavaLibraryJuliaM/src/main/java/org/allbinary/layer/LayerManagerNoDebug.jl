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
mutable struct LayerManagerNoDebug <: JObject
    LayerManagerNoDebug() = new()
end

const LayerManagerNoDebug_instanceValue = Ref{Any}(nothing)
const LayerManagerNoDebug_instanceSet = Ref(false)
function staticGet_instance(::Type{LayerManagerNoDebug})
    if !LayerManagerNoDebug_instanceSet[]
        LayerManagerNoDebug_instanceSet[] = true
        LayerManagerNoDebug_instanceValue[] = newLayerManagerNoDebug()
    end
    LayerManagerNoDebug_instanceValue[]
end
function staticSet_instance(::Type{LayerManagerNoDebug}, value)
    LayerManagerNoDebug_instanceSet[] = true
    LayerManagerNoDebug_instanceValue[] = value
end

function initFieldsLayerManagerNoDebug(this::LayerManagerNoDebug)
    nothing
end

function initLayerManagerNoDebug(this::LayerManagerNoDebug)
    initLayerManagerLoggingBase(this)
    initFieldsLayerManagerNoDebug(this)
end

function newLayerManagerNoDebug()
    this = LayerManagerNoDebug()
    initLayerManagerNoDebug(this)
    this
end


function getInstance(::Type{LayerManagerNoDebug})
        return staticGet_instance(LayerManagerNoDebug)
end

