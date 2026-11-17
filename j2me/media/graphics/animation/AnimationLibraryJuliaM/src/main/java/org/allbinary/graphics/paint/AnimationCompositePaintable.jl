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
# package org.allbinary.graphics.paint

# extends InitUpdatePaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AnimationCompositePaintable <: JObject
    animationInterface::Any
    AnimationCompositePaintable() = new()
end


function initFieldsAnimationCompositePaintable(this::AnimationCompositePaintable)
    this.animationInterface = nothing
    
    nothing
end


function initAnimationCompositePaintable(this::AnimationCompositePaintable, animationInterface)
        initInitUpdatePaintable(this)
        initFieldsAnimationCompositePaintable(this)
        this.animationInterface = animationInterface
        nothing
end

function newAnimationCompositePaintable(animationInterface)
    this = AnimationCompositePaintable()
    initAnimationCompositePaintable(this, animationInterface)
    this
end


function paint(this::AnimationCompositePaintable, graphics)
        AllBinary.paintXY(this.animationInterface, graphics, Int32(0), Int32(0))
        nothing
end


function paintThreed(this::AnimationCompositePaintable, graphics)
        AllBinary.paintThreedXYZ(this.animationInterface, graphics, Int32(0), Int32(0), Int32(0))
        nothing
end

