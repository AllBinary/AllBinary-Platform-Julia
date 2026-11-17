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
mutable struct ScrollOverAtHalfAI <: JObject
    ScrollOverAtHalfAI() = new()
end


function initFieldsScrollOverAtHalfAI(this::ScrollOverAtHalfAI)
    nothing
end


function initScrollOverAtHalfAI(this::ScrollOverAtHalfAI, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        nothing
end

function newScrollOverAtHalfAI(ownerLayerInterface, gameInput)
    this = ScrollOverAtHalfAI()
    initScrollOverAtHalfAI(this, ownerLayerInterface, gameInput)
    this
end


function processAI(this::ScrollOverAtHalfAI, allBinaryLayerManager)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local x::Int32 = AllBinary.getXP(ownerLayerInterface)
        local y::Int32 = AllBinary.getYP(ownerLayerInterface)
        local halfWidth::Int32 = AllBinary.getHalfWidth(ownerLayerInterface)
        local halfHeight::Int32 = AllBinary.getHalfHeight(ownerLayerInterface)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        if x > AllBinary.getLastWidth(displayInfo) - halfWidth
            AllBinary.setPosition(ownerLayerInterface, halfWidth + Int32(1), y, AllBinary.getZP(ownerLayerInterface))
        end
        if y > AllBinary.getLastHeight(displayInfo) - halfHeight
            AllBinary.setPosition(ownerLayerInterface, x, halfHeight + Int32(1), AllBinary.getZP(ownerLayerInterface))
        end
        if x < -halfWidth
            AllBinary.setPosition(ownerLayerInterface, AllBinary.getLastWidth(displayInfo) - halfWidth, y, AllBinary.getZP(ownerLayerInterface))
        end
        if y < -halfHeight
            AllBinary.setPosition(ownerLayerInterface, x, AllBinary.getLastHeight(displayInfo) - halfHeight, AllBinary.getZP(ownerLayerInterface))
        end
        nothing
end

