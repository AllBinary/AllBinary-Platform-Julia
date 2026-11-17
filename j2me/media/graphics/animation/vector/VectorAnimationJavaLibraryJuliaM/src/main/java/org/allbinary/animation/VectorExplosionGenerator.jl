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

mutable struct VectorExplosionGenerator <: JObject
    RANDOM::Any
    ROTATION::Any
    vectorAnimationUtil::Any
    randomRotationFactory::Any
    VectorExplosionGenerator() = new()
end

const VectorExplosionGenerator_instanceValue = Ref{Any}(nothing)
const VectorExplosionGenerator_instanceSet = Ref(false)
function staticGet_instance(::Type{VectorExplosionGenerator})
    if !VectorExplosionGenerator_instanceSet[]
        VectorExplosionGenerator_instanceSet[] = true
        VectorExplosionGenerator_instanceValue[] = newVectorExplosionGenerator()
    end
    VectorExplosionGenerator_instanceValue[]
end
function staticSet_instance(::Type{VectorExplosionGenerator}, value)
    VectorExplosionGenerator_instanceSet[] = true
    VectorExplosionGenerator_instanceValue[] = value
end

function initFieldsVectorExplosionGenerator(this::VectorExplosionGenerator)
    this.RANDOM = nothing
    this.ROTATION = nothing
    this.vectorAnimationUtil = nothing
    this.randomRotationFactory = nothing
    this.RANDOM = newVectorExplosionType()
    this.ROTATION = newVectorExplosionType()
    this.vectorAnimationUtil = AllBinary.getInstance(VectorAnimationUtil)
    this.randomRotationFactory = AllBinary.getInstance(RandomRotationFactory)
    nothing
end


function getInstance(::Type{VectorExplosionGenerator})
        return staticGet_instance(VectorExplosionGenerator)
end


function initVectorExplosionGenerator(this::VectorExplosionGenerator)
        initFieldsVectorExplosionGenerator(this)
        nothing
        nothing
end

function newVectorExplosionGenerator()
    this = VectorExplosionGenerator()
    initVectorExplosionGenerator(this)
    this
end


function createList(this::VectorExplosionGenerator, list, howMuch, type_)
        local point = nothing
        local size::Int32 = AllBinary.size(list)
        local points = jNewArrayOf(Vector{Int32}, size, () -> jNewArray(Int32, Int32(2), Int32(0)))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            point = (list.objectArray[index + 1])
            points[index + 1][Int32(0) + 1] = AllBinary.getX(point)
            points[index + 1][Int32(1) + 1] = AllBinary.getY(point)
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.createListFromPoints(this, list, points, howMuch, type_)
end


function getInstance(this::VectorExplosionGenerator, points, howMuch, type_)
        local pointsBasicArrayList = AllBinary.getInstanceStartFrame(this, points, howMuch, type_, true)
        local tempBasicArrayList = (pointsBasicArrayList.objectArray[Int32(0) + 1])
        local newPoints = AllBinary.toAnimationArrayFromListOfPointListWithPointsPerFrame(this.vectorAnimationUtil, pointsBasicArrayList, AllBinary.size(tempBasicArrayList))
        return newPoints
end


function getInstanceStartFrame(this::VectorExplosionGenerator, points, howMuch, type_, startFrame)
        try
            local pointsBasicArrayList = newBasicArrayListS(howMuch)
            AllBinary.add(pointsBasicArrayList, AllBinary.createPointsBasicArrayList(this, points))
            local frameIndex::Int32 = Int32(0)
            local tempBasicArrayList = nothing
            local pointBasicArrayList = nothing
            while frameIndex < howMuch
                tempBasicArrayList = (pointsBasicArrayList.objectArray[frameIndex + 1])
                pointBasicArrayList = AllBinary.createListFromPoints(this, tempBasicArrayList, points, howMuch, type_)
                AllBinary.add(pointsBasicArrayList, pointBasicArrayList)
                frameIndex += Int32(1)
            end
            if !startFrame
                AllBinary.removeAt(pointsBasicArrayList, Int32(0))
            end
            return pointsBasicArrayList
        catch e
            throw(e)
        end
end


function createListFromPoints(this::VectorExplosionGenerator, tempBasicArrayList, points, howMuch, type_)
        local index::Int32 = Int32(0)
        local pointBasicArrayList = newBasicArrayListD()
        local sectionBasicArrayList = nothing
        while index < Int32(Base.length(points))
            sectionBasicArrayList = newBasicArrayListD()
            while points[index + 1][Int32(0) + 1] != Int32(1000)
                AllBinary.add(sectionBasicArrayList, tempBasicArrayList.objectArray[index + 1])
                index += Int32(1)
                if index >= Int32(Base.length(points))
                    break
                end
            end
            sectionBasicArrayList = AllBinary.getInstance(RandomTranslation, sectionBasicArrayList, howMuch)
            if type_ === this.ROTATION
                sectionBasicArrayList = AllBinary.getInstanceList(this.randomRotationFactory, sectionBasicArrayList, howMuch)
            end
            local size::Int32 = AllBinary.size(sectionBasicArrayList)
            let
                local index2::Int32 = Int32(0)
                while index2 < size
                try
                AllBinary.add(pointBasicArrayList, sectionBasicArrayList.objectArray[index2 + 1])
                finally
                    index2 += Int32(1)
                end
                end
            end
            if index >= Int32(Base.length(points))
                break
            elseif points[index + 1][Int32(0) + 1] == Int32(1000)
                AllBinary.add(pointBasicArrayList, tempBasicArrayList.objectArray[index + 1])
                index += Int32(1)
            end
        end
        return pointBasicArrayList
end


function createPointsBasicArrayList(this::VectorExplosionGenerator, points)
        if Int32(Base.length(points)) == Int32(0)
            throw(jNewException("Exception", "Not Points Provided"))
        end
        local firstPointBasicArrayList = newBasicArrayListS(Int32(Base.length(points)))
        local pointFactory = AllBinary.getInstance(PointFactory)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(points))
            try
            AllBinary.add(firstPointBasicArrayList, AllBinary.createXY(pointFactory, points[index + 1][Int32(0) + 1], points[index + 1][Int32(1) + 1]))
            finally
                index += Int32(1)
            end
            end
        end
        return firstPointBasicArrayList
end

