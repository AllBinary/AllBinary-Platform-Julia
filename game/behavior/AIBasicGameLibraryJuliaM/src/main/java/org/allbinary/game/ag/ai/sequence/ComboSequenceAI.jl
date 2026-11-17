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
# package org.allbinary.game.ag.ai.sequence

# extends SequenceAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ComboSequenceAI <: JObject
    ComboSequenceAI() = new()
end


function initFieldsComboSequenceAI(this::ComboSequenceAI)
    nothing
end


function initComboSequenceAI(this::ComboSequenceAI, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        initSequenceAI(this, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        nothing
end

function newComboSequenceAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    this = ComboSequenceAI()
    initComboSequenceAI(this, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    this
end


function processAI(this::ComboSequenceAI, allBinaryLayerManager)
        local artificialIntelligenceInterfaceArray = AllBinary.getArtificialIntelligenceInterface(this)
        local size::Int32 = Int32(Base.length(artificialIntelligenceInterfaceArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.setIndex(this, index)
            AllBinary.processAI(this, allBinaryLayerManager)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

