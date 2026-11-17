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
# package org.allbinary.game.layer.pickup

mutable struct PickedUpLayerType <: JObject
    name::Any
    PickedUpLayerType() = new()
end


function initFieldsPickedUpLayerType(this::PickedUpLayerType)
    this.name = nothing
    
    nothing
end


function initPickedUpLayerType(this::PickedUpLayerType, name)
        initFieldsPickedUpLayerType(this)
        this.name = name
        nothing
end

function newPickedUpLayerType(name)
    this = PickedUpLayerType()
    initPickedUpLayerType(this, name)
    this
end


function toString(this::PickedUpLayerType)
        return this.name
end

