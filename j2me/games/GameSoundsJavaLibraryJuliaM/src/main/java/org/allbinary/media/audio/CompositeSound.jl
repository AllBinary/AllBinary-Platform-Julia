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
# package org.allbinary.media.audio

# extends Sound: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CompositeSound <: JObject
    CompositeSound() = new()
end


function initFieldsCompositeSound(this::CompositeSound)
    nothing
end


function initCompositeSound(this::CompositeSound, resource)
        initSound(this, resource)
        nothing
end

function newCompositeSound(resource)
    this = CompositeSound()
    initCompositeSound(this, resource)
    this
end


function init(this::CompositeSound)
        AllBinary.setPlayerP(this, newPlayerComposite(AllBinary.createPlayer(AllBinaryMediaManager, AllBinary.getResource(this)), Int32(570)))
        nothing
end

