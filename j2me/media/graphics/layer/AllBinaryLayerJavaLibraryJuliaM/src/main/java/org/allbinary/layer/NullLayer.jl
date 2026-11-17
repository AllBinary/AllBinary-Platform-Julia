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

# extends Layer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullLayer <: JObject
    NullLayer() = new()
end

const NullLayer_instanceValue = Ref{Any}(nothing)
const NullLayer_instanceSet = Ref(false)
function staticGet_instance(::Type{NullLayer})
    if !NullLayer_instanceSet[]
        NullLayer_instanceSet[] = true
        NullLayer_instanceValue[] = newNullLayer()
    end
    NullLayer_instanceValue[]
end
function staticSet_instance(::Type{NullLayer}, value)
    NullLayer_instanceSet[] = true
    NullLayer_instanceValue[] = value
end

function initFieldsNullLayer(this::NullLayer)
    nothing
end


function getInstance(::Type{NullLayer})
        return staticGet_instance(NullLayer)
end


function initNullLayer(this::NullLayer)
        initLayer(this, Int32(0), Int32(0))
        nothing
end

function newNullLayer()
    this = NullLayer()
    initNullLayer(this)
    this
end


function paint(this::NullLayer, graphics)
        nothing
        nothing
end

