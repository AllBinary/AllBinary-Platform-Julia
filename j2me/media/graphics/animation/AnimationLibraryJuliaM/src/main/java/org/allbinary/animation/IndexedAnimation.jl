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

# extends Animation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct IndexedAnimation <: JObject
    logUtil::Any
    commonStrings::Any
    animationBehaviorP::Any
    IndexedAnimation() = new()
end


function initFieldsIndexedAnimation(this::IndexedAnimation)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.animationBehaviorP = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    nothing
end


function initIndexedAnimation(this::IndexedAnimation, animationBehavior)
        initAnimation(this)
        initFieldsIndexedAnimation(this)
        this.animationBehaviorP = animationBehavior
        nothing
end

function newIndexedAnimation(animationBehavior)
    this = IndexedAnimation()
    initIndexedAnimation(this, animationBehavior)
    this
end


function getAnimationBehavior(this::IndexedAnimation)
        return this.animationBehaviorP
end


function reset(this::IndexedAnimation)
        AllBinary.reset(this.animationBehaviorP)
        AllBinary.setFrame(this, Int32(0))
        nothing
end


function setFrame(this::IndexedAnimation, index)
        nothing
        nothing
end


function getFrame(this::IndexedAnimation)
        return Int32(0)
end


function getAnimationSize(this::IndexedAnimation)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function getSize(this::IndexedAnimation)
        return Int32(0)
end


function previousFrame(this::IndexedAnimation)
        nothing
        nothing
end


function isLastFrame(this::IndexedAnimation)
        if AllBinary.getFrame(this) == AllBinary.getSize(this) - Int32(1)
            return true
        else
            return false
        end
end


function setSequence(this::IndexedAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::IndexedAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function setState(this::IndexedAnimation, indexedAnimation)
        AllBinary.setFrame(this, AllBinary.getFrame(indexedAnimation))
        AllBinary.setDx(this, AllBinary.getDx(indexedAnimation))
        AllBinary.setDy(this, AllBinary.getDy(indexedAnimation))
        nothing
end


function getWidth(this::IndexedAnimation)
        return Int32(0)
end


function getHeight(this::IndexedAnimation)
        return Int32(0)
end

