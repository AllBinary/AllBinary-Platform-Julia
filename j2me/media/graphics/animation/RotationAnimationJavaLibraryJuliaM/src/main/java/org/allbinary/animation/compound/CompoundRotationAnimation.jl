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
# package org.allbinary.animation.compound

# extends RotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CompoundRotationAnimation <: JObject
    animationInterfaceArray::Any
    CompoundRotationAnimation() = new()
end


function initFieldsCompoundRotationAnimation(this::CompoundRotationAnimation)
    this.animationInterfaceArray = nothing
    
    nothing
end


function initCompoundRotationAnimation(this::CompoundRotationAnimation, animationInterfaceArray, animationBehavior)
        initRotationAnimation(this, AllBinary.getInstance(AngleInfo, AllBinary.getInstance(AngleFactory).QUARTER_TOTAL_ANGLE), AllBinary.createInstance(CircularIndexUtil, Int32(4)), animationBehavior)
        initFieldsCompoundRotationAnimation(this)
        this.animationInterfaceArray = animationInterfaceArray
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, Int32(Base.length(this.animationInterfaceArray)))
        nothing
end

function newCompoundRotationAnimation(animationInterfaceArray, animationBehavior)
    this = CompoundRotationAnimation()
    initCompoundRotationAnimation(this, animationInterfaceArray, animationBehavior)
    this
end


function setFrame(this::CompoundRotationAnimation, index)
        AllBinary.setFrame(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1], index)
        nothing
end


function getFrame(this::CompoundRotationAnimation)
        return AllBinary.getFrame(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
end


function getAnimationSize(this::CompoundRotationAnimation)
        return AllBinary.getAnimationSize(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
end


function getSize(this::CompoundRotationAnimation)
        return AllBinary.getSize(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
end


function previousFrame(this::CompoundRotationAnimation)
        AllBinary.previousFrame(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
        nothing
end


function nextFrame(this::CompoundRotationAnimation)
        AllBinary.nextFrame(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
        nothing
end


function previousRotation(this::CompoundRotationAnimation)
        AllBinary.previousRotation(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
        nothing
end


function nextRotation(this::CompoundRotationAnimation)
        AllBinary.nextRotation(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
        nothing
end


function setSequence(this::CompoundRotationAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::CompoundRotationAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function paintXY(this::CompoundRotationAnimation, graphics, x, y)
        AllBinary.paintXY(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1], graphics, x, y)
        nothing
end


function paintThreedXYZ(this::CompoundRotationAnimation, graphics, x, y, z)
        AllBinary.paintThreedXYZ(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1], graphics, x, y, z)
        nothing
end


function getCurrentAnimation(this::CompoundRotationAnimation)
        return this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1]
end


function nextAnimation(this::CompoundRotationAnimation)
        local frame::Int32 = AllBinary.getFrame(this)
        AllBinary.next(this.circularIndexUtil)
        AllBinary.setFrame(this, frame)
        nothing
end


function previousAnimation(this::CompoundRotationAnimation)
        local frame::Int32 = AllBinary.getFrame(this)
        AllBinary.previous(this.circularIndexUtil)
        AllBinary.setFrame(this, frame)
        nothing
end


function setAnimation(this::CompoundRotationAnimation, index)
        local frame::Int32 = AllBinary.getFrame(this)
        AllBinary.setIndex(this.circularIndexUtil, index)
        AllBinary.setFrame(this, frame)
        nothing
end


function setFrameByDirection(this::CompoundRotationAnimation, direction)
        AllBinary.setFrameByDirection(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1], direction)
        nothing
end


function setFrameToAngle(this::CompoundRotationAnimation, angle)
        AllBinary.setFrameToAngle(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1], angle)
        nothing
end


function adjustFrameToAngle(this::CompoundRotationAnimation, newAngle)
        AllBinary.adjustFrame(this, AllBinary.getValue(newAngle))
        nothing
end


function adjustFrame(this::CompoundRotationAnimation, angle)
        AllBinary.adjustFrame(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1], angle)
        nothing
end


function getAngleInfoP(this::CompoundRotationAnimation)
        return AllBinary.getAngleInfoP(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
end


function getAnimationInterfaceArray(this::CompoundRotationAnimation)
        return this.animationInterfaceArray
end


function setAnimationInterfaceArray(this::CompoundRotationAnimation, animationInterfaceArray)
        this.animationInterfaceArray = animationInterfaceArray
        nothing
end


function set(this::CompoundRotationAnimation, gl)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.set(this.animationInterfaceArray[index + 1], gl)
            finally
            end
            end
        end
        nothing
end

