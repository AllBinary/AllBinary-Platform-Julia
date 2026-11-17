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
mutable struct NumberLayersSequenceAI <: JObject
    numberOfLayersLeft::Int32
    NumberLayersSequenceAI() = new()
end


function initFieldsNumberLayersSequenceAI(this::NumberLayersSequenceAI)
    this.numberOfLayersLeft = Int32(0)
    
    nothing
end


function initNumberLayersSequenceAI(this::NumberLayersSequenceAI, numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        initSequenceAI(this, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        initFieldsNumberLayersSequenceAI(this)
        this.numberOfLayersLeft = numberOfEnemiesLeft
        nothing
end

function newNumberLayersSequenceAI(numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    this = NumberLayersSequenceAI()
    initNumberLayersSequenceAI(this, numberOfEnemiesLeft, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    this
end


function processAI(this::NumberLayersSequenceAI, allBinaryLayerManager)
        if AllBinary.getIndex(this) == Int32(0)
            if AllBinary.getSize(allBinaryLayerManager) < this.numberOfLayersLeft
                AllBinary.setIndex(this, Int32(1))
            end
        end
        AllBinary.processAI(this, allBinaryLayerManager)
        nothing
end

