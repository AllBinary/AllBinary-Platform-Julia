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
# package org.allbinary.logic.io.path

mutable struct AbPathData <: JObject
    EXTENSION_SEP::Any
    SEPARATORCHAR::UInt16
    SEPARATOR::Any
    AbPathData() = new()
end

const AbPathData_instanceValue = Ref{Any}(nothing)
const AbPathData_instanceSet = Ref(false)
function staticGet_instance(::Type{AbPathData})
    if !AbPathData_instanceSet[]
        AbPathData_instanceSet[] = true
        AbPathData_instanceValue[] = newAbPathData()
    end
    AbPathData_instanceValue[]
end
function staticSet_instance(::Type{AbPathData}, value)
    AbPathData_instanceSet[] = true
    AbPathData_instanceValue[] = value
end

function initFieldsAbPathData(this::AbPathData)
    this.EXTENSION_SEP = nothing
    this.SEPARATORCHAR = UInt16(0)
    this.SEPARATOR = nothing
    this.EXTENSION_SEP = AllBinary.getInstance(CommonSeps).PERIOD
    this.SEPARATORCHAR = UInt16('/')
    this.SEPARATOR = AllBinary.getInstance(CommonSeps).FORWARD_SLASH
    nothing
end


function getInstance(::Type{AbPathData})
        return staticGet_instance(AbPathData)
end


function initAbPathData(this::AbPathData)
        initFieldsAbPathData(this)
        nothing
        nothing
end

function newAbPathData()
    this = AbPathData()
    initAbPathData(this)
    this
end

