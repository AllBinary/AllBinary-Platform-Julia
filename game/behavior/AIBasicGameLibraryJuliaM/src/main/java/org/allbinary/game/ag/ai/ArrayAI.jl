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
mutable struct ArrayAI <: JObject
    artificialIntelligenceInterfaceArray::Any
    ArrayAI() = new()
end


function initFieldsArrayAI(this::ArrayAI)
    this.artificialIntelligenceInterfaceArray = nothing
    
    nothing
end


function initArrayAI(this::ArrayAI, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsArrayAI(this)
        this.artificialIntelligenceInterfaceArray = artificialIntelligenceInterface
        nothing
end

function newArrayAI(artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    this = ArrayAI()
    initArrayAI(this, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    this
end


function processAI(this::ArrayAI, allBinaryLayerManager)
        local size::Int32 = Int32(Base.length(this.artificialIntelligenceInterfaceArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.processAI(this.artificialIntelligenceInterfaceArray[index + 1], allBinaryLayerManager)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function getArtificialIntelligenceInterface(this::ArrayAI)
        return this.artificialIntelligenceInterfaceArray
end

