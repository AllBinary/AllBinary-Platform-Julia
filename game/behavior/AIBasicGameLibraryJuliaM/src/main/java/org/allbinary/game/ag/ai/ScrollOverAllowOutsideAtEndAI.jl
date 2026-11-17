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
mutable struct ScrollOverAllowOutsideAtEndAI <: JObject
    ScrollOverAllowOutsideAtEndAI() = new()
end


function initFieldsScrollOverAllowOutsideAtEndAI(this::ScrollOverAllowOutsideAtEndAI)
    nothing
end


function initScrollOverAllowOutsideAtEndAI(this::ScrollOverAllowOutsideAtEndAI, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        nothing
end

function newScrollOverAllowOutsideAtEndAI(ownerLayerInterface, gameInput)
    this = ScrollOverAllowOutsideAtEndAI()
    initScrollOverAllowOutsideAtEndAI(this, ownerLayerInterface, gameInput)
    this
end


function processAI(this::ScrollOverAllowOutsideAtEndAI, allBinaryLayerManager)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local x::Int32 = AllBinary.getXP(ownerLayerInterface)
        local y::Int32 = AllBinary.getYP(ownerLayerInterface)
        local width::Int32 = AllBinary.getWidth(ownerLayerInterface)
        local height::Int32 = AllBinary.getHeight(ownerLayerInterface)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        if x > AllBinary.getLastWidth(displayInfo)
            AllBinary.setPosition(ownerLayerInterface, -width, y, AllBinary.getZP(ownerLayerInterface))
        end
        if y > AllBinary.getLastHeight(displayInfo)
            AllBinary.setPosition(ownerLayerInterface, x, -height, AllBinary.getZP(ownerLayerInterface))
        end
        if x < -width
            AllBinary.setPosition(ownerLayerInterface, AllBinary.getLastWidth(displayInfo) + width, y, AllBinary.getZP(ownerLayerInterface))
        end
        if y < -height
            AllBinary.setPosition(ownerLayerInterface, x, AllBinary.getLastHeight(displayInfo) + height, AllBinary.getZP(ownerLayerInterface))
        end
        nothing
end

