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
# package org.allbinary.game.ag.layer.pickup.life

mutable struct LifeResources <: JObject
    RESOURCE::Any
    LifeResources() = new()
end

const LifeResources_SINGLETONValue = Ref{Any}(nothing)
const LifeResources_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{LifeResources})
    if !LifeResources_SINGLETONSet[]
        LifeResources_SINGLETONSet[] = true
        LifeResources_SINGLETONValue[] = newLifeResources()
    end
    LifeResources_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{LifeResources}, value)
    LifeResources_SINGLETONSet[] = true
    LifeResources_SINGLETONValue[] = value
end

function initFieldsLifeResources(this::LifeResources)
    this.RESOURCE = nothing
    this.RESOURCE = "life_drop_20_by_20.png"
    nothing
end


function initLifeResources(this::LifeResources)
        initFieldsLifeResources(this)
        nothing
        nothing
end

function newLifeResources()
    this = LifeResources()
    initLifeResources(this)
    this
end


function getInstance(::Type{LifeResources})
        return staticGet_SINGLETON(LifeResources)
end

