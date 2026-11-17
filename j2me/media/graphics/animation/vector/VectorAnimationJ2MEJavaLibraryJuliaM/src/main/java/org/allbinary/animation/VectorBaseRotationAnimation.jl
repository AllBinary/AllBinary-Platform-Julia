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

# extends RotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct VectorBaseRotationAnimation <: JObject
    currentPoints::Any
    VectorBaseRotationAnimation() = new()
end


function initFieldsVectorBaseRotationAnimation(this::VectorBaseRotationAnimation)
    this.currentPoints = nothing
    this.currentPoints = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY_ARRAY_ARRAY
    nothing
end


function initVectorBaseRotationAnimation(this::VectorBaseRotationAnimation, angleInfo, currentPoints, basicColor, animationBehavior)
        initRotationAnimation(this, angleInfo, AllBinary.createInstance(CircularIndexUtil, Int32(360) ÷ AllBinary.getAngleIncrement(AllBinary.getAngleIncrementInfo(angleInfo))), animationBehavior)
        initFieldsVectorBaseRotationAnimation(this)
        AllBinary.setPoints(this, currentPoints)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newVectorBaseRotationAnimation(angleInfo, currentPoints, basicColor, animationBehavior)
    this = VectorBaseRotationAnimation()
    initVectorBaseRotationAnimation(this, angleInfo, currentPoints, basicColor, animationBehavior)
    this
end


function getAnimationSize(this::VectorBaseRotationAnimation)
        return AllBinary.getSize(this)
end


function getFrame(this::VectorBaseRotationAnimation)
        return AllBinary.getIndex(this.circularIndexUtil)
end


function setFrame(this::VectorBaseRotationAnimation, index)
        AllBinary.setIndex(this.circularIndexUtil, index)
        nothing
end


function nextFrame(this::VectorBaseRotationAnimation)
        AllBinary.next(this.circularIndexUtil)
        nothing
end


function previousFrame(this::VectorBaseRotationAnimation)
        AllBinary.previous(this.circularIndexUtil)
        nothing
end


function getSize(this::VectorBaseRotationAnimation)
        return Int32(Base.length(this.currentPoints))
end


function setSequence(this::VectorBaseRotationAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::VectorBaseRotationAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function paintXY(this::VectorBaseRotationAnimation, graphics, x, y)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, this.basicColor)
        try
            local nextPointX::Int32 = Int32(0)
            local nextPointY::Int32 = Int32(0)
            local nextPoint = nothing
            local point = nothing
            local currentPointsFrame = this.currentPoints[AllBinary.getIndex(this.circularIndexUtil) + 1]
            local size::Int32 = Int32(Base.length(currentPointsFrame))
            local index::Int32 = size - Int32(2)
            while (index -= Int32(1)) >= Int32(0)
                nextPoint = currentPointsFrame[index + 1]
                point = currentPointsFrame[index + Int32(1) + 1]
                nextPointX = nextPoint[Int32(0) + 1]
                nextPointY = nextPoint[Int32(1) + 1]
                if nextPointX != Int32(1000)
                    AllBinary.drawLine(graphics, point[Int32(0) + 1] + x, point[Int32(1) + 1] + y, nextPointX + x, nextPointY + y)
                else
                    index -= Int32(1)
                end
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "paintVectors", e)
        end
        nothing
end


function getPoints(this::VectorBaseRotationAnimation, frame)
        return this.currentPoints[frame + 1]
end


function setPoints(this::VectorBaseRotationAnimation, currentPoints)
        this.currentPoints = currentPoints
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, Int32(Base.length(this.currentPoints)))
        nothing
end


function getBasicColorP(this::VectorBaseRotationAnimation)
        return AllBinary.getBasicColorP(this)
end


function setBasicColorP(this::VectorBaseRotationAnimation, basicColor)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

