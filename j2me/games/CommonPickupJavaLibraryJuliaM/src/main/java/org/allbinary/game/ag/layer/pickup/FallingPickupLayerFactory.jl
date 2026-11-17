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
# package org.allbinary.game.ag.layer.pickup

mutable struct FallingPickupLayerFactory <: JObject
    FallingPickupLayerFactory() = new()
end


function initFieldsFallingPickupLayerFactory(this::FallingPickupLayerFactory)
    nothing
end

function initFallingPickupLayerFactory(this::FallingPickupLayerFactory)
    initFieldsFallingPickupLayerFactory(this)
end

function newFallingPickupLayerFactory()
    this = FallingPickupLayerFactory()
    initFallingPickupLayerFactory(this)
    this
end


function getInstance(this::FallingPickupLayerFactory)
        return newFallingPickupLayer(staticGet_REMOTE_INFO(RemoteInfo))
end

