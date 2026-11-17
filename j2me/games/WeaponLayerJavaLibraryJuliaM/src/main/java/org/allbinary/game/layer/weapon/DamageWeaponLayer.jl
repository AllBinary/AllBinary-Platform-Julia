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
# package org.allbinary.game.layer.weapon

# extends WeaponLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DamageWeaponLayer <: JObject
    DamageWeaponLayer() = new()
end


function initFieldsDamageWeaponLayer(this::DamageWeaponLayer)
    nothing
end


function initDamageWeaponLayer(this::DamageWeaponLayer, name, remoteInfo, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition, username, actorSessionId, id, multiPlayerType)
        initWeaponLayer(this, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        AllBinary.setCollidableInferface(this, newCollidableDamageWeaponBehavior(true))
        nothing
end

function newDamageWeaponLayer(name, remoteInfo, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition, username, actorSessionId, id, multiPlayerType)
    this = DamageWeaponLayer()
    initDamageWeaponLayer(this, name, remoteInfo, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition, username, actorSessionId, id, multiPlayerType)
    this
end

