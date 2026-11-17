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

# extends RelativeRelationship: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RelativeLayerRelationship <: JObject
    layer::Any
    RelativeLayerRelationship() = new()
end


function initFieldsRelativeLayerRelationship(this::RelativeLayerRelationship)
    this.layer = nothing
    this.layer = staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer)
    nothing
end


function initRelativeLayerRelationship(this::RelativeLayerRelationship, layer, point, typesAllowedList)
        initRelativeRelationship(this, point, typesAllowedList)
        initFieldsRelativeLayerRelationship(this)
        this.layer = layer
        nothing
end

function newRelativeLayerRelationship(layer, point, typesAllowedList)
    this = RelativeLayerRelationship()
    initRelativeLayerRelationship(this, layer, point, typesAllowedList)
    this
end


function getX(this::RelativeLayerRelationship)
        return AllBinary.getXP(this.layer) + AllBinary.getX(this)
end


function getY(this::RelativeLayerRelationship)
        return AllBinary.getYP(this.layer) + AllBinary.getY(this)
end


function getZ(this::RelativeLayerRelationship)
        return AllBinary.getZP(this.layer) + AllBinary.getZ(this)
end

