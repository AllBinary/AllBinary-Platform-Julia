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

# extends SequenceAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NumberOnOwnGroupSequenceAI <: JObject
    numberOnSameTeam::Any
    NumberOnOwnGroupSequenceAI() = new()
end


function initFieldsNumberOnOwnGroupSequenceAI(this::NumberOnOwnGroupSequenceAI)
    this.numberOnSameTeam = nothing
    
    nothing
end


function initNumberOnOwnGroupSequenceAI(this::NumberOnOwnGroupSequenceAI, numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        initSequenceAI(this, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        initFieldsNumberOnOwnGroupSequenceAI(this)
        this.numberOnSameTeam = numberOnSameTeam
        nothing
end

function newNumberOnOwnGroupSequenceAI(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    this = NumberOnOwnGroupSequenceAI()
    initNumberOnOwnGroupSequenceAI(this, numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    this
end


function processAI(this::NumberOnOwnGroupSequenceAI, allBinaryLayerManager)
        local layerInterface = AllBinary.getOwnerLayerInterface(this)
        local index::Int32 = AllBinary.getIndex(this)
        if Int32(Base.length(this.numberOnSameTeam)) > index
            local size::Int32 = AllBinary.getGroupSizeFromInterface(AllBinary.getInstance(GroupLayerManagerListener), layerInterface)
            if AllBinary.intValue(this.numberOnSameTeam[index + 1]) > size
                AllBinary.next(this)
            end
        end
        AllBinary.processAI(this, allBinaryLayerManager)
        nothing
end

