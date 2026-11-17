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
mutable struct UpDownVectorAI <: JObject
    velocityInterface::Any
    index::Int32
    UpDownVectorAI() = new()
end


function initFieldsUpDownVectorAI(this::UpDownVectorAI)
    this.velocityInterface = nothing
    this.index = Int32(0)
    
    this.index = Int32(0)
    nothing
end


function initUpDownVectorAI(this::UpDownVectorAI, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsUpDownVectorAI(this)
        local velocityInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
        this.velocityInterface = AllBinary.getVelocityProperties(velocityInterfaceCompositeInterface)
        AllBinary.setint(AllBinary.getVelocityYBasicDecimalP(this.velocityInterface), Int32(0))
        nothing
end

function newUpDownVectorAI(ownerLayerInterface, gameInput)
    this = UpDownVectorAI()
    initUpDownVectorAI(this, ownerLayerInterface, gameInput)
    this
end


function processAI(this::UpDownVectorAI, allBinaryLayerManager)
        local y::Int32 = AllBinary.getHeight(AllBinary.getOwnerLayerInterface(this)) * Int32(270)
        if this.index < Int32(5)
            basicDecimal = AllBinary.getVelocityYBasicDecimalP(this.velocityInterface)
            AllBinary.setint(basicDecimal, Int32(0))
            AllBinary.addint(basicDecimal, y)
            this.index += Int32(1)
        elseif this.index < Int32(10)
            local basicDecimal = AllBinary.getVelocityYBasicDecimalP(this.velocityInterface)
            AllBinary.setint(basicDecimal, Int32(0))
            AllBinary.subtractint(basicDecimal, y)
            this.index += Int32(1)
        else
            this.index = Int32(0)
            AllBinary.processAI(this, allBinaryLayerManager)
        end
        nothing
end

