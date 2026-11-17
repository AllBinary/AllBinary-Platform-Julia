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

# extends LurchAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LurchRotationAI <: JObject
    rotationAnimationInterface::Any
    LurchRotationAI() = new()
end


function initFieldsLurchRotationAI(this::LurchRotationAI)
    this.rotationAnimationInterface = nothing
    
    nothing
end


function initLurchRotationAI(this::LurchRotationAI, ownerLayerInterface, gameInput)
        initLurchAI(this, ownerLayerInterface, gameInput)
        initFieldsLurchRotationAI(this)
        local rotationAnimationInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
        this.rotationAnimationInterface = AllBinary.getRotationAnimationInterface(rotationAnimationInterfaceCompositeInterface)
        AllBinary.update(this)
        nothing
end

function newLurchRotationAI(ownerLayerInterface, gameInput)
    this = LurchRotationAI()
    initLurchRotationAI(this, ownerLayerInterface, gameInput)
    this
end


function reverse(this::LurchRotationAI)
        AllBinary.reverse(this)
        AllBinary.update(this)
        nothing
end


function update(this::LurchRotationAI)
        if this.currentRelativeAngle == Int32(0)
            rotationAnimationInterface = (this.rotationAnimationInterface)
            angleIncrementInfo = AllBinary.getAngleIncrementInfo(AllBinary.getAngleInfoP(rotationAnimationInterface))
            rotationAnimationInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
            AllBinary.setFrame(rotationAnimationInterfaceCompositeInterface, AllBinary.intValue(angleIncrementInfo.RIGHT_FRAME))
        elseif this.currentRelativeAngle == Int32(180)
            local rotationAnimationInterface = (this.rotationAnimationInterface)
            local angleIncrementInfo = AllBinary.getAngleIncrementInfo(AllBinary.getAngleInfoP(rotationAnimationInterface))
            local rotationAnimationInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
            AllBinary.setFrame(rotationAnimationInterfaceCompositeInterface, AllBinary.intValue(angleIncrementInfo.LEFT_FRAME))
        end
        nothing
end

