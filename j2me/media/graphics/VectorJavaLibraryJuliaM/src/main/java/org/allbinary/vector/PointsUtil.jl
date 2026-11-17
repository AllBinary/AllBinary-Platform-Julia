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
# package org.allbinary.vector

mutable struct PointsUtil <: JObject
    PointsUtil() = new()
end

const PointsUtil_instanceValue = Ref{Any}(nothing)
const PointsUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{PointsUtil})
    if !PointsUtil_instanceSet[]
        PointsUtil_instanceSet[] = true
        PointsUtil_instanceValue[] = newPointsUtil()
    end
    PointsUtil_instanceValue[]
end
function staticSet_instance(::Type{PointsUtil}, value)
    PointsUtil_instanceSet[] = true
    PointsUtil_instanceValue[] = value
end

function initFieldsPointsUtil(this::PointsUtil)
    nothing
end

function initPointsUtil(this::PointsUtil)
    initFieldsPointsUtil(this)
end

function newPointsUtil()
    this = PointsUtil()
    initPointsUtil(this)
    this
end


function getInstance(::Type{PointsUtil})
        return staticGet_instance(PointsUtil)
end


function adjustXY(this::PointsUtil, points, x, y)
        local size::Int32 = Int32(Base.length(points))
        local newPoints = jNewArrayOf(Vector{Vector{Int32}}, size, () -> jNewArrayOf(Vector{Int32}, Int32(0), () -> jNewArray(Int32, Int32(0), Int32(0))))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local size2::Int32 = Int32(Base.length(points[index + 1]))
            newPoints[index + 1] = jNewArrayOf(Vector{Int32}, size2, () -> jNewArray(Int32, Int32(2), Int32(0)))
            let
                local index2::Int32 = Int32(0)
                while index2 < size2
                try
                if points[index + 1][index2 + 1][Int32(0) + 1] != Int32(1000)
                    newPoints[index + 1][index2 + 1][Int32(0) + 1] = points[index + 1][index2 + 1][Int32(0) + 1] + x
                    newPoints[index + 1][index2 + 1][Int32(1) + 1] = points[index + 1][index2 + 1][Int32(1) + 1] + y
                else
                    newPoints[index + 1][index2 + 1][Int32(0) + 1] = Int32(1000)
                    newPoints[index + 1][index2 + 1][Int32(1) + 1] = Int32(1000)
                end
                finally
                    index2 += Int32(1)
                end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        return newPoints
end


function adjust(this::PointsUtil, points, both)
        return AllBinary.adjust(this, points, both, both)
end


function adjust(this::PointsUtil, points, x, y)
        local newPoints = jNewArrayOf(Vector{Int32}, Int32(Base.length(points)), () -> jNewArray(Int32, Int32(2), Int32(0)))
        let
            local index2::Int32 = Int32(0)
            while index2 < Int32(Base.length(points))
            try
            if points[index2 + 1][Int32(0) + 1] != Int32(1000)
                newPoints[index2 + 1][Int32(0) + 1] = points[index2 + 1][Int32(0) + 1] + x
                newPoints[index2 + 1][Int32(1) + 1] = points[index2 + 1][Int32(1) + 1] + y
            else
                newPoints[index2 + 1][Int32(0) + 1] = Int32(1000)
                newPoints[index2 + 1][Int32(1) + 1] = Int32(1000)
            end
            finally
                index2 += Int32(1)
            end
            end
        end
        return newPoints
end

