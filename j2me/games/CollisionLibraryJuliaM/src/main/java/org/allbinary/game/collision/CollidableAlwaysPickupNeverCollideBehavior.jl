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
# package org.allbinary.game.collision

# extends CollidableNeverCollideBehavior: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollidableAlwaysPickupNeverCollideBehavior <: JObject
    CollidableAlwaysPickupNeverCollideBehavior() = new()
end


function initFieldsCollidableAlwaysPickupNeverCollideBehavior(this::CollidableAlwaysPickupNeverCollideBehavior)
    nothing
end


function initCollidableAlwaysPickupNeverCollideBehavior(this::CollidableAlwaysPickupNeverCollideBehavior)
        initCollidableNeverCollideBehavior(this, true)
        nothing
end

function newCollidableAlwaysPickupNeverCollideBehavior()
    this = CollidableAlwaysPickupNeverCollideBehavior()
    initCollidableAlwaysPickupNeverCollideBehavior(this)
    this
end


function getCollisionTypeWith(this::CollidableAlwaysPickupNeverCollideBehavior, layerInterface)
        return AllBinary.getInstance(CollisionTypeFactory).PICKUP
end

