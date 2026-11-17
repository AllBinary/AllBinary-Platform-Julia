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
# package org.allbinary.ag.game.vector

mutable struct HealthVectorData <: JObject
    HealthVectorData() = new()
end

const HealthVectorData_pointsValue = Ref{Any}(nothing)
const HealthVectorData_pointsSet = Ref(false)
function staticGet_points(::Type{HealthVectorData})
    if !HealthVectorData_pointsSet[]
        HealthVectorData_pointsSet[] = true
        HealthVectorData_pointsValue[] = Vector{Vector{Int32}}[Vector{Int32}[Int32[Int32(2), Int32(1)], Int32[Int32(3), Int32(2)], Int32[Int32(3), Int32(2)], Int32[Int32(4), Int32(1)], Int32[Int32(4), Int32(1)], Int32[Int32(5), Int32(1)], Int32[Int32(5), Int32(1)], Int32[Int32(6), Int32(2)], Int32[Int32(6), Int32(2)], Int32[Int32(6), Int32(3)], Int32[Int32(6), Int32(3)], Int32[Int32(3), Int32(6)], Int32[Int32(3), Int32(6)], Int32[Int32(0), Int32(3)], Int32[Int32(0), Int32(3)], Int32[Int32(0), Int32(2)], Int32[Int32(0), Int32(2)], Int32[Int32(1), Int32(1)], Int32[Int32(1), Int32(1)], Int32[Int32(2), Int32(1)], Int32[Int32(1000), Int32(1000)]]]
    end
    HealthVectorData_pointsValue[]
end
function staticSet_points(::Type{HealthVectorData}, value)
    HealthVectorData_pointsSet[] = true
    HealthVectorData_pointsValue[] = value
end

function initFieldsHealthVectorData(this::HealthVectorData)
    nothing
end

function initHealthVectorData(this::HealthVectorData)
    initFieldsHealthVectorData(this)
end

function newHealthVectorData()
    this = HealthVectorData()
    initHealthVectorData(this)
    this
end

