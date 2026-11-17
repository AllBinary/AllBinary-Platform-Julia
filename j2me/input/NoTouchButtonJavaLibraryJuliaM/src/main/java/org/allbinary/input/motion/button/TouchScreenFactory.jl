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

mutable struct TouchScreenFactory <: JObject
    multiTouch::Bool
    touch::Bool
    touchScreenType::Any
    TouchScreenFactory() = new()
end

const TouchScreenFactory_SINGLETONValue = Ref{Any}(nothing)
const TouchScreenFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{TouchScreenFactory})
    if !TouchScreenFactory_SINGLETONSet[]
        TouchScreenFactory_SINGLETONSet[] = true
        TouchScreenFactory_SINGLETONValue[] = newTouchScreenFactory()
    end
    TouchScreenFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{TouchScreenFactory}, value)
    TouchScreenFactory_SINGLETONSet[] = true
    TouchScreenFactory_SINGLETONValue[] = value
end

function initFieldsTouchScreenFactory(this::TouchScreenFactory)
    this.multiTouch = false
    this.touch = false
    this.touchScreenType = nothing
    this.multiTouch = false
    this.touch = false
    this.touchScreenType = AllBinary.getInstance(TouchScreenTypesFactory).NOTOUCH
    nothing
end


function initTouchScreenFactory(this::TouchScreenFactory)
        initFieldsTouchScreenFactory(this)
        nothing
        nothing
end

function newTouchScreenFactory()
    this = TouchScreenFactory()
    initTouchScreenFactory(this)
    this
end


function getInstance(::Type{TouchScreenFactory})
        return staticGet_SINGLETON(TouchScreenFactory)
end


function isMultiTouch(this::TouchScreenFactory)
        return this.multiTouch
end


function setTouch(this::TouchScreenFactory, touch)
        nothing
        nothing
end


function isTouch(this::TouchScreenFactory)
        return this.touch
end


function getTouchScreenType(this::TouchScreenFactory)
        return this.touchScreenType
end

