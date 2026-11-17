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
# package org.allbinary.logic.system.security.licensing

mutable struct LockedResources <: JObject
    LOCKED_DEMO_GAME_FEATURE_RESOURCE::Any
    LockedResources() = new()
end

const LockedResources_instanceValue = Ref{Any}(nothing)
const LockedResources_instanceSet = Ref(false)
function staticGet_instance(::Type{LockedResources})
    if !LockedResources_instanceSet[]
        LockedResources_instanceSet[] = true
        LockedResources_instanceValue[] = newLockedResources()
    end
    LockedResources_instanceValue[]
end
function staticSet_instance(::Type{LockedResources}, value)
    LockedResources_instanceSet[] = true
    LockedResources_instanceValue[] = value
end

function initFieldsLockedResources(this::LockedResources)
    this.LOCKED_DEMO_GAME_FEATURE_RESOURCE = nothing
    this.LOCKED_DEMO_GAME_FEATURE_RESOURCE = "/locked_demo_game_feature_64_by_64.png"
    nothing
end

function initLockedResources(this::LockedResources)
    initFieldsLockedResources(this)
end

function newLockedResources()
    this = LockedResources()
    initLockedResources(this)
    this
end


function getInstance(::Type{LockedResources})
        return staticGet_instance(LockedResources)
end

