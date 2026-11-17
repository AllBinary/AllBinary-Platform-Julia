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

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImageAnimation <: JObject
    image::Any
    anchor::Int32
    ImageAnimation() = new()
end


function initFieldsImageAnimation(this::ImageAnimation)
    this.image = nothing
    this.anchor = Int32(0)
    
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initImageAnimation(this::ImageAnimation, image, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsImageAnimation(this)
        this.image = image
        nothing
end

function newImageAnimation(image, animationBehavior)
    this = ImageAnimation()
    initImageAnimation(this, image, animationBehavior)
    this
end


function getAnimationSize(this::ImageAnimation)
        return AllBinary.getSize(this)
end


function nextFrame(this::ImageAnimation)
        nothing
        nothing
end


function previousFrame(this::ImageAnimation)
        nothing
        nothing
end


function setFrame(this::ImageAnimation, index)
        nothing
        nothing
end


function getFrame(this::ImageAnimation)
        return Int32(0)
end


function getSize(this::ImageAnimation)
        return Int32(1)
end


function setSequence(this::ImageAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::ImageAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function paintXY(this::ImageAnimation, graphics, x, y)
        AllBinary.drawImage(graphics, this.image, x, y, this.anchor)
        nothing
end


function getImage(this::ImageAnimation)
        return this.image
end


function close(this::ImageAnimation)
        AllBinary.disposeImage(AllBinary.getInstance(DisposalUtil), this.image)
        nothing
end


function finalize(this::ImageAnimation)
        AllBinary.disposeImage(AllBinary.getInstance(DisposalUtil), this.image)
        nothing
end

