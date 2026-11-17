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
# package org.allbinary.game.ag.layer.hud.basic

mutable struct HudResources <: JObject
    RESOURCE_LIFE::Any
    RESOURCE_HEALTH::Any
    HudResources() = new()
end

const HudResources_instanceValue = Ref{Any}(nothing)
const HudResources_instanceSet = Ref(false)
function staticGet_instance(::Type{HudResources})
    if !HudResources_instanceSet[]
        HudResources_instanceSet[] = true
        HudResources_instanceValue[] = newHudResources()
    end
    HudResources_instanceValue[]
end
function staticSet_instance(::Type{HudResources}, value)
    HudResources_instanceSet[] = true
    HudResources_instanceValue[] = value
end

function initFieldsHudResources(this::HudResources)
    this.RESOURCE_LIFE = nothing
    this.RESOURCE_HEALTH = nothing
    this.RESOURCE_LIFE = "/hud_life_10_by_10.png"
    this.RESOURCE_HEALTH = "/hud_health_10_by_10.png"
    nothing
end


function getInstance(::Type{HudResources})
        return staticGet_instance(HudResources)
end


function initHudResources(this::HudResources)
        initFieldsHudResources(this)
        nothing
        nothing
end

function newHudResources()
    this = HudResources()
    initHudResources(this)
    this
end

