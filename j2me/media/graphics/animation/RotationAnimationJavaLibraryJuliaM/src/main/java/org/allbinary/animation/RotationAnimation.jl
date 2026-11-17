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
mutable struct RotationAnimation <: JObject
    frameUtil::Any
    directionUtil::Any
    angleInfo::Any
    circularIndexUtil::Any
    RotationAnimation() = new()
end


function initFieldsRotationAnimation(this::RotationAnimation)
    this.frameUtil = nothing
    this.directionUtil = nothing
    this.angleInfo = nothing
    this.circularIndexUtil = nothing
    this.frameUtil = AllBinary.getInstance(FrameUtil)
    this.directionUtil = AllBinary.getInstance(DirectionUtil)
    
    
    nothing
end


function initRotationAnimation(this::RotationAnimation, angleInfo, circularIndexUtil, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsRotationAnimation(this)
        this.angleInfo = angleInfo
        this.circularIndexUtil = circularIndexUtil
        nothing
end

function newRotationAnimation(angleInfo, circularIndexUtil, animationBehavior)
    this = RotationAnimation()
    initRotationAnimation(this, angleInfo, circularIndexUtil, animationBehavior)
    this
end


function nextRotationX(this::RotationAnimation)
        nothing
        nothing
end


function previousRotationX(this::RotationAnimation)
        nothing
        nothing
end


function nextRotation(this::RotationAnimation)
        AllBinary.adjustAngle(this.angleInfo, AllBinary.next(this.circularIndexUtil))
        nothing
end


function previousRotation(this::RotationAnimation)
        AllBinary.adjustAngle(this.angleInfo, AllBinary.previous(this.circularIndexUtil))
        nothing
end


function nextRotationZ(this::RotationAnimation)
        nothing
        nothing
end


function previousRotationZ(this::RotationAnimation)
        nothing
        nothing
end


function setFrame(this::RotationAnimation, index)
        AllBinary.setIndex(this.circularIndexUtil, index)
        local newFrame::Int32 = AllBinary.getIndex(this.circularIndexUtil)
        AllBinary.adjustAngle(this.angleInfo, newFrame)
        nothing
end


function setFrameByDirection(this::RotationAnimation, direction)
        local angle = AllBinary.getFrameAngle(this.directionUtil, direction)
        AllBinary.adjustFrameToAngle(this, angle)
        nothing
end


function setFrameToAngle(this::RotationAnimation, angle)
        AllBinary.adjustFrameToAngle(this, angle)
        nothing
end


function adjustFrameToAngle(this::RotationAnimation, angle)
        AllBinary.adjustFrame(this, AllBinary.getValue(angle))
        nothing
end


function adjustFrame(this::RotationAnimation, angle)
        AllBinary.setFrame(this, AllBinary.getFrameForAngle(this.frameUtil, angle, ((AllBinary.getAngleIncrement(AllBinary.getAngleIncrementInfo(this.angleInfo))) % Int32)))
        nothing
end


function getFrame(this::RotationAnimation)
        return AllBinary.getIndex(this.circularIndexUtil)
end


function getSize(this::RotationAnimation)
        return AllBinary.getSize(this.circularIndexUtil)
end


function getAngleInfoP(this::RotationAnimation)
        return this.angleInfo
end


function toString(this::RotationAnimation)
        return AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.toString(this)), "circularIndexUtil: "), AllBinary.toString(this.circularIndexUtil)), "angleInfo: "), AllBinary.toString(this.angleInfo)))
end

