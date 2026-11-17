#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.input.motion.button

mutable struct TouchScreenTypesFactory <: JObject
    FINGER::Any
    NOTOUCH::Any
    STYLUS::Any
    UNDEFINED::Any
    TouchScreenTypesFactory() = new()
end

const TouchScreenTypesFactory_instanceValue = Ref{Any}(nothing)
const TouchScreenTypesFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchScreenTypesFactory})
    if !TouchScreenTypesFactory_instanceSet[]
        TouchScreenTypesFactory_instanceSet[] = true
        TouchScreenTypesFactory_instanceValue[] = newTouchScreenTypesFactory()
    end
    TouchScreenTypesFactory_instanceValue[]
end
function staticSet_instance(::Type{TouchScreenTypesFactory}, value)
    TouchScreenTypesFactory_instanceSet[] = true
    TouchScreenTypesFactory_instanceValue[] = value
end

function initFieldsTouchScreenTypesFactory(this::TouchScreenTypesFactory)
    this.FINGER = nothing
    this.NOTOUCH = nothing
    this.STYLUS = nothing
    this.UNDEFINED = nothing
    this.FINGER = newTouchScreenType("Finger")
    this.NOTOUCH = newTouchScreenType("No Touch")
    this.STYLUS = newTouchScreenType("Stylus")
    this.UNDEFINED = newTouchScreenType("Undefined")
    nothing
end

function initTouchScreenTypesFactory(this::TouchScreenTypesFactory)
    initFieldsTouchScreenTypesFactory(this)
end

function newTouchScreenTypesFactory()
    this = TouchScreenTypesFactory()
    initTouchScreenTypesFactory(this)
    this
end


function getInstance(::Type{TouchScreenTypesFactory})
        return staticGet_instance(TouchScreenTypesFactory)
end

