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

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullPaintable <: JObject
    NullPaintable() = new()
end

const NullPaintable_SINGLETONValue = Ref{Any}(nothing)
const NullPaintable_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NullPaintable})
    if !NullPaintable_SINGLETONSet[]
        NullPaintable_SINGLETONSet[] = true
        NullPaintable_SINGLETONValue[] = newNullPaintable()
    end
    NullPaintable_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NullPaintable}, value)
    NullPaintable_SINGLETONSet[] = true
    NullPaintable_SINGLETONValue[] = value
end

function initFieldsNullPaintable(this::NullPaintable)
    nothing
end


function initNullPaintable(this::NullPaintable)
        initPaintable(this)
        initFieldsNullPaintable(this)
        nothing
        nothing
end

function newNullPaintable()
    this = NullPaintable()
    initNullPaintable(this)
    this
end


function getInstance(::Type{NullPaintable})
        return staticGet_SINGLETON(NullPaintable)
end

