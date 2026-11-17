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
# package org.allbinary.graphics

mutable struct PointFactory <: JObject
    ZERO_ZERO::Any
    PointFactory() = new()
end

const PointFactory_instanceValue = Ref{Any}(nothing)
const PointFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{PointFactory})
    if !PointFactory_instanceSet[]
        PointFactory_instanceSet[] = true
        PointFactory_instanceValue[] = newPointFactory()
    end
    PointFactory_instanceValue[]
end
function staticSet_instance(::Type{PointFactory}, value)
    PointFactory_instanceSet[] = true
    PointFactory_instanceValue[] = value
end

function initFieldsPointFactory(this::PointFactory)
    this.ZERO_ZERO = nothing
    this.ZERO_ZERO = AllBinary.createXYZ(this, Int32(0), Int32(0), Int32(0))
    nothing
end


function getInstance(::Type{PointFactory})
        return staticGet_instance(PointFactory)
end


function init(this::PointFactory)
        nothing
        nothing
end


function initPointFactory(this::PointFactory)
        initFieldsPointFactory(this)
        nothing
        nothing
end

function newPointFactory()
    this = PointFactory()
    initPointFactory(this)
    this
end


function createXY(this::PointFactory, x, y)
        return newGPoint(x, y, Int32(0))
end


function createXYZ(this::PointFactory, x, y, z)
        return newGPoint(x, y, z)
end

