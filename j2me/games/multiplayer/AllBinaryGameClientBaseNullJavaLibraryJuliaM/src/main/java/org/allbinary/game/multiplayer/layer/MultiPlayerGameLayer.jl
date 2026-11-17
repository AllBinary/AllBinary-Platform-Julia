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
# package org.allbinary.game.multiplayer.layer

# extends CollidableDestroyableDamageableLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MultiPlayerGameLayer <: JObject
    MultiPlayerGameLayer() = new()
end


function initFieldsMultiPlayerGameLayer(this::MultiPlayerGameLayer)
    nothing
end


function initMultiPlayerGameLayer(this::MultiPlayerGameLayer, remoteInfo, groupInterface, name, layerInfo, viewPosition)
        initCollidableDestroyableDamageableLayer(this, groupInterface, name, layerInfo, viewPosition)
        nothing
end

function newMultiPlayerGameLayer(remoteInfo, groupInterface, name, layerInfo, viewPosition)
    this = MultiPlayerGameLayer()
    initMultiPlayerGameLayer(this, remoteInfo, groupInterface, name, layerInfo, viewPosition)
    this
end


function getMultiplayerBehavior(this::MultiPlayerGameLayer)
        return staticGet_NULL_MULTIPLAYER_BEHAVIOR(MultiplayerBehavior)
end


function setPingInfo(this::MultiPlayerGameLayer, show)
        nothing
        nothing
end


function setFiring(this::MultiPlayerGameLayer, firing)
        nothing
        nothing
end


function getFiring(this::MultiPlayerGameLayer)
        return Int32(0)
end

