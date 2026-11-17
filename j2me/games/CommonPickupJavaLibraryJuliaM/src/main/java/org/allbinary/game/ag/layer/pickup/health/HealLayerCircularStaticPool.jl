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
# package org.allbinary.game.ag.layer.pickup.health

# extends AllBinaryLayerCircularPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HealLayerCircularStaticPool <: JObject
    HealLayerCircularStaticPool() = new()
end


function initFieldsHealLayerCircularStaticPool(this::HealLayerCircularStaticPool)
    nothing
end


function initHealLayerCircularStaticPool(this::HealLayerCircularStaticPool, allbinaryLayerFactoryInterface, total)
        initAllBinaryLayerCircularPool(this)
        initFieldsHealLayerCircularStaticPool(this)
        AllBinary.initAllBinaryLayerCircularPool(this, allbinaryLayerFactoryInterface, total)
        nothing
end

function newHealLayerCircularStaticPool(allbinaryLayerFactoryInterface, total)
    this = HealLayerCircularStaticPool()
    initHealLayerCircularStaticPool(this, allbinaryLayerFactoryInterface, total)
    this
end


function visit(this::HealLayerCircularStaticPool, sourceLayerInterface)
        local healLayer = (AllBinary.getNextInstance(this))
        local healthInterfaceCompositeInterface = (sourceLayerInterface)
        local healthInterface = AllBinary.getHealthInterface(healthInterfaceCompositeInterface)
        AllBinary.visit(healLayer, healthInterface)
        nothing
end

