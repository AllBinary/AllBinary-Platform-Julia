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

mutable struct PickedUpLayerTypeFactory <: JObject
    NONE::Any
    BEAM::Any
    MINE::Any
    PROJECTILE::Any
    ENHANCEMENT::Any
    MORPH::Any
    PART::Any
    HEAL::Any
    LIFE::Any
    POINTS::Any
    PickedUpLayerTypeFactory() = new()
end

const PickedUpLayerTypeFactory_instanceValue = Ref{Any}(nothing)
const PickedUpLayerTypeFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{PickedUpLayerTypeFactory})
    if !PickedUpLayerTypeFactory_instanceSet[]
        PickedUpLayerTypeFactory_instanceSet[] = true
        PickedUpLayerTypeFactory_instanceValue[] = newPickedUpLayerTypeFactory()
    end
    PickedUpLayerTypeFactory_instanceValue[]
end
function staticSet_instance(::Type{PickedUpLayerTypeFactory}, value)
    PickedUpLayerTypeFactory_instanceSet[] = true
    PickedUpLayerTypeFactory_instanceValue[] = value
end

function initFieldsPickedUpLayerTypeFactory(this::PickedUpLayerTypeFactory)
    this.NONE = nothing
    this.BEAM = nothing
    this.MINE = nothing
    this.PROJECTILE = nothing
    this.ENHANCEMENT = nothing
    this.MORPH = nothing
    this.PART = nothing
    this.HEAL = nothing
    this.LIFE = nothing
    this.POINTS = nothing
    this.NONE = newPickedUpLayerType(AllBinary.getInstance(StringUtil).NULL_STRING)
    this.BEAM = newPickedUpLayerType("BEAM")
    this.MINE = newPickedUpLayerType("MINE")
    this.PROJECTILE = newPickedUpLayerType("PROJECTILE")
    this.ENHANCEMENT = newPickedUpLayerType("Enhancement")
    this.MORPH = newPickedUpLayerType("Morph")
    this.PART = newPickedUpLayerType("Part")
    this.HEAL = newPickedUpLayerType("Heal")
    this.LIFE = newPickedUpLayerType("Life")
    this.POINTS = newPickedUpLayerType("Points")
    nothing
end

function initPickedUpLayerTypeFactory(this::PickedUpLayerTypeFactory)
    initFieldsPickedUpLayerTypeFactory(this)
end

function newPickedUpLayerTypeFactory()
    this = PickedUpLayerTypeFactory()
    initPickedUpLayerTypeFactory(this)
    this
end


function getInstance(::Type{PickedUpLayerTypeFactory})
        return staticGet_instance(PickedUpLayerTypeFactory)
end

