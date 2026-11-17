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

# extends VectorBaseRotationAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct VectorRotationAnimation <: JObject
    VectorRotationAnimation() = new()
end


function initFieldsVectorRotationAnimation(this::VectorRotationAnimation)
    nothing
end


function initVectorRotationAnimation(this::VectorRotationAnimation, currentPoints, basicColor, animationBehavior)
        initVectorBaseRotationAnimation(this, AllBinary.getInstance(AngleInfo, (((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE ÷ Int32(Base.length(currentPoints)))) % Int16)), currentPoints, basicColor, animationBehavior)
        AllBinary.adjustAngle(this.angleInfo, AllBinary.getFrame(this))
        nothing
end

function newVectorRotationAnimation(currentPoints, basicColor, animationBehavior)
    this = VectorRotationAnimation()
    initVectorRotationAnimation(this, currentPoints, basicColor, animationBehavior)
    this
end


function setFrameByDirection(this::VectorRotationAnimation, direction)
        local angle = AllBinary.getFrameAngle(this.directionUtil, direction)
        AllBinary.adjustFrameToAngle(this, angle)
        nothing
end


function setFrameToAngle(this::VectorRotationAnimation, angle)
        AllBinary.adjustFrameToAngle(this, angle)
        nothing
end


function setFrame(this::VectorRotationAnimation, index)
        AllBinary.setFrame(this, index)
        AllBinary.adjustAngle(this.angleInfo, AllBinary.getFrame(this))
        nothing
end


function adjustFrame(this::VectorRotationAnimation, newAngle)
        AllBinary.setFrame(this, AllBinary.getFrameForAngle(this.frameUtil, newAngle, ((AllBinary.getAngleIncrement(AllBinary.getAngleIncrementInfo(this.angleInfo))) % Int32)))
        nothing
end


function adjustFrameToAngle(this::VectorRotationAnimation, newAngle)
        AllBinary.adjustFrame(this, AllBinary.getValue(newAngle))
        nothing
end

