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
# package org.allbinary.math

mutable struct AngleIncrementInfoFactory <: JObject
    angleIncrementInfo::Any
    AngleIncrementInfoFactory() = new()
end

const AngleIncrementInfoFactory_instanceValue = Ref{Any}(nothing)
const AngleIncrementInfoFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{AngleIncrementInfoFactory})
    if !AngleIncrementInfoFactory_instanceSet[]
        AngleIncrementInfoFactory_instanceSet[] = true
        AngleIncrementInfoFactory_instanceValue[] = newAngleIncrementInfoFactory()
    end
    AngleIncrementInfoFactory_instanceValue[]
end
function staticSet_instance(::Type{AngleIncrementInfoFactory}, value)
    AngleIncrementInfoFactory_instanceSet[] = true
    AngleIncrementInfoFactory_instanceValue[] = value
end

function initFieldsAngleIncrementInfoFactory(this::AngleIncrementInfoFactory)
    this.angleIncrementInfo = nothing
    this.angleIncrementInfo = jNewArray(Any, ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32), nothing)
    nothing
end

function initAngleIncrementInfoFactory(this::AngleIncrementInfoFactory)
    initFieldsAngleIncrementInfoFactory(this)
end

function newAngleIncrementInfoFactory()
    this = AngleIncrementInfoFactory()
    initAngleIncrementInfoFactory(this)
    this
end


function getInstance(::Type{AngleIncrementInfoFactory})
        return staticGet_instance(AngleIncrementInfoFactory)
end


function getAt(this::AngleIncrementInfoFactory, angleIncrement)
        local halfAngleIncrement::Int32 = (((angleIncrement) % Int32) >> Int32(1))
        local angleIncrementInfo = nothing
        local angleIncrementInfoCanBeNull = this.angleIncrementInfo[halfAngleIncrement + 1]
        if angleIncrementInfoCanBeNull === nothing
            angleIncrementInfo = newAngleIncrementInfo(angleIncrement)
            this.angleIncrementInfo[halfAngleIncrement + 1] = angleIncrementInfo
            return angleIncrementInfo
        else
            angleIncrementInfo = angleIncrementInfoCanBeNull
        end
        return angleIncrementInfo
end

