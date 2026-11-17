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
mutable struct SimultaneousCompoundRotationAnimation <: JObject
    animationInterfaceArray::Any
    SimultaneousCompoundRotationAnimation() = new()
end


function initFieldsSimultaneousCompoundRotationAnimation(this::SimultaneousCompoundRotationAnimation)
    this.animationInterfaceArray = nothing
    
    nothing
end


function initSimultaneousCompoundRotationAnimation(this::SimultaneousCompoundRotationAnimation, animationInterfaceArray, animationBehavior)
        initRotationAnimation(this, AllBinary.getInstance(AngleInfo, AllBinary.getInstance(AngleFactory).QUARTER_TOTAL_ANGLE), AllBinary.createInstance(CircularIndexUtil, Int32(4)), animationBehavior)
        initFieldsSimultaneousCompoundRotationAnimation(this)
        this.animationInterfaceArray = animationInterfaceArray
        nothing
end

function newSimultaneousCompoundRotationAnimation(animationInterfaceArray, animationBehavior)
    this = SimultaneousCompoundRotationAnimation()
    initSimultaneousCompoundRotationAnimation(this, animationInterfaceArray, animationBehavior)
    this
end


function setFrame(this::SimultaneousCompoundRotationAnimation, frameIndex)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.setFrame(this.animationInterfaceArray[index + 1], frameIndex)
            finally
            end
            end
        end
        nothing
end


function getFrame(this::SimultaneousCompoundRotationAnimation)
        return AllBinary.getFrame(this.animationInterfaceArray[Int32(0) + 1])
end


function getAnimationSize(this::SimultaneousCompoundRotationAnimation)
        return AllBinary.getAnimationSize(this.animationInterfaceArray[Int32(0) + 1])
end


function getSize(this::SimultaneousCompoundRotationAnimation)
        return AllBinary.getSize(this.animationInterfaceArray[Int32(0) + 1])
end


function previousFrame(this::SimultaneousCompoundRotationAnimation)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.previousFrame(this.animationInterfaceArray[index + 1])
            finally
            end
            end
        end
        nothing
end


function nextFrame(this::SimultaneousCompoundRotationAnimation)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.nextFrame(this.animationInterfaceArray[index + 1])
            finally
            end
            end
        end
        nothing
end


function previousRotation(this::SimultaneousCompoundRotationAnimation)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.previousRotation(this.animationInterfaceArray[index + 1])
            finally
            end
            end
        end
        nothing
end


function nextRotation(this::SimultaneousCompoundRotationAnimation)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.nextRotation(this.animationInterfaceArray[index + 1])
            finally
            end
            end
        end
        nothing
end


function setSequence(this::SimultaneousCompoundRotationAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::SimultaneousCompoundRotationAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function paintXY(this::SimultaneousCompoundRotationAnimation, graphics, x, y)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.paintXY(this.animationInterfaceArray[index + 1], graphics, x, y)
            finally
            end
            end
        end
        nothing
end


function paintThreedXYZ(this::SimultaneousCompoundRotationAnimation, graphics, x, y, z)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.paintThreedXYZ(this.animationInterfaceArray[index + 1], graphics, x, y, z)
            finally
            end
            end
        end
        nothing
end


function setFrameByDirection(this::SimultaneousCompoundRotationAnimation, direction)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.setFrameByDirection(this.animationInterfaceArray[index + 1], direction)
            finally
            end
            end
        end
        nothing
end


function setFrameToAngle(this::SimultaneousCompoundRotationAnimation, angle)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.setFrameToAngle(this.animationInterfaceArray[index + 1], angle)
            finally
            end
            end
        end
        nothing
end


function adjustFrameToAngle(this::SimultaneousCompoundRotationAnimation, newAngle)
        AllBinary.adjustFrame(this, AllBinary.getValue(newAngle))
        nothing
end


function adjustFrame(this::SimultaneousCompoundRotationAnimation, angle)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.adjustFrame(this.animationInterfaceArray[index + 1], angle)
            finally
            end
            end
        end
        nothing
end


function getAngleInfoP(this::SimultaneousCompoundRotationAnimation)
        return AllBinary.getAngleInfoP(this.animationInterfaceArray[Int32(0) + 1])
end


function getAnimationInterfaceArray(this::SimultaneousCompoundRotationAnimation)
        return this.animationInterfaceArray
end


function setAnimationInterfaceArray(this::SimultaneousCompoundRotationAnimation, animationInterfaceArray)
        this.animationInterfaceArray = animationInterfaceArray
        nothing
end


function set(this::SimultaneousCompoundRotationAnimation, gl)
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

