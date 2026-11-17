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
# package org.allbinary.game.ag.ai.tactical

# extends BasicAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicRandomAI <: JObject
    i_random::Int32
    inputProbability::Any
    visitor::Any
    keyArray::Any
    myRandomFactory::Any
    BasicRandomAI() = new()
end


function initFieldsBasicRandomAI(this::BasicRandomAI)
    this.i_random = Int32(0)
    this.inputProbability = nothing
    this.visitor = nothing
    this.keyArray = nothing
    this.myRandomFactory = nothing
    this.i_random = Int32(0)
    
    
    this.keyArray = Int32[staticGet_UP(Canvas), staticGet_DOWN(Canvas), staticGet_LEFT(Canvas), staticGet_RIGHT(Canvas), staticGet_KEY_NUM1(Canvas), staticGet_KEY_NUM7(Canvas), staticGet_KEY_NUM9(Canvas)]
    this.myRandomFactory = AllBinary.getInstance(MyRandomFactory)
    nothing
end


function initBasicRandomAI(this::BasicRandomAI, ownerLayerInterface, gameInput, inputProbability, visitor)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsBasicRandomAI(this)
        this.inputProbability = inputProbability
        this.visitor = visitor
        nothing
end

function newBasicRandomAI(ownerLayerInterface, gameInput, inputProbability, visitor)
    this = BasicRandomAI()
    initBasicRandomAI(this, ownerLayerInterface, gameInput, inputProbability, visitor)
    this
end


function processAI(this::BasicRandomAI, allBinaryLayerManager)
        if AllBinary.isTime(AllBinary.getTimeDelayHelper(this.inputProbability), AllBinary.getInstance(GameTickTimeDelayHelperFactory).startTime)
            this.i_random = AllBinary.getAbsoluteNextInt(this.myRandomFactory, AllBinary.getMax(this.inputProbability))
            local repeat::Bool = false
            local repeatLikelyhoodIntegerArray = AllBinary.getRepeatLikelyhoodIntegerArray(this.inputProbability)
            if AllBinary.getLastKey(this) != -Int32(1) && AllBinary.intValue(repeatLikelyhoodIntegerArray[AllBinary.getLastKey(this) + 1]) >= this.i_random
                repeat = true
            end
            if !repeat
                local likelyhoodIntegerArray = AllBinary.getLikelyhoodIntegerArray(this.inputProbability)
                this.i_random = AllBinary.getAbsoluteNextInt(this.myRandomFactory, AllBinary.getMax(this.inputProbability))
                local size::Int32 = Int32(Base.length(this.keyArray))
                local likelyhoodIntegerKeyArray = nothing
                let
                    local index::Int32 = Int32(0)
                    while index < size
                    try
                    local key::Int32 = this.keyArray[index + 1]
                    likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key + 1]
                    if Int32(Base.length(likelyhoodIntegerArray)) >= key && likelyhoodIntegerKeyArray[Int32(0) + 1] !== nothing
                        if this.i_random >= AllBinary.intValue(likelyhoodIntegerKeyArray[Int32(0) + 1]) && this.i_random < AllBinary.intValue(likelyhoodIntegerKeyArray[Int32(1) + 1])
                            AllBinary.setLastKey(this, key)
                            break
                        end
                    end
                    finally
                        index += Int32(1)
                    end
                    end
                end
            end
            AllBinary.visit(this.visitor, this)
        end
        nothing
end

