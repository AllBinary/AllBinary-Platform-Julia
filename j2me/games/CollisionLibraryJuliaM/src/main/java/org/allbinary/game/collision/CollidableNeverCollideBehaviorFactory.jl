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
mutable struct CollidableNeverCollideBehaviorFactory <: JObject
    instance::Any
    CollidableNeverCollideBehaviorFactory() = new()
end

const CollidableNeverCollideBehaviorFactory_instanceCValue = Ref{Any}(nothing)
const CollidableNeverCollideBehaviorFactory_instanceCSet = Ref(false)
function staticGet_instanceC(::Type{CollidableNeverCollideBehaviorFactory})
    if !CollidableNeverCollideBehaviorFactory_instanceCSet[]
        CollidableNeverCollideBehaviorFactory_instanceCSet[] = true
        CollidableNeverCollideBehaviorFactory_instanceCValue[] = newCollidableNeverCollideBehaviorFactory()
    end
    CollidableNeverCollideBehaviorFactory_instanceCValue[]
end
function staticSet_instanceC(::Type{CollidableNeverCollideBehaviorFactory}, value)
    CollidableNeverCollideBehaviorFactory_instanceCSet[] = true
    CollidableNeverCollideBehaviorFactory_instanceCValue[] = value
end

function initFieldsCollidableNeverCollideBehaviorFactory(this::CollidableNeverCollideBehaviorFactory)
    this.instance = nothing
    this.instance = newCollidableNeverCollideBehavior(false)
    nothing
end

function initCollidableNeverCollideBehaviorFactory(this::CollidableNeverCollideBehaviorFactory)
    initCollidableBaseBehaviorFactory(this)
    initFieldsCollidableNeverCollideBehaviorFactory(this)
end

function newCollidableNeverCollideBehaviorFactory()
    this = CollidableNeverCollideBehaviorFactory()
    initCollidableNeverCollideBehaviorFactory(this)
    this
end


function getInstance(::Type{CollidableNeverCollideBehaviorFactory})
        return staticGet_instanceC(CollidableNeverCollideBehaviorFactory)
end


function createBehavior(this::CollidableNeverCollideBehaviorFactory)
        return this.instance
end

