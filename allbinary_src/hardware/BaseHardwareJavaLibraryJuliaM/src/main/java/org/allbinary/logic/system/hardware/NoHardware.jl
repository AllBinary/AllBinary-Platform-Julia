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
# package org.allbinary.logic.system.hardware

mutable struct NoHardware <: JObject
    NoHardware() = new()
end

const NoHardware_instanceValue = Ref{Any}(nothing)
const NoHardware_instanceSet = Ref(false)
function staticGet_instance(::Type{NoHardware})
    if !NoHardware_instanceSet[]
        NoHardware_instanceSet[] = true
        NoHardware_instanceValue[] = newNoHardware()
    end
    NoHardware_instanceValue[]
end
function staticSet_instance(::Type{NoHardware}, value)
    NoHardware_instanceSet[] = true
    NoHardware_instanceValue[] = value
end

function initFieldsNoHardware(this::NoHardware)
    nothing
end

function initNoHardware(this::NoHardware)
    initFieldsNoHardware(this)
end

function newNoHardware()
    this = NoHardware()
    initNoHardware(this)
    this
end


function getInstance(::Type{NoHardware})
        return staticGet_instance(NoHardware)
end


function getComponent(this::NoHardware, index)
        return AllBinary.getInstance(NoHardwareComponent)
end


function toString(this::NoHardware)
        return "No Hardware"
end


function compareTo(this::NoHardware, hardwareInterface)
        return true
end


function difference(this::NoHardware, hardwareInterface)
        return AllBinary.getInstance(StdUtil).NULL_TABLE
end

