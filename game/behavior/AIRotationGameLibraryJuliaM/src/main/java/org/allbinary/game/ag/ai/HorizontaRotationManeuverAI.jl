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
# package org.allbinary.game.ag.ai

# extends BasicAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HorizontaRotationManeuverAI <: JObject
    circularIndexUtil::Any
    currentSpeedDivisor::Int32
    rotationAnimationInterface::Any
    baseVelocityInterface::Any
    velocityInterface::Any
    HorizontaRotationManeuverAI() = new()
end


function initFieldsHorizontaRotationManeuverAI(this::HorizontaRotationManeuverAI)
    this.circularIndexUtil = nothing
    this.currentSpeedDivisor = Int32(0)
    this.rotationAnimationInterface = nothing
    this.baseVelocityInterface = nothing
    this.velocityInterface = nothing
    this.circularIndexUtil = AllBinary.createInstanceAt(CircularIndexUtil, Int32(10), staticGet_MAX_VALUE(Integer))
    this.currentSpeedDivisor = Int32(5)
    
    
    
    nothing
end


function initHorizontaRotationManeuverAI(this::HorizontaRotationManeuverAI, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsHorizontaRotationManeuverAI(this)
        local rotationAnimationInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
        this.rotationAnimationInterface = AllBinary.getRotationAnimationInterface(rotationAnimationInterfaceCompositeInterface)
        local velocityInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
        this.baseVelocityInterface = AllBinary.getVelocityProperties(velocityInterfaceCompositeInterface)
        this.velocityInterface = (this.baseVelocityInterface)
        local rotationAnimationInterface = (this.rotationAnimationInterface)
        local angleIncrementInfo = AllBinary.getAngleIncrementInfo(AllBinary.getAngleInfoP(rotationAnimationInterface))
        AllBinary.setFrame(rotationAnimationInterfaceCompositeInterface, AllBinary.intValue(angleIncrementInfo.RIGHT_FRAME))
        nothing
end

function newHorizontaRotationManeuverAI(ownerLayerInterface, gameInput)
    this = HorizontaRotationManeuverAI()
    initHorizontaRotationManeuverAI(this, ownerLayerInterface, gameInput)
    this
end


function transition(this::HorizontaRotationManeuverAI)
        local rotationAnimationInterface = (this.rotationAnimationInterface)
        local angleIncrementInfo = AllBinary.getAngleIncrementInfo(AllBinary.getAngleInfoP(rotationAnimationInterface))
        local rotationAnimationInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
        AllBinary.setFrame(rotationAnimationInterfaceCompositeInterface, AllBinary.intValue(angleIncrementInfo.RIGHT_FRAME))
        local allbinaryLayer = AllBinary.getOwnerLayerInterface(this)
        AllBinary.setPosition(allbinaryLayer, AllBinary.getXP(allbinaryLayer), Int32(1), AllBinary.getZP(allbinaryLayer))
        nothing
end


function processAI(this::HorizontaRotationManeuverAI, allBinaryLayerManager)
        local rotationAnimationInterface = ((this.rotationAnimationInterface))
        local angleIncrementInfo = AllBinary.getAngleIncrementInfo(AllBinary.getAngleInfoP(rotationAnimationInterface))
        local frame::Int32 = AllBinary.getFrame(this.rotationAnimationInterface)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        if AllBinary.getXP(ownerLayerInterface) - AllBinary.getWidth(ownerLayerInterface) <= Int32(0) && frame == AllBinary.intValue(angleIncrementInfo.LEFT_FRAME)
            AllBinary.reverse(this)
            AllBinary.drop(this)
        end
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        if AllBinary.getX2(ownerLayerInterface) + AllBinary.getWidth(ownerLayerInterface) > AllBinary.getLastWidth(displayInfo) && frame == AllBinary.intValue(angleIncrementInfo.RIGHT_FRAME)
            AllBinary.reverse(this)
            AllBinary.accelerate(this)
            AllBinary.drop(this)
        end
        local index::Int32 = AllBinary.getIndex(this.circularIndexUtil)
        if index % this.currentSpeedDivisor == Int32(0) && index % Int32(2) == Int32(0)
            AllBinary.processKeyAI(this, staticGet_UP(Canvas))
            AllBinary.limitMaxXYVelocity(this.velocityInterface, AllBinary.getMaxForwardVelocity(this.velocityInterface) ÷ this.currentSpeedDivisor)
        end
        AllBinary.next(this.circularIndexUtil)
        if frame == AllBinary.intValue(angleIncrementInfo.LEFT_FRAME)
            AllBinary.processKeyAI(this, staticGet_KEY_NUM0(Canvas))
        elseif frame == AllBinary.intValue(angleIncrementInfo.RIGHT_FRAME)
            AllBinary.processKeyAI(this, staticGet_KEY_POUND(Canvas))
        end
        nothing
end


function reverse(this::HorizontaRotationManeuverAI)
        local rotationAnimationInterface = (this.rotationAnimationInterface)
        local angleIncrementInfo = AllBinary.getAngleIncrementInfo(AllBinary.getAngleInfoP(rotationAnimationInterface))
        local frame::Int32 = AllBinary.getFrame(this.rotationAnimationInterface)
        if frame == AllBinary.intValue(angleIncrementInfo.LEFT_FRAME)
            rotationAnimationInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
            AllBinary.setFrame(rotationAnimationInterfaceCompositeInterface, AllBinary.intValue(angleIncrementInfo.RIGHT_FRAME))
            AllBinary.zero(this.baseVelocityInterface)
        elseif frame == AllBinary.intValue(angleIncrementInfo.RIGHT_FRAME)
            local rotationAnimationInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
            AllBinary.setFrame(rotationAnimationInterfaceCompositeInterface, AllBinary.intValue(angleIncrementInfo.LEFT_FRAME))
            AllBinary.zero(this.baseVelocityInterface)
        end
        nothing
end


function accelerate(this::HorizontaRotationManeuverAI)
        if this.currentSpeedDivisor > Int32(1)
            this.currentSpeedDivisor -= Int32(1)
        end
        nothing
end


function drop(this::HorizontaRotationManeuverAI)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local y::Int32 = AllBinary.getYP(ownerLayerInterface)
        if AllBinary.getY2(ownerLayerInterface) + AllBinary.getHeight(ownerLayerInterface) > AllBinary.getLastHeight(displayInfo)
            y = Int32(0)
        else
            y += AllBinary.getHeight(ownerLayerInterface) + Int32(1)
        end
        AllBinary.setPosition(ownerLayerInterface, AllBinary.getXP(ownerLayerInterface), y, AllBinary.getZP(ownerLayerInterface))
        nothing
end


function getId(this::HorizontaRotationManeuverAI)
        return staticGet_AI_ID(ArtificialIntelligence)
end

