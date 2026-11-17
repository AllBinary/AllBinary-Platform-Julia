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
# package org.allbinary.game.ag.layer.weapon.mine

mutable struct MineLayerFactory <: JObject
    viewPositionFactoryInterface::Any
    MineLayerFactory() = new()
end


function initFieldsMineLayerFactory(this::MineLayerFactory)
    this.viewPositionFactoryInterface = nothing
    
    nothing
end


function initMineLayerFactory(this::MineLayerFactory, viewPositionFactoryInterface)
        initFieldsMineLayerFactory(this)
        this.viewPositionFactoryInterface = viewPositionFactoryInterface
        nothing
end

function newMineLayerFactory(viewPositionFactoryInterface)
    this = MineLayerFactory()
    initMineLayerFactory(this, viewPositionFactoryInterface)
    this
end


function getInstance(this::MineLayerFactory)
        return newMineLayer(AllBinary.getInstance(this.viewPositionFactoryInterface))
end

