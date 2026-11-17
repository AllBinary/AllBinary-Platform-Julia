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

mutable struct CollisionTypeFactory <: JObject
    NONE::Any
    DAMAGE::Any
    PICKUP::Any
    COLLISION::Any
    CollisionTypeFactory() = new()
end

const CollisionTypeFactory_SINGLETONValue = Ref{Any}(nothing)
const CollisionTypeFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{CollisionTypeFactory})
    if !CollisionTypeFactory_SINGLETONSet[]
        CollisionTypeFactory_SINGLETONSet[] = true
        CollisionTypeFactory_SINGLETONValue[] = newCollisionTypeFactory()
    end
    CollisionTypeFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{CollisionTypeFactory}, value)
    CollisionTypeFactory_SINGLETONSet[] = true
    CollisionTypeFactory_SINGLETONValue[] = value
end

function initFieldsCollisionTypeFactory(this::CollisionTypeFactory)
    this.NONE = nothing
    this.DAMAGE = nothing
    this.PICKUP = nothing
    this.COLLISION = nothing
    this.NONE = newCollisionType("None")
    this.DAMAGE = newCollisionType("Damage")
    this.PICKUP = newCollisionType("Pickup")
    this.COLLISION = newCollisionType("Collision")
    nothing
end

function initCollisionTypeFactory(this::CollisionTypeFactory)
    initFieldsCollisionTypeFactory(this)
end

function newCollisionTypeFactory()
    this = CollisionTypeFactory()
    initCollisionTypeFactory(this)
    this
end


function getInstance(::Type{CollisionTypeFactory})
        return staticGet_SINGLETON(CollisionTypeFactory)
end

