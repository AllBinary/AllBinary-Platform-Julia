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
# package org.allbinary.animation.image.sprite

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SpriteIndexedAnimation <: JObject
    sprite::Any
    image::Any
    basicColorArray::Any
    SpriteIndexedAnimation() = new()
end


function initFieldsSpriteIndexedAnimation(this::SpriteIndexedAnimation)
    this.sprite = nothing
    this.image = nothing
    this.basicColorArray = nothing
    
    
    
    nothing
end


function initSpriteIndexedAnimation(this::SpriteIndexedAnimation, sprite, image, basicColorArray, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsSpriteIndexedAnimation(this)
        this.sprite = sprite
        this.image = image
        this.basicColorArray = basicColorArray
        if Int32(Base.length(this.basicColorArray)) != Int32(0) && AllBinary.getSize(this) != Int32(Base.length(this.basicColorArray))
            throw(jNewException("Exception", AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).TOTAL_LABEL), AllBinary.getSize(this)), "!="), Int32(Base.length(this.basicColorArray))))))
        end
        nothing
end

function newSpriteIndexedAnimation(sprite, image, basicColorArray, animationBehavior)
    this = SpriteIndexedAnimation()
    initSpriteIndexedAnimation(this, sprite, image, basicColorArray, animationBehavior)
    this
end


function getAnimationSize(this::SpriteIndexedAnimation)
        return AllBinary.getSize(this)
end


function setBasicColorP(this::SpriteIndexedAnimation, basicColor)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(this.basicColorArray))
            try
            if basicColor === this.basicColorArray[index + 1]
                AllBinary.setFrame(this, index)
                break
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function getBasicColorP(this::SpriteIndexedAnimation)
        if Int32(Base.length(this.basicColorArray)) < AllBinary.getFrame(this)
            return this.basicColorArray[AllBinary.getFrame(this) + 1]
        else
            return AllBinary.getInstance(BasicColorFactory).WHITE
        end
end


function paintFrame(this::SpriteIndexedAnimation, graphics, frame, x, y)
        AllBinary.setFrame(this, frame)
        AllBinary.setPosition(this.sprite, x, y)
        AllBinary.paint(this.sprite, graphics)
        nothing
end


function paintXY(this::SpriteIndexedAnimation, graphics, x, y)
        AllBinary.setPosition(this.sprite, x, y)
        AllBinary.paint(this.sprite, graphics)
        nothing
end


function paint(this::SpriteIndexedAnimation, graphics)
        AllBinary.paint(this.sprite, graphics)
        nothing
end


function nextFrame(this::SpriteIndexedAnimation)
        AllBinary.nextFrame(this.sprite)
        nothing
end


function previousFrame(this::SpriteIndexedAnimation)
        AllBinary.prevFrame(this.sprite)
        nothing
end


function getSize(this::SpriteIndexedAnimation)
        return AllBinary.getRawFrameCount(this.sprite)
end


function setFrame(this::SpriteIndexedAnimation, frame)
        AllBinary.setFrame(this.sprite, frame)
        nothing
end


function getFrame(this::SpriteIndexedAnimation)
        return AllBinary.getFrame(this.sprite)
end


function isLastFrame(this::SpriteIndexedAnimation)
        if AllBinary.getFrame(this.sprite) == AllBinary.getSize(this) - Int32(1)
            return true
        else
            return false
        end
end


function getLastFrame(this::SpriteIndexedAnimation)
        return AllBinary.getSize(this)
end


function setSequence(this::SpriteIndexedAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::SpriteIndexedAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function close(this::SpriteIndexedAnimation)
        nothing
        nothing
end


function finalize(this::SpriteIndexedAnimation)
        nothing
        nothing
end

