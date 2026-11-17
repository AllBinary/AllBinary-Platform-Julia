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
# package org.allbinary.math

mutable struct AngleIncrementInfo <: JObject
    angleIncrement::Int16
    DOWN_FRAME::Any
    UP_FRAME::Any
    LEFT_FRAME::Any
    RIGHT_FRAME::Any
    frameUtil::Any
    AngleIncrementInfo() = new()
end

const AngleIncrementInfo_INCREMENTValue = Ref{Any}(nothing)
const AngleIncrementInfo_INCREMENTSet = Ref(false)
function staticGet_INCREMENT(::Type{AngleIncrementInfo})
    if !AngleIncrementInfo_INCREMENTSet[]
        AngleIncrementInfo_INCREMENTSet[] = true
        AngleIncrementInfo_INCREMENTValue[] = "Inc: "
    end
    AngleIncrementInfo_INCREMENTValue[]
end
function staticSet_INCREMENT(::Type{AngleIncrementInfo}, value)
    AngleIncrementInfo_INCREMENTSet[] = true
    AngleIncrementInfo_INCREMENTValue[] = value
end

function initFieldsAngleIncrementInfo(this::AngleIncrementInfo)
    this.angleIncrement = Int16(0)
    this.DOWN_FRAME = nothing
    this.UP_FRAME = nothing
    this.LEFT_FRAME = nothing
    this.RIGHT_FRAME = nothing
    this.frameUtil = nothing
    
    
    
    
    
    this.frameUtil = AllBinary.getInstance(FrameUtil)
    nothing
end


function initAngleIncrementInfo(this::AngleIncrementInfo, angleIncrement)
        initFieldsAngleIncrementInfo(this)
        this.angleIncrement = angleIncrement
        local angleFactory = AllBinary.getInstance(AngleFactory)
        local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
        this.DOWN_FRAME = AllBinary.getAt(smallIntegerSingletonFactory, AllBinary.getValue(angleFactory.DOWN) ÷ this.angleIncrement)
        this.UP_FRAME = AllBinary.getAt(smallIntegerSingletonFactory, ((AllBinary.getValue(angleFactory.UP)) % Int32))
        this.LEFT_FRAME = AllBinary.getAt(smallIntegerSingletonFactory, AllBinary.getValue(angleFactory.LEFT) ÷ this.angleIncrement)
        this.RIGHT_FRAME = AllBinary.getAt(smallIntegerSingletonFactory, AllBinary.getValue(angleFactory.RIGHT) ÷ this.angleIncrement)
        nothing
end

function newAngleIncrementInfo(angleIncrement)
    this = AngleIncrementInfo()
    initAngleIncrementInfo(this, angleIncrement)
    this
end


function getFrameAngle(this::AngleIncrementInfo, frame)
        return AllBinary.getFrameAngle(this.frameUtil, frame, ((this.angleIncrement) % Int32))
end


function getAngleIncrement(this::AngleIncrementInfo)
        return this.angleIncrement
end


function toString(this::AngleIncrementInfo)
        return AllBinary.toString(AllBinary.appendshort(AllBinary.append(newStringMaker(), staticGet_INCREMENT(AngleIncrementInfo)), this.angleIncrement))
end


function getClosestGeneralDirection(this::AngleIncrementInfo, angle)
        local closestDirection = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(360))
        if AllBinary.intValue(this.UP_FRAME) - angle < AllBinary.intValue(closestDirection) - angle
            closestDirection = this.UP_FRAME
        end
        if AllBinary.intValue(this.DOWN_FRAME) - angle < AllBinary.intValue(closestDirection) - angle
            closestDirection = this.DOWN_FRAME
        end
        if AllBinary.intValue(this.LEFT_FRAME) - angle < AllBinary.intValue(closestDirection) - angle
            closestDirection = this.LEFT_FRAME
        end
        if AllBinary.intValue(this.RIGHT_FRAME) - angle < AllBinary.intValue(closestDirection) - angle
            closestDirection = this.RIGHT_FRAME
        end
        return AllBinary.intValue(closestDirection)
end

