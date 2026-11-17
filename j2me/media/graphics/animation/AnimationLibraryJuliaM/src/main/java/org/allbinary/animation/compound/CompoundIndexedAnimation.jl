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
# package org.allbinary.animation.compound

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CompoundIndexedAnimation <: JObject
    circularIndexUtil::Any
    animationInterfaceArray::Any
    CompoundIndexedAnimation() = new()
end


function initFieldsCompoundIndexedAnimation(this::CompoundIndexedAnimation)
    this.circularIndexUtil = nothing
    this.animationInterfaceArray = nothing
    
    
    nothing
end


function initCompoundIndexedAnimation(this::CompoundIndexedAnimation, animationInterfaceArray, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsCompoundIndexedAnimation(this)
        this.animationInterfaceArray = animationInterfaceArray
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, Int32(Base.length(this.animationInterfaceArray)))
        nothing
end

function newCompoundIndexedAnimation(animationInterfaceArray, animationBehavior)
    this = CompoundIndexedAnimation()
    initCompoundIndexedAnimation(this, animationInterfaceArray, animationBehavior)
    this
end


function setFrame(this::CompoundIndexedAnimation, index)
        local indexedAnimation = (this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
        AllBinary.setFrame(indexedAnimation, index)
        nothing
end


function getFrame(this::CompoundIndexedAnimation)
        local indexedAnimation = (this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
        return AllBinary.getFrame(indexedAnimation)
end


function getSize(this::CompoundIndexedAnimation)
        local indexedAnimation = (this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
        return AllBinary.getSize(indexedAnimation)
end


function previousFrame(this::CompoundIndexedAnimation)
        local indexedAnimation = (this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
        AllBinary.previousFrame(indexedAnimation)
        nothing
end


function setSequence(this::CompoundIndexedAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::CompoundIndexedAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function nextFrame(this::CompoundIndexedAnimation)
        AllBinary.nextFrame(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
        nothing
end


function paintXY(this::CompoundIndexedAnimation, graphics, x, y)
        AllBinary.paintXY(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1], graphics, x, y)
        nothing
end


function paintThreedXYZ(this::CompoundIndexedAnimation, graphics, x, y, z)
        AllBinary.paintThreedXYZ(this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1], graphics, x, y, z)
        nothing
end


function getCurrentAnimation(this::CompoundIndexedAnimation)
        return (this.animationInterfaceArray[AllBinary.getIndex(this.circularIndexUtil) + 1])
end


function nextAnimation(this::CompoundIndexedAnimation)
        local frame::Int32 = AllBinary.getFrame(this)
        AllBinary.next(this.circularIndexUtil)
        AllBinary.setFrame(this, frame)
        nothing
end


function previousAnimation(this::CompoundIndexedAnimation)
        local frame::Int32 = AllBinary.getFrame(this)
        AllBinary.previous(this.circularIndexUtil)
        AllBinary.setFrame(this, frame)
        nothing
end


function setAnimation(this::CompoundIndexedAnimation, index)
        local frame::Int32 = AllBinary.getFrame(this)
        AllBinary.setIndex(this.circularIndexUtil, index)
        AllBinary.setFrame(this, frame)
        nothing
end


function getAnimationInterfaceArray(this::CompoundIndexedAnimation)
        return this.animationInterfaceArray
end


function setAnimationInterfaceArray(this::CompoundIndexedAnimation, animationInterfaceArray)
        this.animationInterfaceArray = animationInterfaceArray
        nothing
end


function set(this::CompoundIndexedAnimation, gl)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.set(this.animationInterfaceArray[index + 1], gl)
            finally
            end
            end
        end
        nothing
end

