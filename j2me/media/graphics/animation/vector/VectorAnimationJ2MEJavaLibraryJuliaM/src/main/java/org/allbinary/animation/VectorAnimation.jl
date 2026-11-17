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

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct VectorAnimation <: JObject
    currentPoints::Any
    circularIndexUtil::Any
    VectorAnimation() = new()
end


function initFieldsVectorAnimation(this::VectorAnimation)
    this.currentPoints = nothing
    this.circularIndexUtil = nothing
    this.currentPoints = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY_ARRAY_ARRAY
    this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, Int32(0))
    nothing
end


function createVectorAnimation(::Type{VectorAnimation}, currentPoints2, basicColor, animationBehavior)
        local currentPoints = jNewArrayOf(Vector{Vector{Int32}}, Int32(1), () -> jNewArrayOf(Vector{Int32}, Int32(Base.length(currentPoints2)), () -> jNewArray(Int32, Int32(2), Int32(0))))
        local size::Int32 = Int32(Base.length(currentPoints2))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            currentPoints[Int32(0) + 1][index + 1][Int32(0) + 1] = currentPoints2[index + 1][Int32(0) + 1]
            currentPoints[Int32(0) + 1][index + 1][Int32(1) + 1] = currentPoints2[index + 1][Int32(1) + 1]
            finally
                index += Int32(1)
            end
            end
        end
        return newVectorAnimation(currentPoints, basicColor, animationBehavior)
end


function initVectorAnimation(this::VectorAnimation, currentPoints, basicColor, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsVectorAnimation(this)
        AllBinary.setPoints(this, currentPoints)
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newVectorAnimation(currentPoints, basicColor, animationBehavior)
    this = VectorAnimation()
    initVectorAnimation(this, currentPoints, basicColor, animationBehavior)
    this
end


function setBasicColorP(this::VectorAnimation, basicColor)
        local changed::Bool = false
        if AllBinary.getBasicColorP(this) === nothing || AllBinary.intValue(AllBinary.getBasicColorP(this)) != AllBinary.intValue(basicColor)
            changed = true
        end
        AllBinary.setBasicColorP(this, basicColor)
        if changed
            AllBinary.updateModifiers(this)
        end
        nothing
end


function changeBasicColor(this::VectorAnimation, basicColor)
        local changed::Bool = false
        if AllBinary.getChangeBasicColor(this) === nothing || AllBinary.intValue(AllBinary.getChangeBasicColor(this)) != AllBinary.intValue(basicColor)
            changed = true
        end
        AllBinary.changeBasicColor(this, basicColor)
        if changed
            AllBinary.updateModifiers(this)
        end
        nothing
end


function setAlpha(this::VectorAnimation, alpha)
        local changed::Bool = false
        if this.alphaP != alpha
            changed = true
        end
        AllBinary.setAlpha(this, alpha)
        if changed
            AllBinary.updateModifiers(this)
        end
        nothing
end


function setScale(this::VectorAnimation, scaleX, scaleY)
        nothing
        nothing
end


function setMaxScale(this::VectorAnimation, maxScaleX, maxScaleY)
        nothing
        nothing
end


function updateModifiers(this::VectorAnimation)
        nothing
        nothing
end


function getAnimationSize(this::VectorAnimation)
        return AllBinary.getSize(this)
end


function getSize(this::VectorAnimation)
        return Int32(Base.length(this.currentPoints))
end


function setSequence(this::VectorAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::VectorAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function nextFrame(this::VectorAnimation)
        AllBinary.next(this.circularIndexUtil)
        nothing
end


function previousFrame(this::VectorAnimation)
        AllBinary.previous(this.circularIndexUtil)
        nothing
end


function paintVectors(this::VectorAnimation, graphics, x, y)
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


function paintXY(this::VectorAnimation, graphics, x, y)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, this.basicColor)
        AllBinary.paintVectors(this, graphics, x, y)
        nothing
end


function getFrame(this::VectorAnimation)
        return AllBinary.getIndex(this.circularIndexUtil)
end


function setFrame(this::VectorAnimation, index)
        AllBinary.setIndex(this.circularIndexUtil, index)
        nothing
end


function getPoints(this::VectorAnimation, frame)
        return this.currentPoints[frame + 1]
end


function setPoints(this::VectorAnimation, currentPoints)
        this.currentPoints = currentPoints
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, Int32(Base.length(currentPoints)))
        nothing
end


function getBasicColorP(this::VectorAnimation)
        return AllBinary.getBasicColorP(this)
end

