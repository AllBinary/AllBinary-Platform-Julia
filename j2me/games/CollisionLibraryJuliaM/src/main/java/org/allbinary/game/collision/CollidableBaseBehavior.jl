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

mutable struct CollidableBaseBehavior <: JObject
    logUtil::Any
    commonStrings::Any
    layerCollisionUtil::Any
    collidable::Bool
    CollidableBaseBehavior() = new()
end


function initFieldsCollidableBaseBehavior(this::CollidableBaseBehavior)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.layerCollisionUtil = nothing
    this.collidable = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.layerCollisionUtil = AllBinary.getInstance(LayerCollisionUtil)
    this.collidable = true
    nothing
end


function initCollidableBaseBehavior(this::CollidableBaseBehavior, collidable)
        initFieldsCollidableBaseBehavior(this)
        this.collidable = collidable
        nothing
end

function newCollidableBaseBehavior(collidable)
    this = CollidableBaseBehavior()
    initCollidableBaseBehavior(this, collidable)
    this
end


function update(this::CollidableBaseBehavior)
        nothing
        nothing
end


function getName(this::CollidableBaseBehavior)
        return jClassName(this)
end


function setCollidable(this::CollidableBaseBehavior, collidable)
        this.collidable = collidable
        nothing
end


function isCollidable(this::CollidableBaseBehavior, ownerLayer)
        return this.collidable
end


function collide(this::CollidableBaseBehavior, ownerLayer, allbinaryCollidableLayer)
        throw(jNewException("Exception", AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.NOT_IMPLEMENTED), AllBinary.getInstance(CommonLabels).COLON_SEP), jClassName(this)))))
        nothing
end


function isCollision(this::CollidableBaseBehavior, ownerLayer, collisionLayer)
        return AllBinary.isCollision(this.layerCollisionUtil, ownerLayer, collisionLayer)
end


function isCollisionInterface(this::CollidableBaseBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        return AllBinary.isCollision(this.layerCollisionUtil, ownerLayer, (collidableInterfaceCompositeInterface))
end


function collideInterface(this::CollidableBaseBehavior, ownerLayer, collidableInterfaceCompositeInterface)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function paint(this::CollidableBaseBehavior, ownerLayer, graphics)
        nothing
        nothing
end


function getCollisionTypeWith(this::CollidableBaseBehavior, layerInterface)
        return AllBinary.getInstance(CollisionTypeFactory).NONE
end

