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

mutable struct VectorExplosionAnimationFactory <: JObject
    vectorExplosionGenerator::Any
    basicColor::Any
    animationBehaviorFactory::Any
    VectorExplosionAnimationFactory() = new()
end


function initFieldsVectorExplosionAnimationFactory(this::VectorExplosionAnimationFactory)
    this.vectorExplosionGenerator = nothing
    this.basicColor = nothing
    this.animationBehaviorFactory = nothing
    this.vectorExplosionGenerator = AllBinary.getInstance(VectorExplosionGenerator)
    this.basicColor = AllBinary.getInstance(BasicColorFactory).WHITE
    
    nothing
end


function initVectorExplosionAnimationFactory(this::VectorExplosionAnimationFactory, basicColor, animationBehaviorFactory)
        initFieldsVectorExplosionAnimationFactory(this)
        this.animationBehaviorFactory = animationBehaviorFactory
        AllBinary.setBasicColorP(this, basicColor)
        nothing
end

function newVectorExplosionAnimationFactory(basicColor, animationBehaviorFactory)
    this = VectorExplosionAnimationFactory()
    initVectorExplosionAnimationFactory(this, basicColor, animationBehaviorFactory)
    this
end


function getInstanceAnimation(this::VectorExplosionAnimationFactory, animationInterface)
        local vectorRotationAnimationInterface = (animationInterface)
        local frame::Int32 = AllBinary.getFrame(vectorRotationAnimationInterface)
        local framePoints = AllBinary.getPoints(vectorRotationAnimationInterface, frame)
        local points = AllBinary.getInstance(this.vectorExplosionGenerator, framePoints, Int32(6), this.vectorExplosionGenerator.ROTATION)
        return newVectorRotationAnimation(points, AllBinary.getBasicColorP(this), AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
end


function setBasicColorP(this::VectorExplosionAnimationFactory, basicColor)
        this.basicColor = basicColor
        nothing
end


function getBasicColorP(this::VectorExplosionAnimationFactory)
        return this.basicColor
end

