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
# package org.allbinary.game.ag.vector

mutable struct MineVectorData <: JObject
    MineVectorData() = new()
end

const MineVectorData_pointsValue = Ref{Any}(nothing)
const MineVectorData_pointsSet = Ref(false)
function staticGet_points(::Type{MineVectorData})
    if !MineVectorData_pointsSet[]
        MineVectorData_pointsSet[] = true
        MineVectorData_pointsValue[] = Vector{Vector{Int32}}[Vector{Int32}[Int32[Int32(10), Int32(5)], Int32[Int32(2), Int32(6)], Int32[Int32(1000), Int32(1000)], Int32[Int32(2), Int32(2)], Int32[Int32(10), Int32(9)], Int32[Int32(1000), Int32(1000)], Int32[Int32(10), Int32(2)], Int32[Int32(2), Int32(9)], Int32[Int32(1000), Int32(1000)], Int32[Int32(2), Int32(5)], Int32[Int32(10), Int32(6)], Int32[Int32(1000), Int32(1000)], Int32[Int32(7), Int32(9)], Int32[Int32(5), Int32(2)], Int32[Int32(1000), Int32(1000)], Int32[Int32(7), Int32(2)], Int32[Int32(5), Int32(9)], Int32[Int32(1000), Int32(1000)]]]
    end
    MineVectorData_pointsValue[]
end
function staticSet_points(::Type{MineVectorData}, value)
    MineVectorData_pointsSet[] = true
    MineVectorData_pointsValue[] = value
end

function initFieldsMineVectorData(this::MineVectorData)
    nothing
end


function initMineVectorData(this::MineVectorData)
        initFieldsMineVectorData(this)
        nothing
        nothing
end

function newMineVectorData()
    this = MineVectorData()
    initMineVectorData(this)
    this
end

