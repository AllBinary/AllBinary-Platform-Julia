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
mutable struct TouchButtonFireResource <: JObject
    TouchButtonFireResource() = new()
end

const TouchButtonFireResource_instanceValue = Ref{Any}(nothing)
const TouchButtonFireResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonFireResource})
    if !TouchButtonFireResource_instanceSet[]
        TouchButtonFireResource_instanceSet[] = true
        TouchButtonFireResource_instanceValue[] = newTouchButtonFireResource()
    end
    TouchButtonFireResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonFireResource}, value)
    TouchButtonFireResource_instanceSet[] = true
    TouchButtonFireResource_instanceValue[] = value
end

function initFieldsTouchButtonFireResource(this::TouchButtonFireResource)
    nothing
end


function getInstance(::Type{TouchButtonFireResource})
        return staticGet_instance(TouchButtonFireResource)
end


function initTouchButtonFireResource(this::TouchButtonFireResource)
        initTouchButtonResource(this, "/touch_button_fire_64_by_64.png", "/touch_button_fire_hint_64_by_64.png")
        nothing
end

function newTouchButtonFireResource()
    this = TouchButtonFireResource()
    initTouchButtonFireResource(this)
    this
end

