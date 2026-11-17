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
mutable struct TouchButtonTurnRightResource <: JObject
    TouchButtonTurnRightResource() = new()
end

const TouchButtonTurnRightResource_instanceValue = Ref{Any}(nothing)
const TouchButtonTurnRightResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonTurnRightResource})
    if !TouchButtonTurnRightResource_instanceSet[]
        TouchButtonTurnRightResource_instanceSet[] = true
        TouchButtonTurnRightResource_instanceValue[] = newTouchButtonTurnRightResource()
    end
    TouchButtonTurnRightResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonTurnRightResource}, value)
    TouchButtonTurnRightResource_instanceSet[] = true
    TouchButtonTurnRightResource_instanceValue[] = value
end

function initFieldsTouchButtonTurnRightResource(this::TouchButtonTurnRightResource)
    nothing
end


function getInstance(::Type{TouchButtonTurnRightResource})
        return staticGet_instance(TouchButtonTurnRightResource)
end


function initTouchButtonTurnRightResource(this::TouchButtonTurnRightResource)
        initTouchButtonResource(this, "/touch_button_turn_right_arrow_64_by_64.png", "/touch_button_turn_right_arrow_hint_64_by_64.png")
        nothing
end

function newTouchButtonTurnRightResource()
    this = TouchButtonTurnRightResource()
    initTouchButtonTurnRightResource(this)
    this
end

