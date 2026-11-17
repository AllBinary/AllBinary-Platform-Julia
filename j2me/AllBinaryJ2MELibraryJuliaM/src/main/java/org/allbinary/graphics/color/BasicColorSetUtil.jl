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
# package org.allbinary.graphics.color

mutable struct BasicColorSetUtil <: JObject
    BasicColorSetUtil() = new()
end

const BasicColorSetUtil_instanceValue = Ref{Any}(nothing)
const BasicColorSetUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicColorSetUtil})
    if !BasicColorSetUtil_instanceSet[]
        BasicColorSetUtil_instanceSet[] = true
        BasicColorSetUtil_instanceValue[] = newBasicColorSetUtil()
    end
    BasicColorSetUtil_instanceValue[]
end
function staticSet_instance(::Type{BasicColorSetUtil}, value)
    BasicColorSetUtil_instanceSet[] = true
    BasicColorSetUtil_instanceValue[] = value
end

function initFieldsBasicColorSetUtil(this::BasicColorSetUtil)
    nothing
end


function getInstance(::Type{BasicColorSetUtil})
        return staticGet_instance(BasicColorSetUtil)
end


function initBasicColorSetUtil(this::BasicColorSetUtil)
        initFieldsBasicColorSetUtil(this)
        nothing
        nothing
end

function newBasicColorSetUtil()
    this = BasicColorSetUtil()
    initBasicColorSetUtil(this)
    this
end


function setBasicColorP(this::BasicColorSetUtil, graphics, basicColor)
        AllBinary.setColor(graphics, AllBinary.intValue(basicColor))
        nothing
end


function setBasicColorP3(this::BasicColorSetUtil, graphics, basicColor, value)
        AllBinary.setColor(graphics, value)
        nothing
end

