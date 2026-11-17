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

# extends AllBinaryLayerCircularPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LifeLayerCircularStaticPool <: JObject
    LifeLayerCircularStaticPool() = new()
end


function initFieldsLifeLayerCircularStaticPool(this::LifeLayerCircularStaticPool)
    nothing
end


function initLifeLayerCircularStaticPool(this::LifeLayerCircularStaticPool, allbinaryLayerFactoryInterface, total)
        initAllBinaryLayerCircularPool(this)
        initFieldsLifeLayerCircularStaticPool(this)
        AllBinary.initAllBinaryLayerCircularPool(this, allbinaryLayerFactoryInterface, total)
        nothing
end

function newLifeLayerCircularStaticPool(allbinaryLayerFactoryInterface, total)
    this = LifeLayerCircularStaticPool()
    initLifeLayerCircularStaticPool(this, allbinaryLayerFactoryInterface, total)
    this
end


function visit(this::LifeLayerCircularStaticPool, sourceLayerInterface)
        local lifeLayer = (AllBinary.getNextInstance(this))
        local lifeInterfaceCompositeInterface = (sourceLayerInterface)
        local lifeInterface = AllBinary.getLifeInterface(lifeInterfaceCompositeInterface)
        AllBinary.visit(lifeLayer, lifeInterface)
        nothing
end

