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
mutable struct StopAtEdgeAI <: JObject
    StopAtEdgeAI() = new()
end


function initFieldsStopAtEdgeAI(this::StopAtEdgeAI)
    nothing
end


function initStopAtEdgeAI(this::StopAtEdgeAI, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        nothing
end

function newStopAtEdgeAI(ownerLayerInterface, gameInput)
    this = StopAtEdgeAI()
    initStopAtEdgeAI(this, ownerLayerInterface, gameInput)
    this
end


function processAI(this::StopAtEdgeAI, allBinaryLayerManager)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local velocityInterfaceCompositeInterface = ((ownerLayerInterface))
        local velocityProperties = AllBinary.getVelocityProperties(velocityInterfaceCompositeInterface)
        local x::Int32 = AllBinary.getXP(ownerLayerInterface)
        local y::Int32 = AllBinary.getYP(ownerLayerInterface)
        local x2::Int32 = AllBinary.getX2(ownerLayerInterface)
        local y2::Int32 = AllBinary.getY2(ownerLayerInterface)
        local width::Int32 = AllBinary.getWidth(ownerLayerInterface)
        local height::Int32 = AllBinary.getHeight(ownerLayerInterface)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        if x2 + AllBinary.getScaled(AllBinary.getVelocityXBasicDecimalP(velocityProperties)) > AllBinary.getLastWidth(displayInfo)
            AllBinary.setPosition(ownerLayerInterface, AllBinary.getLastWidth(displayInfo) - width, y, AllBinary.getZP(ownerLayerInterface))
            AllBinary.setint(AllBinary.getVelocityYBasicDecimalP(velocityProperties), Int32(0))
        end
        if y2 + AllBinary.getScaled(AllBinary.getVelocityYBasicDecimalP(velocityProperties)) > AllBinary.getLastHeight(displayInfo)
            AllBinary.setPosition(ownerLayerInterface, x, AllBinary.getLastHeight(displayInfo) - height, AllBinary.getZP(ownerLayerInterface))
            AllBinary.setint(AllBinary.getVelocityXBasicDecimalP(velocityProperties), Int32(0))
        end
        if x + AllBinary.getScaled(AllBinary.getVelocityXBasicDecimalP(velocityProperties)) < Int32(0)
            AllBinary.setPosition(ownerLayerInterface, Int32(0), y, AllBinary.getZP(ownerLayerInterface))
            AllBinary.setint(AllBinary.getVelocityYBasicDecimalP(velocityProperties), Int32(0))
        end
        if y + AllBinary.getScaled(AllBinary.getVelocityYBasicDecimalP(velocityProperties)) < Int32(0)
            AllBinary.setPosition(ownerLayerInterface, x, Int32(0), AllBinary.getZP(ownerLayerInterface))
            AllBinary.setint(AllBinary.getVelocityXBasicDecimalP(velocityProperties), Int32(0))
        end
        nothing
end

