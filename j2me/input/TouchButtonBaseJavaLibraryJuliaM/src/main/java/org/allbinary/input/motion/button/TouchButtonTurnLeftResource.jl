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
mutable struct TouchButtonTurnLeftResource <: JObject
    TouchButtonTurnLeftResource() = new()
end

const TouchButtonTurnLeftResource_instanceValue = Ref{Any}(nothing)
const TouchButtonTurnLeftResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonTurnLeftResource})
    if !TouchButtonTurnLeftResource_instanceSet[]
        TouchButtonTurnLeftResource_instanceSet[] = true
        TouchButtonTurnLeftResource_instanceValue[] = newTouchButtonTurnLeftResource()
    end
    TouchButtonTurnLeftResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonTurnLeftResource}, value)
    TouchButtonTurnLeftResource_instanceSet[] = true
    TouchButtonTurnLeftResource_instanceValue[] = value
end

function initFieldsTouchButtonTurnLeftResource(this::TouchButtonTurnLeftResource)
    nothing
end


function getInstance(::Type{TouchButtonTurnLeftResource})
        return staticGet_instance(TouchButtonTurnLeftResource)
end


function initTouchButtonTurnLeftResource(this::TouchButtonTurnLeftResource)
        initTouchButtonResource(this, "/touch_button_turn_left_arrow_64_by_64.png", "/touch_button_turn_left_arrow_hint_64_by_64.png")
        nothing
end

function newTouchButtonTurnLeftResource()
    this = TouchButtonTurnLeftResource()
    initTouchButtonTurnLeftResource(this)
    this
end

