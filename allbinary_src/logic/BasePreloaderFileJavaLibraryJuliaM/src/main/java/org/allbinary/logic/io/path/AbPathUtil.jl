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
# package org.allbinary.logic.io.path

mutable struct AbPathUtil <: JObject
    NO_ABPATH::Any
    AbPathUtil() = new()
end

const AbPathUtil_instanceValue = Ref{Any}(nothing)
const AbPathUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{AbPathUtil})
    if !AbPathUtil_instanceSet[]
        AbPathUtil_instanceSet[] = true
        AbPathUtil_instanceValue[] = newAbPathUtil()
    end
    AbPathUtil_instanceValue[]
end
function staticSet_instance(::Type{AbPathUtil}, value)
    AbPathUtil_instanceSet[] = true
    AbPathUtil_instanceValue[] = value
end

function initFieldsAbPathUtil(this::AbPathUtil)
    this.NO_ABPATH = nothing
    this.NO_ABPATH = AllBinary.createAbPath(AbPath)
    nothing
end

function initAbPathUtil(this::AbPathUtil)
    initFieldsAbPathUtil(this)
end

function newAbPathUtil()
    this = AbPathUtil()
    initAbPathUtil(this)
    this
end


function getInstance(::Type{AbPathUtil})
        return staticGet_instance(AbPathUtil)
end

