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
mutable struct KeyPressesAI <: JObject
    on::Bool
    keys::Any
    KeyPressesAI() = new()
end


function initFieldsKeyPressesAI(this::KeyPressesAI)
    this.on = false
    this.keys = nothing
    this.on = true
    
    nothing
end


function initKeyPressesAI(this::KeyPressesAI, hashtable, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsKeyPressesAI(this)
        this.keys = jNewArray(Int32, AllBinary.size(hashtable), nothing)
        local objectArray = AllBinary.getKeysAsArray(AllBinary.getInstance(HashtableUtil), hashtable)
        local size::Int32 = Int32(Base.length(objectArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            this.keys[index + 1] = (AllBinary.get(hashtable, (objectArray[index + 1])))
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

function newKeyPressesAI(hashtable, ownerLayerInterface, gameInput)
    this = KeyPressesAI()
    initKeyPressesAI(this, hashtable, ownerLayerInterface, gameInput)
    this
end


function processAI(this::KeyPressesAI, allBinaryLayerManager)
        if this.on
            let
                local index::Int32 = Int32(0)
                while index < Int32(Base.length(this.keys))
                try
                AllBinary.processKeyAI(this, AllBinary.intValue(this.keys[index + 1]))
                finally
                    index += Int32(1)
                end
                end
            end
        end
        nothing
end


function toggle(this::KeyPressesAI)
        if AllBinary.isOn(this)
            AllBinary.setOn(this, false)
        else
            AllBinary.setOn(this, true)
        end
        nothing
end


function disable(this::KeyPressesAI)
        AllBinary.setOn(this, false)
        nothing
end


function enable(this::KeyPressesAI)
        AllBinary.setOn(this, true)
        nothing
end


function setOn(this::KeyPressesAI, on)
        this.on = on
        nothing
end


function isOn(this::KeyPressesAI)
        return this.on
end

