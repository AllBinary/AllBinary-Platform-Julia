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

# extends KeyPressesAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MultiKeyPressesAI <: JObject
    toggleTimeHelper::Any
    gameTickTimeDelayHelper::Any
    MultiKeyPressesAI() = new()
end


function initFieldsMultiKeyPressesAI(this::MultiKeyPressesAI)
    this.toggleTimeHelper = nothing
    this.gameTickTimeDelayHelper = nothing
    this.toggleTimeHelper = newTimeDelayHelper(Int32(600))
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    nothing
end


function initMultiKeyPressesAI(this::MultiKeyPressesAI, hashtable, ownerLayerInterface, gameInput)
        initKeyPressesAI(this, hashtable, ownerLayerInterface, gameInput)
        initFieldsMultiKeyPressesAI(this)
        AllBinary.update(this)
        nothing
end

function newMultiKeyPressesAI(hashtable, ownerLayerInterface, gameInput)
    this = MultiKeyPressesAI()
    initMultiKeyPressesAI(this, hashtable, ownerLayerInterface, gameInput)
    this
end


function processAI(this::MultiKeyPressesAI, allBinaryLayerManager)
        nothing
        nothing
end


function update(this::MultiKeyPressesAI)
        local gameInput = AllBinary.getGameInput(this)
        local keys = this.keys
        local size::Int32 = Int32(Base.length(keys))
        if AllBinary.isOn(this)
            let
                index = Int32(0)
                while index < size
                try
                key = AllBinary.intValue(keys[index + 1])
                if key != -Int32(1)
                    AllBinary.add(gameInput, AllBinary.getInstanceForKey(this.gameKeyEventFactory, this, key))
                end
                finally
                    index += Int32(1)
                end
                end
            end
        else
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                local key::Int32 = AllBinary.intValue(keys[index + 1])
                if key != -Int32(1)
                    AllBinary.addForRemoval(gameInput, AllBinary.getInstanceForKey(this.gameKeyEventFactory, this, key))
                end
                finally
                    index += Int32(1)
                end
                end
            end
        end
        nothing
end


function toggle(this::MultiKeyPressesAI)
        if AllBinary.isTime(this.toggleTimeHelper, this.gameTickTimeDelayHelper.startTime)
            AllBinary.toggle(this)
            AllBinary.update(this)
        end
        nothing
end


function disable(this::MultiKeyPressesAI)
        if AllBinary.isTime(this.toggleTimeHelper, this.gameTickTimeDelayHelper.startTime)
            AllBinary.disable(this)
            AllBinary.update(this)
        end
        nothing
end


function enable(this::MultiKeyPressesAI)
        if AllBinary.isTime(this.toggleTimeHelper, this.gameTickTimeDelayHelper.startTime)
            AllBinary.enable(this)
            AllBinary.update(this)
        end
        nothing
end

