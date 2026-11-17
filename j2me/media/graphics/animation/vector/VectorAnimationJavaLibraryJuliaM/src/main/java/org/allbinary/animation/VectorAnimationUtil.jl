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
# package org.allbinary.animation

mutable struct VectorAnimationUtil <: JObject
    VectorAnimationUtil() = new()
end

const VectorAnimationUtil_instanceValue = Ref{Any}(nothing)
const VectorAnimationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{VectorAnimationUtil})
    if !VectorAnimationUtil_instanceSet[]
        VectorAnimationUtil_instanceSet[] = true
        VectorAnimationUtil_instanceValue[] = newVectorAnimationUtil()
    end
    VectorAnimationUtil_instanceValue[]
end
function staticSet_instance(::Type{VectorAnimationUtil}, value)
    VectorAnimationUtil_instanceSet[] = true
    VectorAnimationUtil_instanceValue[] = value
end

function initFieldsVectorAnimationUtil(this::VectorAnimationUtil)
    nothing
end


function getInstance(::Type{VectorAnimationUtil})
        return staticGet_instance(VectorAnimationUtil)
end


function initVectorAnimationUtil(this::VectorAnimationUtil)
        initFieldsVectorAnimationUtil(this)
        nothing
        nothing
end

function newVectorAnimationUtil()
    this = VectorAnimationUtil()
    initVectorAnimationUtil(this)
    this
end


function toAnimationArrayFromListOfPointListWithPointsPerFrame(this::VectorAnimationUtil, vector, pointsPerFrame)
        local size::Int32 = AllBinary.size(vector)
        local points = jNewArrayOf(Vector{Vector{Int32}}, size, () -> jNewArrayOf(Vector{Int32}, pointsPerFrame, () -> jNewArray(Int32, Int32(2), Int32(0))))
        local nextBasicArrayList = nothing
        local framePoints = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            nextBasicArrayList = (vector.objectArray[index + 1])
            framePoints = AllBinary.toFrameArrayFromPointBasicArrayList(this, nextBasicArrayList)
            let
                local pointIndex::Int32 = Int32(0)
                while pointIndex < Int32(Base.length(framePoints))
                try
                points[index + 1][pointIndex + 1][Int32(0) + 1] = framePoints[pointIndex + 1][Int32(0) + 1]
                points[index + 1][pointIndex + 1][Int32(1) + 1] = framePoints[pointIndex + 1][Int32(1) + 1]
                finally
                    pointIndex += Int32(1)
                end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        return points
end


function toAnimationArrayFromListOfPointList(this::VectorAnimationUtil, vector)
        local size::Int32 = AllBinary.size(vector)
        local points = jNewArrayOf(Vector{Vector{Int32}}, size, () -> jNewArrayOf(Vector{Int32}, Int32(0), () -> jNewArray(Int32, Int32(0), Int32(0))))
        local nextBasicArrayList = nothing
        local framePoints = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            nextBasicArrayList = (vector.objectArray[index + 1])
            framePoints = AllBinary.toFrameArrayFromPointBasicArrayList(this, nextBasicArrayList)
            points[index + 1] = jNewArrayOf(Vector{Int32}, Int32(Base.length(framePoints)), () -> jNewArray(Int32, Int32(2), Int32(0)))
            let
                local pointIndex::Int32 = Int32(0)
                while pointIndex < Int32(Base.length(framePoints))
                try
                points[index + 1][pointIndex + 1][Int32(0) + 1] = framePoints[pointIndex + 1][Int32(0) + 1]
                points[index + 1][pointIndex + 1][Int32(1) + 1] = framePoints[pointIndex + 1][Int32(1) + 1]
                finally
                    pointIndex += Int32(1)
                end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        return points
end


function toFrameArrayFromPointBasicArrayList(this::VectorAnimationUtil, list)
        local points = jNewArrayOf(Vector{Int32}, AllBinary.size(list), () -> jNewArray(Int32, Int32(2), Int32(0)))
        local size::Int32 = AllBinary.size(list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local nextPoint = (list.objectArray[index + 1])
            points[index + 1][Int32(0) + 1] = AllBinary.getX(nextPoint)
            points[index + 1][Int32(1) + 1] = AllBinary.getY(nextPoint)
            finally
                index += Int32(1)
            end
            end
        end
        return points
end

