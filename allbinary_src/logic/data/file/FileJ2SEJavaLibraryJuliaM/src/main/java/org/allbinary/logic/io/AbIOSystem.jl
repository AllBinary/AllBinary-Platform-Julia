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
# package org.allbinary.logic.io

mutable struct AbIOSystem <: JObject
    type_::Any
    AbIOSystem() = new()
end

const AbIOSystem_instanceValue = Ref{Any}(nothing)
const AbIOSystem_instanceSet = Ref(false)
function staticGet_instance(::Type{AbIOSystem})
    if !AbIOSystem_instanceSet[]
        AbIOSystem_instanceSet[] = true
        AbIOSystem_instanceValue[] = newAbIOSystem()
    end
    AbIOSystem_instanceValue[]
end
function staticSet_instance(::Type{AbIOSystem}, value)
    AbIOSystem_instanceSet[] = true
    AbIOSystem_instanceValue[] = value
end

function initFieldsAbIOSystem(this::AbIOSystem)
    this.type_ = nothing
    this.type_ = "java.io"
    nothing
end

function initAbIOSystem(this::AbIOSystem)
    initFieldsAbIOSystem(this)
end

function newAbIOSystem()
    this = AbIOSystem()
    initAbIOSystem(this)
    this
end


function getInstance(::Type{AbIOSystem})
        return staticGet_instance(AbIOSystem)
end


function getType(this::AbIOSystem)
        return this.type_
end


function isType(this::AbIOSystem, type_)
        if jCompareTo(this.type_, type_) == Int32(0)
            return true
        else
            return false
        end
end

