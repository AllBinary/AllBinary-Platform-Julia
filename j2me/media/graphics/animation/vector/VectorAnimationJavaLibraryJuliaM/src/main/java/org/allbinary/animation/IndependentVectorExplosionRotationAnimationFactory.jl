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

mutable struct IndependentVectorExplosionRotationAnimationFactory <: JObject
    framePoints::Any
    vectorInfo::Any
    basicColor::Any
    vectorAnimationFactoryInterface::Any
    vectorExplosionGenerator::Any
    IndependentVectorExplosionRotationAnimationFactory() = new()
end


function initFieldsIndependentVectorExplosionRotationAnimationFactory(this::IndependentVectorExplosionRotationAnimationFactory)
    this.framePoints = nothing
    this.vectorInfo = nothing
    this.basicColor = nothing
    this.vectorAnimationFactoryInterface = nothing
    this.vectorExplosionGenerator = nothing
    this.framePoints = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY_ARRAY_ARRAY
    
    
    
    this.vectorExplosionGenerator = AllBinary.getInstance(VectorExplosionGenerator)
    nothing
end


function initIndependentVectorExplosionRotationAnimationFactory(this::IndependentVectorExplosionRotationAnimationFactory, vectorInfo, basicColor, vectorAnimationFactoryInterface)
        initFieldsIndependentVectorExplosionRotationAnimationFactory(this)
        this.vectorInfo = vectorInfo
        this.basicColor = basicColor
        this.vectorAnimationFactoryInterface = vectorAnimationFactoryInterface
        AllBinary.init(this)
        nothing
end

function newIndependentVectorExplosionRotationAnimationFactory(vectorInfo, basicColor, vectorAnimationFactoryInterface)
    this = IndependentVectorExplosionRotationAnimationFactory()
    initIndependentVectorExplosionRotationAnimationFactory(this, vectorInfo, basicColor, vectorAnimationFactoryInterface)
    this
end


function init(this::IndependentVectorExplosionRotationAnimationFactory)
        this.framePoints = AllBinary.getInstance(AllBinary.getInstance(VectorRotationGenerator), this.vectorInfo)
        nothing
end


function getInstanceAnimation(this::IndependentVectorExplosionRotationAnimationFactory, animationInterface)
        local frame::Int32 = Int32(0)
        if animationInterface !== nothing
            local rotationAnimationInterface = (animationInterface)
            frame = AllBinary.getFrame(rotationAnimationInterface)
        end
        local points = AllBinary.getInstance(this.vectorExplosionGenerator, this.framePoints[frame + 1], Int32(6), this.vectorExplosionGenerator.ROTATION)
        return AllBinary.getInstance(this.vectorAnimationFactoryInterface, points, this.basicColor)
end

