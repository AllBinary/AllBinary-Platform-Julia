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
mutable struct TouchButtonStrafeRightResource <: JObject
    TouchButtonStrafeRightResource() = new()
end

const TouchButtonStrafeRightResource_instanceValue = Ref{Any}(nothing)
const TouchButtonStrafeRightResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonStrafeRightResource})
    if !TouchButtonStrafeRightResource_instanceSet[]
        TouchButtonStrafeRightResource_instanceSet[] = true
        TouchButtonStrafeRightResource_instanceValue[] = newTouchButtonStrafeRightResource()
    end
    TouchButtonStrafeRightResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonStrafeRightResource}, value)
    TouchButtonStrafeRightResource_instanceSet[] = true
    TouchButtonStrafeRightResource_instanceValue[] = value
end

function initFieldsTouchButtonStrafeRightResource(this::TouchButtonStrafeRightResource)
    nothing
end


function getInstance(::Type{TouchButtonStrafeRightResource})
        return staticGet_instance(TouchButtonStrafeRightResource)
end


function initTouchButtonStrafeRightResource(this::TouchButtonStrafeRightResource)
        initTouchButtonResource(this, "/touch_button_strafe_right_arrow_64_by_64.png", "/touch_button_strafe_right_arrow_hint_64_by_64.png")
        nothing
end

function newTouchButtonStrafeRightResource()
    this = TouchButtonStrafeRightResource()
    initTouchButtonStrafeRightResource(this)
    this
end

