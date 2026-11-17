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

mutable struct CollisionType <: JObject
    name::Any
    CollisionType() = new()
end


function initFieldsCollisionType(this::CollisionType)
    this.name = nothing
    
    nothing
end


function initCollisionType(this::CollisionType, name)
        initFieldsCollisionType(this)
        this.name = name
        nothing
end

function newCollisionType(name)
    this = CollisionType()
    initCollisionType(this, name)
    this
end


function toString(this::CollisionType)
        return this.name
end

