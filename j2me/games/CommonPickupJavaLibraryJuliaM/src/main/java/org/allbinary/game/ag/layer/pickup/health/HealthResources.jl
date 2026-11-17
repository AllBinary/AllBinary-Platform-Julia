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
# package org.allbinary.game.ag.layer.pickup.health

mutable struct HealthResources <: JObject
    RESOURCE::Any
    HealthResources() = new()
end

const HealthResources_SINGLETONValue = Ref{Any}(nothing)
const HealthResources_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{HealthResources})
    if !HealthResources_SINGLETONSet[]
        HealthResources_SINGLETONSet[] = true
        HealthResources_SINGLETONValue[] = newHealthResources()
    end
    HealthResources_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{HealthResources}, value)
    HealthResources_SINGLETONSet[] = true
    HealthResources_SINGLETONValue[] = value
end

function initFieldsHealthResources(this::HealthResources)
    this.RESOURCE = nothing
    this.RESOURCE = "health_drop_20_by_20.png"
    nothing
end


function initHealthResources(this::HealthResources)
        initFieldsHealthResources(this)
        nothing
        nothing
end

function newHealthResources()
    this = HealthResources()
    initHealthResources(this)
    this
end


function getInstance(::Type{HealthResources})
        return staticGet_SINGLETON(HealthResources)
end

