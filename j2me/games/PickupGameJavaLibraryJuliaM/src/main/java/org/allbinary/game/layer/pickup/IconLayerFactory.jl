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
# package org.allbinary.game.layer.pickup

mutable struct IconLayerFactory <: JObject
    IconLayerFactory() = new()
end


function initFieldsIconLayerFactory(this::IconLayerFactory)
    nothing
end

function initIconLayerFactory(this::IconLayerFactory)
    initFieldsIconLayerFactory(this)
end

function newIconLayerFactory()
    this = IconLayerFactory()
    initIconLayerFactory(this)
    this
end


function getInstance(::Type{IconLayerFactory}, animationInterface, width, height)
        return newIconLayer(animationInterface, width, height)
end

