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
mutable struct CollidableCharacterBehavior <: JObject
    CollidableCharacterBehavior() = new()
end


function initFieldsCollidableCharacterBehavior(this::CollidableCharacterBehavior)
    nothing
end


function initCollidableCharacterBehavior(this::CollidableCharacterBehavior, collidable)
        initCollidableDestroyableDamageableBehavior(this, collidable)
        nothing
end

function newCollidableCharacterBehavior(collidable)
    this = CollidableCharacterBehavior()
    initCollidableCharacterBehavior(this, collidable)
    this
end


function collide(this::CollidableCharacterBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        local collisionTypeFactory = AllBinary.getInstance(CollisionTypeFactory)
        local collisionType = AllBinary.getCollisionTypeWith(AllBinary.getCollidableInferface(collidableInterfaceCompositeInterface), ownerLayer)
        if collisionType === collisionTypeFactory.PICKUP
            local collidableDestroyableDamageableLayer = (ownerLayer)
            AllBinary.doPickupLayer(AllBinary.getPickupBehavior(collidableDestroyableDamageableLayer), (collidableInterfaceCompositeInterface))
        else
            AllBinary.collide(this, ownerLayer, collidableInterfaceCompositeInterface)
        end
        nothing
end


function collideInterface(this::CollidableCharacterBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        nothing
end

