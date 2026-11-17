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
# package org.allbinary.game.gd.resource

mutable struct GDResources <: JObject
    resourceStringArray::Any
    currentLayoutRequiredTotal::Int32
    GDResources() = new()
end

const GDResources_instanceValue = Ref{Any}(nothing)
const GDResources_instanceSet = Ref(false)
function staticGet_instance(::Type{GDResources})
    if !GDResources_instanceSet[]
        GDResources_instanceSet[] = true
        GDResources_instanceValue[] = newGDResources()
    end
    GDResources_instanceValue[]
end
function staticSet_instance(::Type{GDResources}, value)
    GDResources_instanceSet[] = true
    GDResources_instanceValue[] = value
end

function initFieldsGDResources(this::GDResources)
    this.resourceStringArray = nothing
    this.currentLayoutRequiredTotal = Int32(0)
    this.resourceStringArray = Any[]
    this.currentLayoutRequiredTotal = Int32(0)
    nothing
end

function initGDResources(this::GDResources)
    initFieldsGDResources(this)
end

function newGDResources()
    this = GDResources()
    initGDResources(this)
    this
end


function getInstance(::Type{GDResources})
        return staticGet_instance(GDResources)
end

