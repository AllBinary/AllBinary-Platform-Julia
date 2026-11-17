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
# package org.allbinary.layer.relationship

# extends RelativeLayerRelationship: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MiddleRelativeLayerRelationship <: JObject
    MiddleRelativeLayerRelationship() = new()
end


function initFieldsMiddleRelativeLayerRelationship(this::MiddleRelativeLayerRelationship)
    nothing
end


function initMiddleRelativeLayerRelationship(this::MiddleRelativeLayerRelationship, layer)
        initRelativeLayerRelationship(this, layer, AllBinary.createXY(AllBinary.getInstance(PointFactory), AllBinary.getHalfWidth(layer), AllBinary.getHalfHeight(layer)), AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil)))
        nothing
end

function newMiddleRelativeLayerRelationship(layer)
    this = MiddleRelativeLayerRelationship()
    initMiddleRelativeLayerRelationship(this, layer)
    this
end

