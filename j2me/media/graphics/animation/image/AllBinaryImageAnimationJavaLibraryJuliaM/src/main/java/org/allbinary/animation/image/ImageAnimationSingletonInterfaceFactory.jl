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
# package org.allbinary.animation.image

# extends SingletonAnimationInterfaceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageAnimationSingletonInterfaceFactory <: JObject
    ImageAnimationSingletonInterfaceFactory() = new()
end


function initFieldsImageAnimationSingletonInterfaceFactory(this::ImageAnimationSingletonInterfaceFactory)
    nothing
end


function initImageAnimationSingletonInterfaceFactory(this::ImageAnimationSingletonInterfaceFactory, animationInterface, width, height)
        initSingletonAnimationInterfaceFactory(this, newImageAnimation(AllBinary.getInstanceWH(AllBinary.getInstance(AnimationFrameToImageUtil), width, height, animationInterface), AllBinary.getInstance(AnimationBehavior)))
        nothing
end

function newImageAnimationSingletonInterfaceFactory(animationInterface, width, height)
    this = ImageAnimationSingletonInterfaceFactory()
    initImageAnimationSingletonInterfaceFactory(this, animationInterface, width, height)
    this
end

