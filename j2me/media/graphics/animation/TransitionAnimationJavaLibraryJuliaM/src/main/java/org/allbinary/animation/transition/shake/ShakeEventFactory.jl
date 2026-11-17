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
# package org.allbinary.animation.transition.shake

mutable struct ShakeEventFactory <: JObject
    MICRO::Any
    SMALL::Any
    MEDIUM::Any
    LARGE::Any
    ShakeEventFactory() = new()
end

const ShakeEventFactory_instanceValue = Ref{Any}(nothing)
const ShakeEventFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ShakeEventFactory})
    if !ShakeEventFactory_instanceSet[]
        ShakeEventFactory_instanceSet[] = true
        ShakeEventFactory_instanceValue[] = newShakeEventFactory()
    end
    ShakeEventFactory_instanceValue[]
end
function staticSet_instance(::Type{ShakeEventFactory}, value)
    ShakeEventFactory_instanceSet[] = true
    ShakeEventFactory_instanceValue[] = value
end

function initFieldsShakeEventFactory(this::ShakeEventFactory)
    this.MICRO = nothing
    this.SMALL = nothing
    this.MEDIUM = nothing
    this.LARGE = nothing
    this.MICRO = newShakeEvent()
    this.SMALL = newShakeEvent()
    this.MEDIUM = newShakeEvent()
    this.LARGE = newShakeEvent()
    nothing
end

function initShakeEventFactory(this::ShakeEventFactory)
    initFieldsShakeEventFactory(this)
end

function newShakeEventFactory()
    this = ShakeEventFactory()
    initShakeEventFactory(this)
    this
end


function getInstance(::Type{ShakeEventFactory})
        return staticGet_instance(ShakeEventFactory)
end


function init(this::ShakeEventFactory)
        nothing
        nothing
end

