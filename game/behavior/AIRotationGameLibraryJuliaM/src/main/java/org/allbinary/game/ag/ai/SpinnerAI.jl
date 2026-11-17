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
mutable struct SpinnerAI <: JObject
    isEven::Bool
    direction::Any
    SpinnerAI() = new()
end


function initFieldsSpinnerAI(this::SpinnerAI)
    this.isEven = false
    this.direction = nothing
    this.isEven = false
    
    nothing
end


function initSpinnerAI(this::SpinnerAI, direction, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsSpinnerAI(this)
        this.direction = direction
        nothing
end

function newSpinnerAI(direction, ownerLayerInterface, gameInput)
    this = SpinnerAI()
    initSpinnerAI(this, direction, ownerLayerInterface, gameInput)
    this
end


function processAI(this::SpinnerAI, allBinaryLayerManager)
        if this.isEven
            AllBinary.processKeyAI(this, this.direction[Int32(0) + 1])
            this.isEven = false
        else
            AllBinary.processKeyAI(this, staticGet_KEY_NUM1(Canvas))
            this.isEven = true
        end
        nothing
end

