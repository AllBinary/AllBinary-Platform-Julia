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
# package org.allbinary.game.layer

mutable struct LayerPlacementType <: JObject
    type_::Int32
    LayerPlacementType() = new()
end


function initFieldsLayerPlacementType(this::LayerPlacementType)
    this.type_ = Int32(0)
    
    nothing
end


function initLayerPlacementType(this::LayerPlacementType, type_)
        initFieldsLayerPlacementType(this)
        this.type_ = type_
        nothing
end

function newLayerPlacementType(type_)
    this = LayerPlacementType()
    initLayerPlacementType(this, type_)
    this
end


function getType(this::LayerPlacementType)
        return this.type_
end


function setType(this::LayerPlacementType, type_)
        this.type_ = type_
        nothing
end

