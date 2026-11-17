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
mutable struct ScrollOverAtEndAI <: JObject
    ScrollOverAtEndAI() = new()
end


function initFieldsScrollOverAtEndAI(this::ScrollOverAtEndAI)
    nothing
end


function initScrollOverAtEndAI(this::ScrollOverAtEndAI, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        nothing
end

function newScrollOverAtEndAI(ownerLayerInterface, gameInput)
    this = ScrollOverAtEndAI()
    initScrollOverAtEndAI(this, ownerLayerInterface, gameInput)
    this
end


function processAI(this::ScrollOverAtEndAI, allBinaryLayerManager)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local x::Int32 = AllBinary.getXP(ownerLayerInterface)
        local y::Int32 = AllBinary.getYP(ownerLayerInterface)
        local width::Int32 = AllBinary.getWidth(ownerLayerInterface)
        local height::Int32 = AllBinary.getHeight(ownerLayerInterface)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        if x > AllBinary.getLastWidth(displayInfo)
            AllBinary.setPosition(ownerLayerInterface, Int32(0), y, AllBinary.getZP(ownerLayerInterface))
        end
        if y > AllBinary.getLastHeight(displayInfo)
            AllBinary.setPosition(ownerLayerInterface, x, Int32(0), AllBinary.getZP(ownerLayerInterface))
        end
        if x < -width
            AllBinary.setPosition(ownerLayerInterface, AllBinary.getLastWidth(displayInfo) - width, y, AllBinary.getZP(ownerLayerInterface))
        end
        if y < -height
            AllBinary.setPosition(ownerLayerInterface, x, AllBinary.getLastHeight(displayInfo) - height, AllBinary.getZP(ownerLayerInterface))
        end
        nothing
end

