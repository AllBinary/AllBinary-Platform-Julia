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

mutable struct NumberOnOwnGroupSequenceAIFactory <: JObject
    logUtil::Any
    NumberOnOwnGroupSequenceAIFactory() = new()
end


function initFieldsNumberOnOwnGroupSequenceAIFactory(this::NumberOnOwnGroupSequenceAIFactory)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initNumberOnOwnGroupSequenceAIFactory(this::NumberOnOwnGroupSequenceAIFactory)
    initFieldsNumberOnOwnGroupSequenceAIFactory(this)
end

function newNumberOnOwnGroupSequenceAIFactory()
    this = NumberOnOwnGroupSequenceAIFactory()
    initNumberOnOwnGroupSequenceAIFactory(this)
    this
end


function getInstance(this::NumberOnOwnGroupSequenceAIFactory, hashtable, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        local integerArray = AllBinary.getInstance(NumberInSameGroupSequence).NUMBER_ON_SAME_TEAM_SEQUENCE
        local list = newBasicArrayListD()
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(integerArray))
            try
            local integerCanBeNull = AllBinary.get(hashtable, (integerArray[index + 1]))
            if integerCanBeNull === nothing
                break
            end
            AllBinary.add(list, integerCanBeNull)
            finally
                index += Int32(1)
            end
            end
        end
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Total AI Properties: ")
        AllBinary.appendint(stringBuffer, AllBinary.size(list))
        AllBinary.append(stringBuffer, " == Total AI: ")
        AllBinary.appendint(stringBuffer, Int32(Base.length(artificialIntelligenceInterface)))
        AllBinary.append(stringBuffer, " + 1")
        local commonStrings = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, commonStrings.GET_INSTANCE)
        if Int32(Base.length(artificialIntelligenceInterface)) - Int32(1) > AllBinary.size(list)
            throw(jNewException("Exception", "Not enough AI properties."))
        end
        if Int32(Base.length(artificialIntelligenceInterface)) - Int32(1) < AllBinary.size(list)
            throw(jNewException("Exception", "Too Many AI properties."))
        end
        local numberOnSameTeam = jNewArray(Int32, AllBinary.size(list), nothing)
        let
            index = Int32(0)
            while index < Int32(Base.length(numberOnSameTeam))
            try
            numberOnSameTeam[index + 1] = (list.objectArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        return newNumberOnOwnGroupSequenceAI(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
end

