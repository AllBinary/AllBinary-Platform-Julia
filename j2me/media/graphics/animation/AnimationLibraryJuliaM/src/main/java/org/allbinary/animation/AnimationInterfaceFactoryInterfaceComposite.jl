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

mutable struct AnimationInterfaceFactoryInterfaceComposite <: JObject
    animationInterfaceFactoryInterfaceArray::Any
    AnimationInterfaceFactoryInterfaceComposite() = new()
end


function initFieldsAnimationInterfaceFactoryInterfaceComposite(this::AnimationInterfaceFactoryInterfaceComposite)
    this.animationInterfaceFactoryInterfaceArray = nothing
    
    nothing
end


function initAnimationInterfaceFactoryInterfaceComposite(this::AnimationInterfaceFactoryInterfaceComposite, basicAnimationInterfaceFactoryInterfaceArray)
        initFieldsAnimationInterfaceFactoryInterfaceComposite(this)
        this.animationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
        nothing
end

function newAnimationInterfaceFactoryInterfaceComposite(basicAnimationInterfaceFactoryInterfaceArray)
    this = AnimationInterfaceFactoryInterfaceComposite()
    initAnimationInterfaceFactoryInterfaceComposite(this, basicAnimationInterfaceFactoryInterfaceArray)
    this
end


function getInstance(this::AnimationInterfaceFactoryInterfaceComposite, instanceId)
        return AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
end


function getAnimationInterfaceFactoryInterfaceArray(this::AnimationInterfaceFactoryInterfaceComposite)
        return this.animationInterfaceFactoryInterfaceArray
end


function setInitialScale(this::AnimationInterfaceFactoryInterfaceComposite, scaleProperties)
        nothing
        nothing
end

