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
# package org.allbinary.game.layer.special

# extends CollidableBaseBehavior: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollidableDestroyableDamageableBehavior <: JObject
    damageUtil::Any
    CollidableDestroyableDamageableBehavior() = new()
end


function initFieldsCollidableDestroyableDamageableBehavior(this::CollidableDestroyableDamageableBehavior)
    this.damageUtil = nothing
    this.damageUtil = AllBinary.getInstance(DamageUtil)
    nothing
end


function initCollidableDestroyableDamageableBehavior(this::CollidableDestroyableDamageableBehavior, collidable)
        initCollidableBaseBehavior(this, collidable)
        initFieldsCollidableDestroyableDamageableBehavior(this)
        nothing
end

function newCollidableDestroyableDamageableBehavior(collidable)
    this = CollidableDestroyableDamageableBehavior()
    initCollidableDestroyableDamageableBehavior(this, collidable)
    this
end


function isCollision(this::CollidableDestroyableDamageableBehavior, ownerLayer, collisionLayer)
        if AllBinary.getGroupInterface(ownerLayer)[Int32(0) + 1] != AllBinary.getGroupInterface(collisionLayer)[Int32(0) + 1]
            return AllBinary.isCollision(this, ownerLayer, collisionLayer)
        end
        return false
end


function collide(this::CollidableDestroyableDamageableBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        local ownerCollidableDestroyableDamageableLayer = (ownerLayer)
        local collidableDestroyableDamageableLayer = (collidableInterfaceCompositeInterface)
        AllBinary.damage(ownerCollidableDestroyableDamageableLayer, AllBinary.getDamage(collidableDestroyableDamageableLayer, Int32(0)), Int32(0))
        nothing
end


function isCollisionInterface(this::CollidableDestroyableDamageableBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        AllBinary.log(ForcedLogUtil, "No Longer Used", this)
        return false
end


function collideInterface(this::CollidableDestroyableDamageableBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        AllBinary.log(ForcedLogUtil, "No Longer Used", this)
        nothing
end

