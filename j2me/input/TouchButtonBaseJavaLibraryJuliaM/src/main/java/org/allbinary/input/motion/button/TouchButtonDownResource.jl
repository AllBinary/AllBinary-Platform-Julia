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
mutable struct TouchButtonDownResource <: JObject
    TouchButtonDownResource() = new()
end

const TouchButtonDownResource_instanceValue = Ref{Any}(nothing)
const TouchButtonDownResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonDownResource})
    if !TouchButtonDownResource_instanceSet[]
        TouchButtonDownResource_instanceSet[] = true
        TouchButtonDownResource_instanceValue[] = newTouchButtonDownResource()
    end
    TouchButtonDownResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonDownResource}, value)
    TouchButtonDownResource_instanceSet[] = true
    TouchButtonDownResource_instanceValue[] = value
end

function initFieldsTouchButtonDownResource(this::TouchButtonDownResource)
    nothing
end


function getInstance(::Type{TouchButtonDownResource})
        return staticGet_instance(TouchButtonDownResource)
end


function initTouchButtonDownResource(this::TouchButtonDownResource)
        initTouchButtonResource(this, "/touch_button_down_arrow_64_by_64.png", "/touch_button_down_arrow_hint_64_by_64.png")
        nothing
end

function newTouchButtonDownResource()
    this = TouchButtonDownResource()
    initTouchButtonDownResource(this)
    this
end

