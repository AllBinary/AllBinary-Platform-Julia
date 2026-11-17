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

mutable struct OnDemandResourcesFactory <: JObject
    OnDemandResourcesFactory() = new()
end


function initFieldsOnDemandResourcesFactory(this::OnDemandResourcesFactory)
    nothing
end

function initOnDemandResourcesFactory(this::OnDemandResourcesFactory)
    initFieldsOnDemandResourcesFactory(this)
end

function newOnDemandResourcesFactory()
    this = OnDemandResourcesFactory()
    initOnDemandResourcesFactory(this)
    this
end


function size(this::OnDemandResourcesFactory)
        return Int32(0)
end


function remove(this::OnDemandResourcesFactory, layerId)
        return staticGet_NULL_ON_DEMAND_RESOURCES(OnDemandResources)
end

