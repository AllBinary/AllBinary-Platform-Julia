#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary

mutable struct ThreedResources <: JObject
    ThreedResources() = new()
end

const ThreedResources_threedResourcesValue = Ref{Any}(nothing)
const ThreedResources_threedResourcesSet = Ref(false)
function staticGet_threedResources(::Type{ThreedResources})
    if !ThreedResources_threedResourcesSet[]
        ThreedResources_threedResourcesSet[] = true
        ThreedResources_threedResourcesValue[] = newThreedResources()
    end
    ThreedResources_threedResourcesValue[]
end
function staticSet_threedResources(::Type{ThreedResources}, value)
    ThreedResources_threedResourcesSet[] = true
    ThreedResources_threedResourcesValue[] = value
end

function initFieldsThreedResources(this::ThreedResources)
    nothing
end

function initThreedResources(this::ThreedResources)
    initFieldsThreedResources(this)
end

function newThreedResources()
    this = ThreedResources()
    initThreedResources(this)
    this
end


function getThreedResources(::Type{ThreedResources})
        return staticGet_threedResources(ThreedResources)
end


function add(this::ThreedResources)
        nothing
        nothing
end

