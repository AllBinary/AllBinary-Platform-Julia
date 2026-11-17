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
mutable struct SimpleWeaponLayer <: JObject
    SimpleWeaponLayer() = new()
end


function initFieldsSimpleWeaponLayer(this::SimpleWeaponLayer)
    nothing
end


function createDestroyed(::Type{SimpleWeaponLayer})
        return AllBinary.getInstanceAnimation(AllBinary.getProcedural(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(ExplosionResources).THIRD_EXPLOSION_RESOURCE), AllBinary.getInstance(AllBinary.getFactoryInstance(NullIndexedAnimationFactory), Int32(0)))
end


function initSimpleWeaponLayer(this::SimpleWeaponLayer, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        initWeaponLayer(this, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        AllBinary.setCollidableInferface(this, newCollidableWeaponBehavior(true))
        nothing
end

function newSimpleWeaponLayer(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
    this = SimpleWeaponLayer()
    initSimpleWeaponLayer(this, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
    this
end

