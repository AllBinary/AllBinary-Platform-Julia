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
mutable struct SimultaneousCompoundIndexedAnimation <: JObject
    animationInterfaceArray::Any
    SimultaneousCompoundIndexedAnimation() = new()
end


function initFieldsSimultaneousCompoundIndexedAnimation(this::SimultaneousCompoundIndexedAnimation)
    this.animationInterfaceArray = nothing
    
    nothing
end


function initSimultaneousCompoundIndexedAnimation(this::SimultaneousCompoundIndexedAnimation, animationInterfaceArray, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsSimultaneousCompoundIndexedAnimation(this)
        this.animationInterfaceArray = animationInterfaceArray
        nothing
end

function newSimultaneousCompoundIndexedAnimation(animationInterfaceArray, animationBehavior)
    this = SimultaneousCompoundIndexedAnimation()
    initSimultaneousCompoundIndexedAnimation(this, animationInterfaceArray, animationBehavior)
    this
end


function setFrame(this::SimultaneousCompoundIndexedAnimation, frameIndex)
        local indexedAnimation = nothing
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            indexedAnimation = (this.animationInterfaceArray[index + 1])
            AllBinary.setFrame(indexedAnimation, frameIndex)
            finally
            end
            end
        end
        nothing
end


function getFrame(this::SimultaneousCompoundIndexedAnimation)
        local indexedAnimation = (this.animationInterfaceArray[Int32(0) + 1])
        return AllBinary.getFrame(indexedAnimation)
end


function getSize(this::SimultaneousCompoundIndexedAnimation)
        local indexedAnimation = (this.animationInterfaceArray[Int32(0) + 1])
        return AllBinary.getSize(indexedAnimation)
end


function previousFrame(this::SimultaneousCompoundIndexedAnimation)
        local indexedAnimation = nothing
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            indexedAnimation = (this.animationInterfaceArray[index + 1])
            AllBinary.previousFrame(indexedAnimation)
            finally
            end
            end
        end
        nothing
end


function setSequence(this::SimultaneousCompoundIndexedAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::SimultaneousCompoundIndexedAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function nextFrame(this::SimultaneousCompoundIndexedAnimation)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.nextFrame(this.animationInterfaceArray[index + 1])
            finally
            end
            end
        end
        nothing
end


function paintXY(this::SimultaneousCompoundIndexedAnimation, graphics, x, y)
        local size::Int32 = Int32(Base.length(this.animationInterfaceArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.paintXY(this.animationInterfaceArray[index + 1], graphics, x, y)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function paintThreedXYZ(this::SimultaneousCompoundIndexedAnimation, graphics, x, y, z)
        local size::Int32 = Int32(Base.length(this.animationInterfaceArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.paintThreedXYZ(this.animationInterfaceArray[index + 1], graphics, x, y, z)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function getAnimationInterfaceArray(this::SimultaneousCompoundIndexedAnimation)
        return this.animationInterfaceArray
end


function setAnimationInterfaceArray(this::SimultaneousCompoundIndexedAnimation, animationInterfaceArray)
        this.animationInterfaceArray = animationInterfaceArray
        nothing
end

