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
# package org.allbinary.input.motion.button

# extends TouchButtonResource: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TouchButtonReverseResource <: JObject
    TouchButtonReverseResource() = new()
end

const TouchButtonReverseResource_instanceValue = Ref{Any}(nothing)
const TouchButtonReverseResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonReverseResource})
    if !TouchButtonReverseResource_instanceSet[]
        TouchButtonReverseResource_instanceSet[] = true
        TouchButtonReverseResource_instanceValue[] = newTouchButtonReverseResource()
    end
    TouchButtonReverseResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonReverseResource}, value)
    TouchButtonReverseResource_instanceSet[] = true
    TouchButtonReverseResource_instanceValue[] = value
end

function initFieldsTouchButtonReverseResource(this::TouchButtonReverseResource)
    nothing
end


function getInstance(::Type{TouchButtonReverseResource})
        return staticGet_instance(TouchButtonReverseResource)
end


function initTouchButtonReverseResource(this::TouchButtonReverseResource)
        initTouchButtonResource(this, "/touch_button_reverse_64_by_64.png", "/touch_button_reverse_hint_64_by_64.png")
        nothing
end

function newTouchButtonReverseResource()
    this = TouchButtonReverseResource()
    initTouchButtonReverseResource(this)
    this
end

