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
mutable struct TouchButtonBlankResource <: JObject
    TouchButtonBlankResource() = new()
end

const TouchButtonBlankResource_instanceValue = Ref{Any}(nothing)
const TouchButtonBlankResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonBlankResource})
    if !TouchButtonBlankResource_instanceSet[]
        TouchButtonBlankResource_instanceSet[] = true
        TouchButtonBlankResource_instanceValue[] = newTouchButtonBlankResource()
    end
    TouchButtonBlankResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonBlankResource}, value)
    TouchButtonBlankResource_instanceSet[] = true
    TouchButtonBlankResource_instanceValue[] = value
end

function initFieldsTouchButtonBlankResource(this::TouchButtonBlankResource)
    nothing
end


function getInstance(::Type{TouchButtonBlankResource})
        return staticGet_instance(TouchButtonBlankResource)
end


function initTouchButtonBlankResource(this::TouchButtonBlankResource)
        initTouchButtonResource(this, "/touch_button_64_by_64.png", "/touch_button_hint_64_by_64.png")
        nothing
end

function newTouchButtonBlankResource()
    this = TouchButtonBlankResource()
    initTouchButtonBlankResource(this)
    this
end

