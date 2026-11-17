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
mutable struct SimultaneousCompoundIndexAnimation <: JObject
    animationInterfaceArray::Any
    SimultaneousCompoundIndexAnimation() = new()
end


function initFieldsSimultaneousCompoundIndexAnimation(this::SimultaneousCompoundIndexAnimation)
    this.animationInterfaceArray = nothing
    
    nothing
end


function initSimultaneousCompoundIndexAnimation(this::SimultaneousCompoundIndexAnimation, animationInterfaceArray, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsSimultaneousCompoundIndexAnimation(this)
        this.animationInterfaceArray = animationInterfaceArray
        nothing
end

function newSimultaneousCompoundIndexAnimation(animationInterfaceArray, animationBehavior)
    this = SimultaneousCompoundIndexAnimation()
    initSimultaneousCompoundIndexAnimation(this, animationInterfaceArray, animationBehavior)
    this
end


function setFrame(this::SimultaneousCompoundIndexAnimation, frameIndex)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.setFrame(this.animationInterfaceArray[index + 1], frameIndex)
            finally
            end
            end
        end
        nothing
end


function getFrame(this::SimultaneousCompoundIndexAnimation)
        return AllBinary.getFrame(this.animationInterfaceArray[Int32(0) + 1])
end


function getAnimationSize(this::SimultaneousCompoundIndexAnimation)
        return AllBinary.getAnimationSize(this.animationInterfaceArray[Int32(0) + 1])
end


function getSize(this::SimultaneousCompoundIndexAnimation)
        return AllBinary.getSize(this.animationInterfaceArray[Int32(0) + 1])
end


function previousFrame(this::SimultaneousCompoundIndexAnimation)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.previousFrame(this.animationInterfaceArray[index + 1])
            finally
            end
            end
        end
        nothing
end


function nextFrame(this::SimultaneousCompoundIndexAnimation)
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


function setSequence(this::SimultaneousCompoundIndexAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::SimultaneousCompoundIndexAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function paintXY(this::SimultaneousCompoundIndexAnimation, graphics, x, y)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.paintXY(this.animationInterfaceArray[index + 1], graphics, x, y)
            finally
            end
            end
        end
        nothing
end


function paintThreedXYZ(this::SimultaneousCompoundIndexAnimation, graphics, x, y, z)
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.paintThreedXYZ(this.animationInterfaceArray[index + 1], graphics, x, y, z)
            finally
            end
            end
        end
        nothing
end


function set(this::SimultaneousCompoundIndexAnimation, gl)
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


function getAnimationInterfaceArray(this::SimultaneousCompoundIndexAnimation)
        return this.animationInterfaceArray
end


function setAnimationInterfaceArray(this::SimultaneousCompoundIndexAnimation, animationInterfaceArray)
        this.animationInterfaceArray = animationInterfaceArray
        nothing
end

