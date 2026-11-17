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
# package org.allbinary.graphics

mutable struct RectangleFactory <: JObject
    RectangleFactory() = new()
end

const RectangleFactory_SINGLETONValue = Ref{Any}(nothing)
const RectangleFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{RectangleFactory})
    if !RectangleFactory_SINGLETONSet[]
        RectangleFactory_SINGLETONSet[] = true
        RectangleFactory_SINGLETONValue[] = newRectangle(AllBinary.getInstance(PointFactory).ZERO_ZERO, Int32(0), Int32(0))
    end
    RectangleFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{RectangleFactory}, value)
    RectangleFactory_SINGLETONSet[] = true
    RectangleFactory_SINGLETONValue[] = value
end
const RectangleFactory_ARRAY_OF_ARRAYSValue = Ref{Any}(nothing)
const RectangleFactory_ARRAY_OF_ARRAYSSet = Ref(false)
function staticGet_ARRAY_OF_ARRAYS(::Type{RectangleFactory})
    if !RectangleFactory_ARRAY_OF_ARRAYSSet[]
        RectangleFactory_ARRAY_OF_ARRAYSSet[] = true
        RectangleFactory_ARRAY_OF_ARRAYSValue[] = jNewArrayOf(Vector{Any}, Int32(0), () -> jNewArray(Any, Int32(0), nothing))
    end
    RectangleFactory_ARRAY_OF_ARRAYSValue[]
end
function staticSet_ARRAY_OF_ARRAYS(::Type{RectangleFactory}, value)
    RectangleFactory_ARRAY_OF_ARRAYSSet[] = true
    RectangleFactory_ARRAY_OF_ARRAYSValue[] = value
end

function initFieldsRectangleFactory(this::RectangleFactory)
    nothing
end

function initRectangleFactory(this::RectangleFactory)
    initFieldsRectangleFactory(this)
end

function newRectangleFactory()
    this = RectangleFactory()
    initRectangleFactory(this)
    this
end

