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
# package org.allbinary.game.physics.friction

mutable struct FrictionData <: JObject
    FrictionData() = new()
end

const FrictionData_FRICTION_DENOMINATORValue = Ref{Any}(nothing)
const FrictionData_FRICTION_DENOMINATORSet = Ref(false)
function staticGet_FRICTION_DENOMINATOR(::Type{FrictionData})
    if !FrictionData_FRICTION_DENOMINATORSet[]
        FrictionData_FRICTION_DENOMINATORSet[] = true
        FrictionData_FRICTION_DENOMINATORValue[] = Int32(100)
    end
    FrictionData_FRICTION_DENOMINATORValue[]
end
function staticSet_FRICTION_DENOMINATOR(::Type{FrictionData}, value)
    FrictionData_FRICTION_DENOMINATORSet[] = true
    FrictionData_FRICTION_DENOMINATORValue[] = value
end

function initFieldsFrictionData(this::FrictionData)
    nothing
end


function initFrictionData(this::FrictionData)
        initFieldsFrictionData(this)
        nothing
        nothing
end

function newFrictionData()
    this = FrictionData()
    initFrictionData(this)
    this
end


function getFrictionDenominator(::Type{FrictionData})
        return staticGet_FRICTION_DENOMINATOR(FrictionData)
end

