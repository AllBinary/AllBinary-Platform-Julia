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
mutable struct CollidableWeaponBehavior <: JObject
    collided::Bool
    collisionHelper::Any
    CollidableWeaponBehavior() = new()
end

const CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORValue = Ref{Any}(nothing)
const CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORSet = Ref(false)
function staticGet_NULL_COLLIDABLE_WEAPON_BEHAVIOR(::Type{CollidableWeaponBehavior})
    if !CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORSet[]
        CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORSet[] = true
        CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORValue[]
end
function staticSet_NULL_COLLIDABLE_WEAPON_BEHAVIOR(::Type{CollidableWeaponBehavior}, value)
    CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORSet[] = true
    CollidableWeaponBehavior_NULL_COLLIDABLE_WEAPON_BEHAVIORValue[] = value
end

function initFieldsCollidableWeaponBehavior(this::CollidableWeaponBehavior)
    this.collided = false
    this.collisionHelper = nothing
    this.collided = false
    
    nothing
end


function getNullInstance(::Type{CollidableWeaponBehavior})
        if staticGet_NULL_COLLIDABLE_WEAPON_BEHAVIOR(CollidableWeaponBehavior) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_COLLIDABLE_WEAPON_BEHAVIOR(CollidableWeaponBehavior, newCollidableWeaponBehavior(false))
        end
        return (staticGet_NULL_COLLIDABLE_WEAPON_BEHAVIOR(CollidableWeaponBehavior))
end


function initCollidableWeaponBehavior(this::CollidableWeaponBehavior, collidable)
        initCollidableDestroyableDamageableBehavior(this, collidable)
        initFieldsCollidableWeaponBehavior(this)
        AllBinary.setCollided(this, false)
        AllBinary.setCollidable(this, true)
        this.collisionHelper = AllBinary.getInstance(CollidableHelperFactory)
        nothing
end

function newCollidableWeaponBehavior(collidable)
    this = CollidableWeaponBehavior()
    initCollidableWeaponBehavior(this, collidable)
    this
end


function init(this::CollidableWeaponBehavior, sourceLayerInterface)
        AllBinary.setCollided(this, false)
        AllBinary.setOwnerLayerInterface(this.collisionHelper, sourceLayerInterface)
        nothing
end


function isCollision(this::CollidableWeaponBehavior, ownerLayer, collisionLayer)
        if AllBinary.isCollidable(this.collisionHelper, collisionLayer)
            if AllBinary.getGroupInterface(ownerLayer)[Int32(0) + 1] != AllBinary.getGroupInterface(collisionLayer)[Int32(0) + 1]
                return AllBinary.isCollision(this, ownerLayer, collisionLayer)
            end
        end
        return false
end


function collide(this::CollidableWeaponBehavior, ownerLayer, collisionLayer)
        AllBinary.collide(this, ownerLayer, collisionLayer)
        this.collided = true
        nothing
end


function isCollisionInterface(this::CollidableWeaponBehavior, ownerLayer, collidableInterfaceCompositeInterface)
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


function collideInterface(this::CollidableWeaponBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        local ownerDamageableInterface = (ownerLayer)
        local damageableInterface = (collidableInterfaceCompositeInterface)
        AllBinary.process(this.damageUtil, ownerDamageableInterface, damageableInterface)
        this.collided = true
        nothing
end


function getCollisionTypeWith(this::CollidableWeaponBehavior, layerInterface)
        return AllBinary.getInstance(CollisionTypeFactory).COLLISION
end


function isCollided(this::CollidableWeaponBehavior)
        return this.collided
end


function setCollided(this::CollidableWeaponBehavior, collided)
        this.collided = collided
        nothing
end

