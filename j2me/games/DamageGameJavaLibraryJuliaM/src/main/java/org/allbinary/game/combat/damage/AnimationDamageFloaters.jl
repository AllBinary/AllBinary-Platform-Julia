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
# package org.allbinary.game.combat.damage

# extends DamageFloaters: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AnimationDamageFloaters <: JObject
    logUtil::Any
    layerInterface::Any
    animationInterfaceArray::Any
    circularIndexUtil::Any
    dx::Int32
    dy::Int32
    AnimationDamageFloaters() = new()
end


function initFieldsAnimationDamageFloaters(this::AnimationDamageFloaters)
    this.logUtil = nothing
    this.layerInterface = nothing
    this.animationInterfaceArray = nothing
    this.circularIndexUtil = nothing
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    
    
    
    
    nothing
end


function initAnimationDamageFloaters(this::AnimationDamageFloaters, layerInterface, animationInterfaceArray, dx, dy)
        initDamageFloaters(this)
        initFieldsAnimationDamageFloaters(this)
        this.animationInterfaceArray = animationInterfaceArray
        let
            local index::Int32 = Int32(Base.length(this.animationInterfaceArray)) - Int32(1)
            while index >= Int32(0)
            try
            AllBinary.setFrame(this.animationInterfaceArray[index + 1], AllBinary.getSize(this.animationInterfaceArray[index + 1]) - Int32(1))
            finally
                index -= Int32(1)
            end
            end
        end
        this.layerInterface = layerInterface
        this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, Int32(Base.length(this.animationInterfaceArray)))
        this.dx = dx
        this.dy = dy
        nothing
end

function newAnimationDamageFloaters(layerInterface, animationInterfaceArray, dx, dy)
    this = AnimationDamageFloaters()
    initAnimationDamageFloaters(this, layerInterface, animationInterfaceArray, dx, dy)
    this
end


function add(this::AnimationDamageFloaters, damage)
        local i::Int32 = AllBinary.getIndex(this.circularIndexUtil)
        AllBinary.setFrame(this.animationInterfaceArray[i + 1], Int32(0))
        AllBinary.next(this.circularIndexUtil)
        nothing
end


function paint(this::AnimationDamageFloaters, graphics)
        try
            local viewPosition = AllBinary.getViewPosition(this.layerInterface)
            local x::Int32 = AllBinary.getX(viewPosition)
            local y::Int32 = AllBinary.getY(viewPosition)
            let
                local index::Int32 = Int32(0)
                while index < Int32(Base.length(this.animationInterfaceArray))
                try
                local animationInterface = this.animationInterfaceArray[index + 1]
                if AllBinary.getFrame(animationInterface) < AllBinary.getAnimationSize(animationInterface) - Int32(1)
                    local delta::Int32 = AllBinary.getFrame(animationInterface) * Int32(20)
                    AllBinary.paintXY(animationInterface, graphics, x + this.dx, y - delta + this.dy)
                    AllBinary.nextFrame(animationInterface)
                end
                finally
                    index += Int32(1)
                end
                end
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            local canvasStrings = AllBinary.getInstance(CanvasStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, canvasStrings.PAINT, e)
        end
        nothing
end

