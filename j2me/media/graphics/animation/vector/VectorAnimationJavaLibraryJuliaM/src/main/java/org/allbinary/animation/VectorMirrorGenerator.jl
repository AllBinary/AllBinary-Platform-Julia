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

mutable struct VectorMirrorGenerator <: JObject
    logUtil::Any
    vectorAnimationUtil::Any
    VectorMirrorGenerator() = new()
end

const VectorMirrorGenerator_instanceValue = Ref{Any}(nothing)
const VectorMirrorGenerator_instanceSet = Ref(false)
function staticGet_instance(::Type{VectorMirrorGenerator})
    if !VectorMirrorGenerator_instanceSet[]
        VectorMirrorGenerator_instanceSet[] = true
        VectorMirrorGenerator_instanceValue[] = newVectorMirrorGenerator()
    end
    VectorMirrorGenerator_instanceValue[]
end
function staticSet_instance(::Type{VectorMirrorGenerator}, value)
    VectorMirrorGenerator_instanceSet[] = true
    VectorMirrorGenerator_instanceValue[] = value
end

function initFieldsVectorMirrorGenerator(this::VectorMirrorGenerator)
    this.logUtil = nothing
    this.vectorAnimationUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.vectorAnimationUtil = AllBinary.getInstance(VectorAnimationUtil)
    nothing
end


function getInstance(::Type{VectorMirrorGenerator})
        return staticGet_instance(VectorMirrorGenerator)
end


function initVectorMirrorGenerator(this::VectorMirrorGenerator)
        initFieldsVectorMirrorGenerator(this)
        nothing
        nothing
end

function newVectorMirrorGenerator()
    this = VectorMirrorGenerator()
    initVectorMirrorGenerator(this)
    this
end


function getInstance(this::VectorMirrorGenerator, points, width)
        try
            local pointFactory = AllBinary.getInstance(PointFactory)
            local pointBasicArrayList = nothing
            local nextPoints = nothing
            local size2::Int32 = Int32(0)
            local size::Int32 = Int32(Base.length(points))
            local pointsBasicArrayList = newBasicArrayListS(size)
            let
                local frame::Int32 = Int32(0)
                while frame < size
                try
                nextPoints = points[frame + 1]
                size2 = Int32(Base.length(nextPoints))
                pointBasicArrayList = newBasicArrayListS(size2)
                let
                    local index::Int32 = Int32(0)
                    while index < size2
                    try
                    AllBinary.add(pointBasicArrayList, AllBinary.createXY(pointFactory, nextPoints[index + 1][Int32(0) + 1], nextPoints[index + 1][Int32(1) + 1]))
                    finally
                        index += Int32(1)
                    end
                    end
                end
                AllBinary.add(pointsBasicArrayList, pointBasicArrayList)
                finally
                    frame += Int32(1)
                end
                end
            end
            let
                index = Int32(0)
                while index < Int32(Base.length(points))
                try
                AllBinary.add(pointsBasicArrayList, AllBinary.getInstance(this, (pointsBasicArrayList.objectArray[index + 1]), width))
                finally
                    index += Int32(1)
                end
                end
            end
            local newPoints = AllBinary.toAnimationArrayFromListOfPointList(this.vectorAnimationUtil, pointsBasicArrayList)
            return newPoints
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            return AllBinary.getInstance(NullUtil).NULL_INT_ARRAY_ARRAY_ARRAY
        end
end


function getInstance(this::VectorMirrorGenerator, pointBasicArrayList, width)
        local graphicsPipe = newBasicGraphicsPipeline(pointBasicArrayList)
        AllBinary.createMatrix(graphicsPipe)
        AllBinary.mirror(graphicsPipe, width)
        return AllBinary.getMatrix(graphicsPipe)
end

