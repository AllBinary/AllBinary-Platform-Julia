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

# extends InitUpdatePaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullInitUpdatePaintable <: JObject
    NullInitUpdatePaintable() = new()
end

const NullInitUpdatePaintable_SINGLETONValue = Ref{Any}(nothing)
const NullInitUpdatePaintable_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NullInitUpdatePaintable})
    if !NullInitUpdatePaintable_SINGLETONSet[]
        NullInitUpdatePaintable_SINGLETONSet[] = true
        NullInitUpdatePaintable_SINGLETONValue[] = newNullInitUpdatePaintable()
    end
    NullInitUpdatePaintable_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NullInitUpdatePaintable}, value)
    NullInitUpdatePaintable_SINGLETONSet[] = true
    NullInitUpdatePaintable_SINGLETONValue[] = value
end

function initFieldsNullInitUpdatePaintable(this::NullInitUpdatePaintable)
    nothing
end


function initNullInitUpdatePaintable(this::NullInitUpdatePaintable)
        initInitUpdatePaintable(this)
        initFieldsNullInitUpdatePaintable(this)
        nothing
        nothing
end

function newNullInitUpdatePaintable()
    this = NullInitUpdatePaintable()
    initNullInitUpdatePaintable(this)
    this
end


function getInstance(::Type{NullInitUpdatePaintable})
        return staticGet_SINGLETON(NullInitUpdatePaintable)
end

