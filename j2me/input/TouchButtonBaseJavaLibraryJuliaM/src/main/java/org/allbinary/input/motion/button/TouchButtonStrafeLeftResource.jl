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
mutable struct TouchButtonStrafeLeftResource <: JObject
    TouchButtonStrafeLeftResource() = new()
end

const TouchButtonStrafeLeftResource_instanceValue = Ref{Any}(nothing)
const TouchButtonStrafeLeftResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonStrafeLeftResource})
    if !TouchButtonStrafeLeftResource_instanceSet[]
        TouchButtonStrafeLeftResource_instanceSet[] = true
        TouchButtonStrafeLeftResource_instanceValue[] = newTouchButtonStrafeLeftResource()
    end
    TouchButtonStrafeLeftResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonStrafeLeftResource}, value)
    TouchButtonStrafeLeftResource_instanceSet[] = true
    TouchButtonStrafeLeftResource_instanceValue[] = value
end

function initFieldsTouchButtonStrafeLeftResource(this::TouchButtonStrafeLeftResource)
    nothing
end


function getInstance(::Type{TouchButtonStrafeLeftResource})
        return staticGet_instance(TouchButtonStrafeLeftResource)
end


function initTouchButtonStrafeLeftResource(this::TouchButtonStrafeLeftResource)
        initTouchButtonResource(this, "/touch_button_strafe_left_arrow_64_by_64.png", "/touch_button_strafe_left_arrow_hint_64_by_64.png")
        nothing
end

function newTouchButtonStrafeLeftResource()
    this = TouchButtonStrafeLeftResource()
    initTouchButtonStrafeLeftResource(this)
    this
end

