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
# package org.allbinary.game.combat.damage

mutable struct ExplosionResources <: JObject
    EXPLOSION_90_RESOURCE::Any
    EXPLOSION_60_RESOURCE::Any
    HALF_EXPLOSION_RESOURCE::Any
    THIRD_EXPLOSION_RESOURCE::Any
    ExplosionResources() = new()
end

const ExplosionResources_instanceValue = Ref{Any}(nothing)
const ExplosionResources_instanceSet = Ref(false)
function staticGet_instance(::Type{ExplosionResources})
    if !ExplosionResources_instanceSet[]
        ExplosionResources_instanceSet[] = true
        ExplosionResources_instanceValue[] = newExplosionResources()
    end
    ExplosionResources_instanceValue[]
end
function staticSet_instance(::Type{ExplosionResources}, value)
    ExplosionResources_instanceSet[] = true
    ExplosionResources_instanceValue[] = value
end

function initFieldsExplosionResources(this::ExplosionResources)
    this.EXPLOSION_90_RESOURCE = nothing
    this.EXPLOSION_60_RESOURCE = nothing
    this.HALF_EXPLOSION_RESOURCE = nothing
    this.THIRD_EXPLOSION_RESOURCE = nothing
    this.EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png"
    this.EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png"
    this.HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png"
    this.THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png"
    nothing
end


function getInstance(::Type{ExplosionResources})
        return staticGet_instance(ExplosionResources)
end


function initExplosionResources(this::ExplosionResources)
        initFieldsExplosionResources(this)
        nothing
        nothing
end

function newExplosionResources()
    this = ExplosionResources()
    initExplosionResources(this)
    this
end

