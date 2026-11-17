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
# package org.allbinary.game.ag.layer.pickup.points

# extends AllBinaryLayerCircularPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PointsLayerCircularStaticPool <: JObject
    PointsLayerCircularStaticPool() = new()
end


function initFieldsPointsLayerCircularStaticPool(this::PointsLayerCircularStaticPool)
    nothing
end


function initPointsLayerCircularStaticPool(this::PointsLayerCircularStaticPool, allbinaryLayerFactoryInterface, total)
        initAllBinaryLayerCircularPool(this)
        initFieldsPointsLayerCircularStaticPool(this)
        AllBinary.initAllBinaryLayerCircularPool(this, allbinaryLayerFactoryInterface, total)
        nothing
end

function newPointsLayerCircularStaticPool(allbinaryLayerFactoryInterface, total)
    this = PointsLayerCircularStaticPool()
    initPointsLayerCircularStaticPool(this, allbinaryLayerFactoryInterface, total)
    this
end


function visit(this::PointsLayerCircularStaticPool, sourceLayerInterface)
        local pointsLayer = (AllBinary.getNextInstance(this))
        local scoreableInterface = (sourceLayerInterface)
        AllBinary.visit(pointsLayer, scoreableInterface)
        nothing
end

