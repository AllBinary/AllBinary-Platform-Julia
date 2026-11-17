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
# package org.allbinary.game.ag.ai.tactical

# extends BasicAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HorizontalManeuverAI <: JObject
    currentRelativeAngle::Int32
    currentSpeed::Int32
    HorizontalManeuverAI() = new()
end


function initFieldsHorizontalManeuverAI(this::HorizontalManeuverAI)
    this.currentRelativeAngle = Int32(0)
    this.currentSpeed = Int32(0)
    this.currentRelativeAngle = Int32(0)
    
    nothing
end


function initHorizontalManeuverAI(this::HorizontalManeuverAI, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsHorizontalManeuverAI(this)
        this.currentSpeed = Int32(5)
        nothing
end

function newHorizontalManeuverAI(ownerLayerInterface, gameInput)
    this = HorizontalManeuverAI()
    initHorizontalManeuverAI(this, ownerLayerInterface, gameInput)
    this
end


function processAI(this::HorizontalManeuverAI, allBinaryLayerManager)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local x::Int32 = AllBinary.getXP(ownerLayerInterface)
        if AllBinary.getXP(ownerLayerInterface) - this.currentSpeed <= Int32(0)
            AllBinary.reverse(this)
            AllBinary.drop(this)
        end
        if AllBinary.getX2(ownerLayerInterface) + this.currentSpeed > AllBinary.getLastWidth(AllBinary.getInstance(DisplayInfoSingleton))
            AllBinary.reverse(this)
            AllBinary.accelerate(this)
            AllBinary.drop(this)
        end
        if this.currentRelativeAngle == Int32(0)
            x += this.currentSpeed
        elseif this.currentRelativeAngle == Int32(180)
            x -= this.currentSpeed
        end
        AllBinary.setPosition(ownerLayerInterface, x, AllBinary.getYP(ownerLayerInterface), AllBinary.getZP(ownerLayerInterface))
        if this.currentRelativeAngle == Int32(0)
            AllBinary.processKeyAI(this, staticGet_KEY_NUM0(Canvas))
        elseif this.currentRelativeAngle == Int32(180)
            AllBinary.processKeyAI(this, staticGet_KEY_POUND(Canvas))
        end
        nothing
end


function reverse(this::HorizontalManeuverAI)
        if this.currentRelativeAngle == Int32(180)
            this.currentRelativeAngle = Int32(0)
        elseif this.currentRelativeAngle == Int32(0)
            this.currentRelativeAngle = Int32(180)
        end
        nothing
end


function accelerate(this::HorizontalManeuverAI)
        if this.currentSpeed < Int32(20)
            this.currentSpeed += Int32(1)
        end
        nothing
end


function drop(this::HorizontalManeuverAI)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local y::Int32 = AllBinary.getYP(ownerLayerInterface)
        if AllBinary.getY2(ownerLayerInterface) + AllBinary.getHeight(ownerLayerInterface) > AllBinary.getLastHeight(AllBinary.getInstance(DisplayInfoSingleton))
            y = Int32(0)
        else
            y += AllBinary.getHeight(ownerLayerInterface) + Int32(1)
        end
        AllBinary.setPosition(ownerLayerInterface, AllBinary.getXP(ownerLayerInterface), y, AllBinary.getZP(ownerLayerInterface))
        nothing
end

