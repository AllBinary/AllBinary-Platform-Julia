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
mutable struct TouchButtonStartResource <: JObject
    TouchButtonStartResource() = new()
end

const TouchButtonStartResource_instanceValue = Ref{Any}(nothing)
const TouchButtonStartResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonStartResource})
    if !TouchButtonStartResource_instanceSet[]
        TouchButtonStartResource_instanceSet[] = true
        TouchButtonStartResource_instanceValue[] = newTouchButtonStartResource()
    end
    TouchButtonStartResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonStartResource}, value)
    TouchButtonStartResource_instanceSet[] = true
    TouchButtonStartResource_instanceValue[] = value
end

function initFieldsTouchButtonStartResource(this::TouchButtonStartResource)
    nothing
end


function getInstance(::Type{TouchButtonStartResource})
        return staticGet_instance(TouchButtonStartResource)
end


function initTouchButtonStartResource(this::TouchButtonStartResource)
        initTouchButtonResource(this, "/touch_button_start_64_by_64.png", "/touch_button_start_hint_64_by_64.png")
        nothing
end

function newTouchButtonStartResource()
    this = TouchButtonStartResource()
    initTouchButtonStartResource(this)
    this
end

