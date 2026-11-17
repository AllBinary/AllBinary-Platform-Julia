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
# package org.allbinary.logic.system.hardware.components.interfaces

mutable struct NoHardwareComponent <: JObject
    NoHardwareComponent() = new()
end

const NoHardwareComponent_instanceValue = Ref{Any}(nothing)
const NoHardwareComponent_instanceSet = Ref(false)
function staticGet_instance(::Type{NoHardwareComponent})
    if !NoHardwareComponent_instanceSet[]
        NoHardwareComponent_instanceSet[] = true
        NoHardwareComponent_instanceValue[] = newNoHardwareComponent()
    end
    NoHardwareComponent_instanceValue[]
end
function staticSet_instance(::Type{NoHardwareComponent}, value)
    NoHardwareComponent_instanceSet[] = true
    NoHardwareComponent_instanceValue[] = value
end

function initFieldsNoHardwareComponent(this::NoHardwareComponent)
    nothing
end

function initNoHardwareComponent(this::NoHardwareComponent)
    initFieldsNoHardwareComponent(this)
end

function newNoHardwareComponent()
    this = NoHardwareComponent()
    initNoHardwareComponent(this)
    this
end


function getInstance(::Type{NoHardwareComponent})
        return staticGet_instance(NoHardwareComponent)
end


function compareTo(this::NoHardwareComponent, componentInterface)
        if this == componentInterface
            return true
        end
        return false
end


function toString(this::NoHardwareComponent)
        return AllBinary.getInstance(StringUtil).NULL_STRING
end

