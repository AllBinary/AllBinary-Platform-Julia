#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable.screen

mutable struct DisplayPointScalar <: JObject
    DisplayPointScalar() = new()
end

const DisplayPointScalar_instanceValue = Ref{Any}(nothing)
const DisplayPointScalar_instanceSet = Ref(false)
function staticGet_instance(::Type{DisplayPointScalar})
    if !DisplayPointScalar_instanceSet[]
        DisplayPointScalar_instanceSet[] = true
        DisplayPointScalar_instanceValue[] = newDisplayPointScalar()
    end
    DisplayPointScalar_instanceValue[]
end
function staticSet_instance(::Type{DisplayPointScalar}, value)
    DisplayPointScalar_instanceSet[] = true
    DisplayPointScalar_instanceValue[] = value
end

function initFieldsDisplayPointScalar(this::DisplayPointScalar)
    nothing
end

function initDisplayPointScalar(this::DisplayPointScalar)
    initFieldsDisplayPointScalar(this)
end

function newDisplayPointScalar()
    this = DisplayPointScalar()
    initDisplayPointScalar(this)
    this
end


function getInstance(::Type{DisplayPointScalar})
        return staticGet_instance(DisplayPointScalar)
end


function processX(this::DisplayPointScalar, value)
        return value
end


function processY(this::DisplayPointScalar, value)
        return value
end


function process(this::DisplayPointScalar, point)
        return point
end

