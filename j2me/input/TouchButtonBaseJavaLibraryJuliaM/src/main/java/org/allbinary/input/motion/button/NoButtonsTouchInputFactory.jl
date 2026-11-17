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

mutable struct NoButtonsTouchInputFactory <: JObject
    NoButtonsTouchInputFactory() = new()
end

const NoButtonsTouchInputFactory_instanceValue = Ref{Any}(nothing)
const NoButtonsTouchInputFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{NoButtonsTouchInputFactory})
    if !NoButtonsTouchInputFactory_instanceSet[]
        NoButtonsTouchInputFactory_instanceSet[] = true
        NoButtonsTouchInputFactory_instanceValue[] = newBaseTouchInput()
    end
    NoButtonsTouchInputFactory_instanceValue[]
end
function staticSet_instance(::Type{NoButtonsTouchInputFactory}, value)
    NoButtonsTouchInputFactory_instanceSet[] = true
    NoButtonsTouchInputFactory_instanceValue[] = value
end

function initFieldsNoButtonsTouchInputFactory(this::NoButtonsTouchInputFactory)
    nothing
end

function initNoButtonsTouchInputFactory(this::NoButtonsTouchInputFactory)
    initFieldsNoButtonsTouchInputFactory(this)
end

function newNoButtonsTouchInputFactory()
    this = NoButtonsTouchInputFactory()
    initNoButtonsTouchInputFactory(this)
    this
end


function getInstance(::Type{NoButtonsTouchInputFactory})
        return staticGet_instance(NoButtonsTouchInputFactory)
end

