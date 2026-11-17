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

# extends CollidableBaseBehavior: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollidableNeverCollideBehavior <: JObject
    CollidableNeverCollideBehavior() = new()
end


function initFieldsCollidableNeverCollideBehavior(this::CollidableNeverCollideBehavior)
    nothing
end


function initCollidableNeverCollideBehavior(this::CollidableNeverCollideBehavior, isCollidable)
        initCollidableBaseBehavior(this, isCollidable)
        nothing
end

function newCollidableNeverCollideBehavior(isCollidable)
    this = CollidableNeverCollideBehavior()
    initCollidableNeverCollideBehavior(this, isCollidable)
    this
end


function isCollision(this::CollidableNeverCollideBehavior, ownerLayer, allbinaryCollidableLayer)
        return false
end


function collide(this::CollidableNeverCollideBehavior, ownerLayer, allbinaryCollidableLayer)
        nothing
        nothing
end


function collideInterface(this::CollidableNeverCollideBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        nothing
        nothing
end


function isCollisionInterface(this::CollidableNeverCollideBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        return false
end

