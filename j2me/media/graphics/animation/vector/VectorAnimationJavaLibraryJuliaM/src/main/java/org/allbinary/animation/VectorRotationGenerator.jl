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

mutable struct VectorRotationGenerator <: JObject
    logUtil::Any
    vectorAnimationUtil::Any
    angleFactory::Any
    VectorRotationGenerator() = new()
end

const VectorRotationGenerator_instanceValue = Ref{Any}(nothing)
const VectorRotationGenerator_instanceSet = Ref(false)
function staticGet_instance(::Type{VectorRotationGenerator})
    if !VectorRotationGenerator_instanceSet[]
        VectorRotationGenerator_instanceSet[] = true
        VectorRotationGenerator_instanceValue[] = newVectorRotationGenerator()
    end
    VectorRotationGenerator_instanceValue[]
end
function staticSet_instance(::Type{VectorRotationGenerator}, value)
    VectorRotationGenerator_instanceSet[] = true
    VectorRotationGenerator_instanceValue[] = value
end

function initFieldsVectorRotationGenerator(this::VectorRotationGenerator)
    this.logUtil = nothing
    this.vectorAnimationUtil = nothing
    this.angleFactory = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.vectorAnimationUtil = AllBinary.getInstance(VectorAnimationUtil)
    this.angleFactory = AllBinary.getInstance(AngleFactory)
    nothing
end


function getInstance(::Type{VectorRotationGenerator})
        return staticGet_instance(VectorRotationGenerator)
end


function initVectorRotationGenerator(this::VectorRotationGenerator)
        initFieldsVectorRotationGenerator(this)
        nothing
        nothing
end

function newVectorRotationGenerator()
    this = VectorRotationGenerator()
    initVectorRotationGenerator(this)
    this
end


function getInstance(this::VectorRotationGenerator, vectorRotationInfo)
        return AllBinary.getInstanceFrames(this, AllBinary.getWidth(vectorRotationInfo), AllBinary.getHeight(vectorRotationInfo), AllBinary.getPoints(vectorRotationInfo), AllBinary.getTotalFrames(vectorRotationInfo))
end


function getInstanceFrames(this::VectorRotationGenerator, width, height, points, frames)
        try
            local totalAngle::Int16 = this.angleFactory.TOTAL_ANGLE
            local angleIncrement::Int32 = ((totalAngle) % Int32) ÷ frames
            local pointsBasicArrayList = newBasicArrayListS(((totalAngle) % Int32) ÷ angleIncrement)
            local pointBasicArrayList = newBasicArrayListS(Int32(Base.length(points)))
            local pointFactory = AllBinary.getInstance(PointFactory)
            local size::Int32 = Int32(Base.length(points))
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                AllBinary.add(pointBasicArrayList, AllBinary.createXY(pointFactory, points[index + 1][Int32(0) + 1], points[index + 1][Int32(1) + 1]))
                finally
                    index += Int32(1)
                end
                end
            end
            index = Int32(0)
            while index < ((totalAngle) % Int32)
                AllBinary.add(pointsBasicArrayList, AllBinary.getListAtAngle(this, width, height, pointBasicArrayList, AllBinary.getAt(this.angleFactory, index)))
                index += angleIncrement
            end
            local newPoints = AllBinary.toAnimationArrayFromListOfPointListWithPointsPerFrame(this.vectorAnimationUtil, pointsBasicArrayList, AllBinary.size(pointBasicArrayList))
            return newPoints
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            return AllBinary.getInstance(NullUtil).NULL_INT_ARRAY_ARRAY_ARRAY
        end
end


function getListAtAngle(this::VectorRotationGenerator, width, height, pointBasicArrayList, angle)
        local graphicsPipe = newBasicGraphicsPipeline(pointBasicArrayList)
        AllBinary.createMatrix(graphicsPipe)
        AllBinary.translate(graphicsPipe, -(width >> Int32(1)), -(height >> Int32(1)))
        AllBinary.rotateToAngle(graphicsPipe, angle)
        AllBinary.translate(graphicsPipe, (width >> Int32(1)), (height >> Int32(1)))
        return AllBinary.getMatrix(graphicsPipe)
end

