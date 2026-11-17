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
# package org.allbinary.game.layer.resources

mutable struct OnDemandResources <: JObject
    logUtil::Any
    OnDemandResources() = new()
end

const OnDemandResources_NULL_ON_DEMAND_RESOURCESValue = Ref{Any}(nothing)
const OnDemandResources_NULL_ON_DEMAND_RESOURCESSet = Ref(false)
function staticGet_NULL_ON_DEMAND_RESOURCES(::Type{OnDemandResources})
    if !OnDemandResources_NULL_ON_DEMAND_RESOURCESSet[]
        OnDemandResources_NULL_ON_DEMAND_RESOURCESSet[] = true
        OnDemandResources_NULL_ON_DEMAND_RESOURCESValue[] = newOnDemandResources()
    end
    OnDemandResources_NULL_ON_DEMAND_RESOURCESValue[]
end
function staticSet_NULL_ON_DEMAND_RESOURCES(::Type{OnDemandResources}, value)
    OnDemandResources_NULL_ON_DEMAND_RESOURCESSet[] = true
    OnDemandResources_NULL_ON_DEMAND_RESOURCESValue[] = value
end

function initFieldsOnDemandResources(this::OnDemandResources)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function initOnDemandResources(this::OnDemandResources)
        initFieldsOnDemandResources(this)
        nothing
        nothing
end

function newOnDemandResources()
    this = OnDemandResources()
    initOnDemandResources(this)
    this
end


function waitFor(this::OnDemandResources)
        nothing
        nothing
end


function init(this::OnDemandResources)
        nothing
        nothing
end


function initAt(this::OnDemandResources, imageCache, resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
        return Int32(0)
end

