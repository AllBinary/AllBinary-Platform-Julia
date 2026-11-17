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
# package org.allbinary.animation.special

# extends SpecialAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TitleAnimation <: JObject
    systemWrapper::Any
    deltaX::Float32
    deltaY::Float32
    deltaZ::Float32
    basicColorArray::Any
    dxArray::Any
    dyArray::Any
    widthP::Int32
    animationInterfaceArray::Any
    sizeP::Int32
    y::Int32
    lastFrameStartTime::Int64
    displayInfoSingleton::Any
    CLEAR_COLOR::Any
    TitleAnimation() = new()
end


function initFieldsTitleAnimation(this::TitleAnimation)
    this.systemWrapper = nothing
    this.deltaX = 0.0f0
    this.deltaY = 0.0f0
    this.deltaZ = 0.0f0
    this.basicColorArray = nothing
    this.dxArray = nothing
    this.dyArray = nothing
    this.widthP = Int32(0)
    this.animationInterfaceArray = nothing
    this.sizeP = Int32(0)
    this.y = Int32(0)
    this.lastFrameStartTime = Int64(0)
    this.displayInfoSingleton = nothing
    this.CLEAR_COLOR = nothing
    this.systemWrapper = AllBinary.getInstance(ABSystemWrapper)
    this.deltaX = 0.0f0
    this.deltaY = 0.0f0
    this.deltaZ = 0.0f0
    
    
    
    
    
    
    
    
    this.displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
    this.CLEAR_COLOR = AllBinary.getInstance(BasicColorFactory).CLEAR_COLOR
    nothing
end


function createAnimation(::Type{TitleAnimation}, animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width)
        return newTitleAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, newIndexedAnimationBehavior(Int32(1), Int32(250)))
end


function initTitleAnimation(this::TitleAnimation, animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, animationBehavior)
        initSpecialAnimation(this, animationBehavior)
        initFieldsTitleAnimation(this)
        this.lastFrameStartTime = AllBinary.currentTimeMillis(this.systemWrapper)
        this.animationInterfaceArray = animationInterfaceArray
        this.sizeP = Int32(Base.length(this.animationInterfaceArray))
        this.basicColorArray = basicColorArray
        this.dxArray = dxArray
        this.dyArray = dyArray
        this.y = y
        this.widthP = width
        AllBinary.reset(this)
        nothing
end

function newTitleAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, animationBehavior)
    this = TitleAnimation()
    initTitleAnimation(this, animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, animationBehavior)
    this
end


function nextFrame(this::TitleAnimation)
        local currentTime::Int64 = AllBinary.currentTimeMillis(this.systemWrapper)
        local totalTimeElapsed::Int64 = currentTime - this.lastFrameStartTime
        local indexedAnimationBehavior = (AllBinary.getAnimationBehavior(this))
        if totalTimeElapsed > indexedAnimationBehavior.frameDelayTime
            AllBinary.previousFrame(this)
            this.lastFrameStartTime = currentTime
        end
        if AllBinary.getFrame(this.animationInterfaceArray[Int32(0) + 1]) == Int32(0)
            indexedAnimationBehavior.loopIndex += 1
        end
        nothing
end


function isComplete(this::TitleAnimation)
        local indexedAnimationBehavior = (AllBinary.getAnimationBehavior(this))
        if indexedAnimationBehavior.loopTotal == -Int32(1) || indexedAnimationBehavior.loopIndex < indexedAnimationBehavior.loopTotal || AllBinary.getFrame(this) != Int32(0)
            return false
        else
            return true
        end
end


function setSequence(this::TitleAnimation, sequence)
        nothing
        nothing
end


function getSequence(this::TitleAnimation)
        return AllBinary.getArrayInstance(PrimitiveIntUtil)
end


function getSize(this::TitleAnimation)
        return AllBinary.getSize(this.animationInterfaceArray[Int32(0) + 1])
end


function getFrame(this::TitleAnimation)
        return AllBinary.getFrame(this.animationInterfaceArray[Int32(0) + 1])
end


function setFrame(this::TitleAnimation, frame)
        let
            local index::Int32 = Int32(0)
            while index < this.sizeP
            try
            AllBinary.setFrame(this.animationInterfaceArray[index + 1], frame)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function setLastFrame(this::TitleAnimation)
        AllBinary.setFrame(this, AllBinary.getSize(this) - Int32(1))
        nothing
end


function reset(this::TitleAnimation)
        AllBinary.setLastFrame(this)
        local indexedAnimationBehavior = ((AllBinary.getAnimationBehavior(this)))
        AllBinary.reset(indexedAnimationBehavior)
        nothing
end


function previousFrame(this::TitleAnimation)
        let
            local index::Int32 = Int32(0)
            while index < this.sizeP
            try
            AllBinary.previousFrame(this.animationInterfaceArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function paintFrameXY(this::TitleAnimation, graphics, frame, x, y)
        AllBinary.setFrame(this, frame)
        AllBinary.paintXY(this, graphics, x, y)
        nothing
end


function paintXY(this::TitleAnimation, graphics, ax, ay)
        local x::Int32 = Int32(0)
        if this.widthP != staticGet_MIN_VALUE(Integer)
            x = ((AllBinary.getLastWidth(this.displayInfoSingleton) - this.widthP) ÷ Int32(2))
        end
        local deltaX::Int32 = Int32(0)
        local deltaY::Int32 = Int32(0)
        let
            local index::Int32 = Int32(0)
            while index < this.sizeP
            try
            deltaX = this.dxArray[index + 1] + x
            deltaY = this.dyArray[index + 1] + this.y
            if this.basicColorArray[index + 1] !== this.CLEAR_COLOR
                AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, this.basicColorArray[index + 1])
            end
            AllBinary.paintXY(this.animationInterfaceArray[index + 1], graphics, deltaX, deltaY)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

