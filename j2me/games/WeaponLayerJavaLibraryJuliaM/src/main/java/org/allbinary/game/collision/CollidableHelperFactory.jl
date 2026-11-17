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

mutable struct CollidableHelperFactory <: JObject
    CollidableHelperFactory() = new()
end


function initFieldsCollidableHelperFactory(this::CollidableHelperFactory)
    nothing
end

function initCollidableHelperFactory(this::CollidableHelperFactory)
    initFieldsCollidableHelperFactory(this)
end

function newCollidableHelperFactory()
    this = CollidableHelperFactory()
    initCollidableHelperFactory(this)
    this
end


function getInstance(::Type{CollidableHelperFactory})
        if AllBinary.isFeature(AllBinary.getInstance(Features), AllBinary.getInstance(GameFeatureFactory).COLLISIONS_WITH_SOURCE)
            return newCollisionHelper(staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer))
        else
            return newSourceCollisionHelper(staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer))
        end
end

