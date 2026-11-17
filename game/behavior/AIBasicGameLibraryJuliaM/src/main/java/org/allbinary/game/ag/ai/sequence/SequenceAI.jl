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

# extends ArrayAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SequenceAI <: JObject
    index::Int32
    SequenceAI() = new()
end

const SequenceAI_SEQUENCE_AIValue = Ref{Any}(nothing)
const SequenceAI_SEQUENCE_AISet = Ref(false)
function staticGet_SEQUENCE_AI(::Type{SequenceAI})
    if !SequenceAI_SEQUENCE_AISet[]
        SequenceAI_SEQUENCE_AISet[] = true
        SequenceAI_SEQUENCE_AIValue[] = "Sequence AI"
    end
    SequenceAI_SEQUENCE_AIValue[]
end
function staticSet_SEQUENCE_AI(::Type{SequenceAI}, value)
    SequenceAI_SEQUENCE_AISet[] = true
    SequenceAI_SEQUENCE_AIValue[] = value
end

function initFieldsSequenceAI(this::SequenceAI)
    this.index = Int32(0)
    this.index = Int32(0)
    nothing
end


function initSequenceAI(this::SequenceAI, artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
        initArrayAI(this, artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
        initFieldsSequenceAI(this)
        nothing
end

function newSequenceAI(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
    this = SequenceAI()
    initSequenceAI(this, artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
    this
end


function processAI(this::SequenceAI, allBinaryLayerManager)
        AllBinary.processAI(AllBinary.getArtificialIntelligenceInterface(this)[this.index + 1], allBinaryLayerManager)
        nothing
end


function next(this::SequenceAI)
        this.index += Int32(1)
        local artificialIntelligenceInterface = AllBinary.getSelectedArtificialIntelligenceInterface(this)
        if AllBinary.getId(artificialIntelligenceInterface) == staticGet_AI_ID(ArtificialIntelligence)
            local artificialIntelligenceTransitionInterface = (artificialIntelligenceInterface)
            AllBinary.transition(artificialIntelligenceTransitionInterface)
        end
        nothing
end


function getIndex(this::SequenceAI)
        return this.index
end


function setIndex(this::SequenceAI, index)
        this.index = index
        nothing
end


function getSelectedArtificialIntelligenceInterface(this::SequenceAI)
        return AllBinary.getArtificialIntelligenceInterface(this)[this.index + 1]
end


function getName(this::SequenceAI)
        return staticGet_SEQUENCE_AI(SequenceAI)
end


function toString(this::SequenceAI)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.toString(this))
        AllBinary.append(stringBuffer, " Selected AI: ")
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), AllBinary.getSelectedArtificialIntelligenceInterface(this)))
        return AllBinary.toString(stringBuffer)
end

