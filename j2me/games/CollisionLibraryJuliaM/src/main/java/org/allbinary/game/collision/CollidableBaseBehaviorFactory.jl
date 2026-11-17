#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.collision

mutable struct CollidableBaseBehaviorFactory <: JObject
    CollidableBaseBehaviorFactory() = new()
end


function initFieldsCollidableBaseBehaviorFactory(this::CollidableBaseBehaviorFactory)
    nothing
end

function initCollidableBaseBehaviorFactory(this::CollidableBaseBehaviorFactory)
    initFieldsCollidableBaseBehaviorFactory(this)
end

function newCollidableBaseBehaviorFactory()
    this = CollidableBaseBehaviorFactory()
    initCollidableBaseBehaviorFactory(this)
    this
end


function createBehavior(this::CollidableBaseBehaviorFactory)
        throw(jNewException("RuntimeException", ""))
end

