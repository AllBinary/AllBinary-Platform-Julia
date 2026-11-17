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

mutable struct TouchScreenTypeFactory <: JObject
    TouchScreenTypeFactory() = new()
end

const TouchScreenTypeFactory_instanceValue = Ref{Any}(nothing)
const TouchScreenTypeFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchScreenTypeFactory})
    if !TouchScreenTypeFactory_instanceSet[]
        TouchScreenTypeFactory_instanceSet[] = true
        TouchScreenTypeFactory_instanceValue[] = newTouchScreenTypeFactory()
    end
    TouchScreenTypeFactory_instanceValue[]
end
function staticSet_instance(::Type{TouchScreenTypeFactory}, value)
    TouchScreenTypeFactory_instanceSet[] = true
    TouchScreenTypeFactory_instanceValue[] = value
end

function initFieldsTouchScreenTypeFactory(this::TouchScreenTypeFactory)
    nothing
end

function initTouchScreenTypeFactory(this::TouchScreenTypeFactory)
    initFieldsTouchScreenTypeFactory(this)
end

function newTouchScreenTypeFactory()
    this = TouchScreenTypeFactory()
    initTouchScreenTypeFactory(this)
    this
end


function getInstance(::Type{TouchScreenTypeFactory})
        return staticGet_instance(TouchScreenTypeFactory)
end


function TouchScreenTypeFactory(this::TouchScreenTypeFactory)
        local touchScreenFactory = AllBinary.getInstance(TouchScreenFactory)
        AllBinary.setTouch(touchScreenFactory, true)
        nothing
end

