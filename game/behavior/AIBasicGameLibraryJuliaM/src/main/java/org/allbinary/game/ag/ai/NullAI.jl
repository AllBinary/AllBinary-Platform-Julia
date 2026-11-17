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

# extends ArtificialIntelligence: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullAI <: JObject
    NullAI() = new()
end


function initFieldsNullAI(this::NullAI)
    nothing
end


function initNullAI(this::NullAI)
        initArtificialIntelligence(this)
        initFieldsNullAI(this)
        nothing
        nothing
end

function newNullAI()
    this = NullAI()
    initNullAI(this)
    this
end


function processAI(this::NullAI, allBinaryLayerManager)
        nothing
        nothing
end

