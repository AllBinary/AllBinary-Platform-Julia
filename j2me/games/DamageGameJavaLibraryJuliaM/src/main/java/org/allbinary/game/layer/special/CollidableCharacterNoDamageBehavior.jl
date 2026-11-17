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

# extends CollidableDestroyableDamageableBehavior: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollidableCharacterNoDamageBehavior <: JObject
    CollidableCharacterNoDamageBehavior() = new()
end


function initFieldsCollidableCharacterNoDamageBehavior(this::CollidableCharacterNoDamageBehavior)
    nothing
end


function initCollidableCharacterNoDamageBehavior(this::CollidableCharacterNoDamageBehavior, collidable)
        initCollidableDestroyableDamageableBehavior(this, collidable)
        nothing
end

function newCollidableCharacterNoDamageBehavior(collidable)
    this = CollidableCharacterNoDamageBehavior()
    initCollidableCharacterNoDamageBehavior(this, collidable)
    this
end


function collide(this::CollidableCharacterNoDamageBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        local collisionTypeFactory = AllBinary.getInstance(CollisionTypeFactory)
        local collisionType = AllBinary.getCollisionTypeWith(AllBinary.getCollidableInferface(collidableInterfaceCompositeInterface), ownerLayer)
        if collisionType === collisionTypeFactory.PICKUP
            local collidableDestroyableDamageableLayer = (ownerLayer)
            AllBinary.doPickupLayer(AllBinary.getPickupBehavior(collidableDestroyableDamageableLayer), (collidableInterfaceCompositeInterface))
        else
            nothing
        end
        nothing
end


function collideInterface(this::CollidableCharacterNoDamageBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        nothing
end

