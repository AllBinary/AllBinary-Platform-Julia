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
mutable struct ScrollOverXImmediateYStopAI <: JObject
    ScrollOverXImmediateYStopAI() = new()
end


function initFieldsScrollOverXImmediateYStopAI(this::ScrollOverXImmediateYStopAI)
    nothing
end


function initScrollOverXImmediateYStopAI(this::ScrollOverXImmediateYStopAI, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        nothing
end

function newScrollOverXImmediateYStopAI(ownerLayerInterface, gameInput)
    this = ScrollOverXImmediateYStopAI()
    initScrollOverXImmediateYStopAI(this, ownerLayerInterface, gameInput)
    this
end


function processAI(this::ScrollOverXImmediateYStopAI, allBinaryLayerManager)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local x::Int32 = AllBinary.getXP(ownerLayerInterface)
        local y::Int32 = AllBinary.getYP(ownerLayerInterface)
        local x2::Int32 = AllBinary.getX2(ownerLayerInterface)
        local y2::Int32 = AllBinary.getY2(ownerLayerInterface)
        local width::Int32 = AllBinary.getWidth(ownerLayerInterface)
        local height::Int32 = AllBinary.getHeight(ownerLayerInterface)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        if x2 > AllBinary.getLastWidth(displayInfo)
            AllBinary.setPosition(ownerLayerInterface, Int32(0), y, AllBinary.getZP(ownerLayerInterface))
        end
        if y2 > AllBinary.getLastHeight(displayInfo)
            AllBinary.setPosition(ownerLayerInterface, x, AllBinary.getLastHeight(displayInfo) - height, AllBinary.getZP(ownerLayerInterface))
        end
        if x < Int32(0)
            AllBinary.setPosition(ownerLayerInterface, AllBinary.getLastWidth(displayInfo) - width, y, AllBinary.getZP(ownerLayerInterface))
        end
        if y < Int32(0)
            AllBinary.setPosition(ownerLayerInterface, x, Int32(0), AllBinary.getZP(ownerLayerInterface))
        end
        nothing
end

