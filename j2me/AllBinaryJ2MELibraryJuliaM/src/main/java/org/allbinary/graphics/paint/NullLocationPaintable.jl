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
# package org.allbinary.graphics.paint

# extends LocationPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullLocationPaintable <: JObject
    NullLocationPaintable() = new()
end

const NullLocationPaintable_instanceCValue = Ref{Any}(nothing)
const NullLocationPaintable_instanceCSet = Ref(false)
function staticGet_instanceC(::Type{NullLocationPaintable})
    if !NullLocationPaintable_instanceCSet[]
        NullLocationPaintable_instanceCSet[] = true
        NullLocationPaintable_instanceCValue[] = newNullLocationPaintable()
    end
    NullLocationPaintable_instanceCValue[]
end
function staticSet_instanceC(::Type{NullLocationPaintable}, value)
    NullLocationPaintable_instanceCSet[] = true
    NullLocationPaintable_instanceCValue[] = value
end

function initFieldsNullLocationPaintable(this::NullLocationPaintable)
    nothing
end

function initNullLocationPaintable(this::NullLocationPaintable)
    initLocationPaintable(this)
    initFieldsNullLocationPaintable(this)
end

function newNullLocationPaintable()
    this = NullLocationPaintable()
    initNullLocationPaintable(this)
    this
end


function getInstance(::Type{NullLocationPaintable})
        return staticGet_instanceC(NullLocationPaintable)
end

