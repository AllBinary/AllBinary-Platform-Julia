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
# package org.allbinary.game.ag.layer.pickup.life

mutable struct LifeLayerFactory <: JObject
    LifeLayerFactory() = new()
end


function initFieldsLifeLayerFactory(this::LifeLayerFactory)
    nothing
end

function initLifeLayerFactory(this::LifeLayerFactory)
    initFieldsLifeLayerFactory(this)
end

function newLifeLayerFactory()
    this = LifeLayerFactory()
    initLifeLayerFactory(this)
    this
end


function getInstance(this::LifeLayerFactory)
        return newLifeLayer()
end

