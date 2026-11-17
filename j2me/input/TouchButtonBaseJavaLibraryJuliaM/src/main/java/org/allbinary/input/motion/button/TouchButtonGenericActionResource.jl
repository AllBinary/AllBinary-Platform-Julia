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
mutable struct TouchButtonGenericActionResource <: JObject
    TouchButtonGenericActionResource() = new()
end

const TouchButtonGenericActionResource_instanceValue = Ref{Any}(nothing)
const TouchButtonGenericActionResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonGenericActionResource})
    if !TouchButtonGenericActionResource_instanceSet[]
        TouchButtonGenericActionResource_instanceSet[] = true
        TouchButtonGenericActionResource_instanceValue[] = newTouchButtonGenericActionResource()
    end
    TouchButtonGenericActionResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonGenericActionResource}, value)
    TouchButtonGenericActionResource_instanceSet[] = true
    TouchButtonGenericActionResource_instanceValue[] = value
end

function initFieldsTouchButtonGenericActionResource(this::TouchButtonGenericActionResource)
    nothing
end


function getInstance(::Type{TouchButtonGenericActionResource})
        return staticGet_instance(TouchButtonGenericActionResource)
end


function initTouchButtonGenericActionResource(this::TouchButtonGenericActionResource)
        initTouchButtonResource(this, "/touch_button_generic_action_64_by_64.png", "/touch_button_generic_action_hint_64_by_64.png")
        nothing
end

function newTouchButtonGenericActionResource()
    this = TouchButtonGenericActionResource()
    initTouchButtonGenericActionResource(this)
    this
end

