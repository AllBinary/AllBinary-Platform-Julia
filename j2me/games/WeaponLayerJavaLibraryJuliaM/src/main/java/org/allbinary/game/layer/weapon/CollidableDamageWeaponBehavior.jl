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

# extends CollidableDestroyableDamageableBehavior: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollidableDamageWeaponBehavior <: JObject
    collided::Bool
    collisionHelper::Any
    CollidableDamageWeaponBehavior() = new()
end


function initFieldsCollidableDamageWeaponBehavior(this::CollidableDamageWeaponBehavior)
    this.collided = false
    this.collisionHelper = nothing
    this.collided = false
    
    nothing
end


function initCollidableDamageWeaponBehavior(this::CollidableDamageWeaponBehavior, collidable)
        initCollidableDestroyableDamageableBehavior(this, collidable)
        initFieldsCollidableDamageWeaponBehavior(this)
        AllBinary.setCollided(this, false)
        AllBinary.setCollidable(this, true)
        this.collisionHelper = AllBinary.getInstance(CollidableHelperFactory)
        nothing
end

function newCollidableDamageWeaponBehavior(collidable)
    this = CollidableDamageWeaponBehavior()
    initCollidableDamageWeaponBehavior(this, collidable)
    this
end


function init(this::CollidableDamageWeaponBehavior, sourceLayerInterface)
        AllBinary.setCollided(this, false)
        AllBinary.setOwnerLayerInterface(this.collisionHelper, sourceLayerInterface)
        nothing
end


function isCollision(this::CollidableDamageWeaponBehavior, ownerLayer, collisionLayer)
        if AllBinary.isCollidable(this.collisionHelper, collisionLayer)
            if AllBinary.getGroupInterface(ownerLayer)[Int32(0) + 1] != AllBinary.getGroupInterface(collisionLayer)[Int32(0) + 1]
                return AllBinary.isCollision(this, ownerLayer, collisionLayer)
            end
        end
        return false
end


function collide(this::CollidableDamageWeaponBehavior, ownerLayer, collisionLayer)
        AllBinary.collide(this, ownerLayer, collisionLayer)
        this.collided = true
        nothing
end


function isCollisionInterface(this::CollidableDamageWeaponBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        if AllBinary.isCollidable(this.collisionHelper, (collidableInterfaceCompositeInterface))
            local layerInterface = (collidableInterfaceCompositeInterface)
            if AllBinary.getGroupInterface(ownerLayer)[Int32(0) + 1] != AllBinary.getGroupInterface(layerInterface)[Int32(0) + 1]
                if AllBinary.isCollision(this.layerCollisionUtil, ownerLayer, layerInterface)
                    return true
                end
            end
        end
        return false
end


function collideInterface(this::CollidableDamageWeaponBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        AllBinary.process(this.damageUtil, (ownerLayer), (collidableInterfaceCompositeInterface))
        this.collided = true
        nothing
end


function getCollisionTypeWith(this::CollidableDamageWeaponBehavior, layerInterface)
        return AllBinary.getInstance(CollisionTypeFactory).COLLISION
end


function isCollided(this::CollidableDamageWeaponBehavior)
        return this.collided
end


function setCollided(this::CollidableDamageWeaponBehavior, collided)
        this.collided = collided
        nothing
end

