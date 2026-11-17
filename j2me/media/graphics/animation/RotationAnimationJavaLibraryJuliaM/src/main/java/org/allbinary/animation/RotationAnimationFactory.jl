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

mutable struct RotationAnimationFactory <: JObject
    totalAngle::Int16
    angleIncrement::Int16
    RotationAnimationFactory() = new()
end


function initFieldsRotationAnimationFactory(this::RotationAnimationFactory)
    this.totalAngle = Int16(0)
    this.angleIncrement = Int16(0)
    
    
    nothing
end


function createFactory(::Type{RotationAnimationFactory})
        local totalAngle::Int16 = AllBinary.getInstance(AngleFactory).TOTAL_ANGLE
        return newRotationAnimationFactory(totalAngle, (((totalAngle ÷ AllBinary.getGameControlFidelity(AllBinary.getInstance(GameConfigurationCentral)))) % Int16))
end


function initRotationAnimationFactory(this::RotationAnimationFactory, totalAngle, angleIncrement)
        initFieldsRotationAnimationFactory(this)
        this.totalAngle = totalAngle
        this.angleIncrement = angleIncrement
        nothing
end

function newRotationAnimationFactory(totalAngle, angleIncrement)
    this = RotationAnimationFactory()
    initRotationAnimationFactory(this, totalAngle, angleIncrement)
    this
end


function getInstance(this::RotationAnimationFactory, instanceId)
        return AllBinary.createTotalAngle(NullRotationAnimation, AllBinary.getInstance(AngleInfo, this.angleIncrement), this.totalAngle, AllBinary.getInstance(AnimationBehavior))
end


function getInstanceAnimation(this::RotationAnimationFactory, animationInterface)
        return AllBinary.createTotalAngle(NullRotationAnimation, AllBinary.getInstance(AngleInfo, this.angleIncrement), this.totalAngle, AllBinary.getInstance(AnimationBehavior))
end


function setInitialScale(this::RotationAnimationFactory, scaleProperties)
        nothing
        nothing
end

