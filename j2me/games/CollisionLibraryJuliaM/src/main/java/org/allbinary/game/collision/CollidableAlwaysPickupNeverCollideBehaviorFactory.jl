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

# extends CollidableBaseBehaviorFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollidableAlwaysPickupNeverCollideBehaviorFactory <: JObject
    instance::Any
    CollidableAlwaysPickupNeverCollideBehaviorFactory() = new()
end

const CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCValue = Ref{Any}(nothing)
const CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCSet = Ref(false)
function staticGet_instanceC(::Type{CollidableAlwaysPickupNeverCollideBehaviorFactory})
    if !CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCSet[]
        CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCSet[] = true
        CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCValue[] = newCollidableAlwaysPickupNeverCollideBehaviorFactory()
    end
    CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCValue[]
end
function staticSet_instanceC(::Type{CollidableAlwaysPickupNeverCollideBehaviorFactory}, value)
    CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCSet[] = true
    CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCValue[] = value
end

function initFieldsCollidableAlwaysPickupNeverCollideBehaviorFactory(this::CollidableAlwaysPickupNeverCollideBehaviorFactory)
    this.instance = nothing
    this.instance = newCollidableAlwaysPickupNeverCollideBehavior()
    nothing
end

function initCollidableAlwaysPickupNeverCollideBehaviorFactory(this::CollidableAlwaysPickupNeverCollideBehaviorFactory)
    initCollidableBaseBehaviorFactory(this)
    initFieldsCollidableAlwaysPickupNeverCollideBehaviorFactory(this)
end

function newCollidableAlwaysPickupNeverCollideBehaviorFactory()
    this = CollidableAlwaysPickupNeverCollideBehaviorFactory()
    initCollidableAlwaysPickupNeverCollideBehaviorFactory(this)
    this
end


function getInstance(::Type{CollidableAlwaysPickupNeverCollideBehaviorFactory})
        return staticGet_instanceC(CollidableAlwaysPickupNeverCollideBehaviorFactory)
end


function createBehavior(this::CollidableAlwaysPickupNeverCollideBehaviorFactory)
        return this.instance
end

