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
# package org.allbinary.game.configuration.feature

mutable struct TouchFeatureFactory <: JObject
    TOUCH_ENABLED::Any
    SHOW_SCREEN_BUTTONS::Any
    AUTO_HIDE_SHOW_SCREEN_BUTTONS::Any
    HIDE_SCREEN_BUTTONS::Any
    TouchFeatureFactory() = new()
end

const TouchFeatureFactory_instanceValue = Ref{Any}(nothing)
const TouchFeatureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{TouchFeatureFactory})
    if !TouchFeatureFactory_instanceSet[]
        TouchFeatureFactory_instanceSet[] = true
        TouchFeatureFactory_instanceValue[] = newTouchFeatureFactory()
    end
    TouchFeatureFactory_instanceValue[]
end
function staticSet_instance(::Type{TouchFeatureFactory}, value)
    TouchFeatureFactory_instanceSet[] = true
    TouchFeatureFactory_instanceValue[] = value
end

function initFieldsTouchFeatureFactory(this::TouchFeatureFactory)
    this.TOUCH_ENABLED = nothing
    this.SHOW_SCREEN_BUTTONS = nothing
    this.AUTO_HIDE_SHOW_SCREEN_BUTTONS = nothing
    this.HIDE_SCREEN_BUTTONS = nothing
    this.TOUCH_ENABLED = newTouchFeature("Touch Enabled")
    this.SHOW_SCREEN_BUTTONS = newTouchFeature("Show")
    this.AUTO_HIDE_SHOW_SCREEN_BUTTONS = newTouchFeature("Auto Hide (One Level)")
    this.HIDE_SCREEN_BUTTONS = newTouchFeature("Hide")
    nothing
end


function getInstance(::Type{TouchFeatureFactory})
        return staticGet_instance(TouchFeatureFactory)
end


function initTouchFeatureFactory(this::TouchFeatureFactory)
        initFieldsTouchFeatureFactory(this)
        nothing
        nothing
end

function newTouchFeatureFactory()
    this = TouchFeatureFactory()
    initTouchFeatureFactory(this)
    this
end

