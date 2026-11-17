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
mutable struct TouchButtonUpResource <: JObject
    TouchButtonUpResource() = new()
end

const TouchButtonUpResource_instanceValue = Ref{Any}(nothing)
const TouchButtonUpResource_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchButtonUpResource})
    if !TouchButtonUpResource_instanceSet[]
        TouchButtonUpResource_instanceSet[] = true
        TouchButtonUpResource_instanceValue[] = newTouchButtonUpResource()
    end
    TouchButtonUpResource_instanceValue[]
end
function staticSet_instance(::Type{TouchButtonUpResource}, value)
    TouchButtonUpResource_instanceSet[] = true
    TouchButtonUpResource_instanceValue[] = value
end

function initFieldsTouchButtonUpResource(this::TouchButtonUpResource)
    nothing
end


function getInstance(::Type{TouchButtonUpResource})
        return staticGet_instance(TouchButtonUpResource)
end


function initTouchButtonUpResource(this::TouchButtonUpResource)
        initTouchButtonResource(this, "/touch_button_up_arrow_64_by_64.png", "/touch_button_up_arrow_hint_64_by_64.png")
        nothing
end

function newTouchButtonUpResource()
    this = TouchButtonUpResource()
    initTouchButtonUpResource(this)
    this
end

