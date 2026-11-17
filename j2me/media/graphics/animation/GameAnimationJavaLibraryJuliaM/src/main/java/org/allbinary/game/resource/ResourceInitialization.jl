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
# package org.allbinary.game.resource

# extends Init: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ResourceInitialization <: JObject
    ResourceInitialization() = new()
end


function initFieldsResourceInitialization(this::ResourceInitialization)
    nothing
end

function initResourceInitialization(this::ResourceInitialization)
    initInit(this)
    initFieldsResourceInitialization(this)
end

function newResourceInitialization()
    this = ResourceInitialization()
    initResourceInitialization(this)
    this
end

