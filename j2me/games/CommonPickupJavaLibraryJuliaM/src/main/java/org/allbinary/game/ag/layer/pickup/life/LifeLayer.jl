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

# extends AllBinaryLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LifeLayer <: JObject
    LifeLayer() = new()
end


function initFieldsLifeLayer(this::LifeLayer)
    nothing
end


function initLifeLayer(this::LifeLayer)
        initAllBinaryLayer(this, AllBinary.getInstance(StringUtil).EMPTY_STRING, newRectangle(AllBinary.getInstance(PointFactory).ZERO_ZERO, Int32(0), Int32(0)), AllBinary.getInstanceD(ViewPosition))
        nothing
end

function newLifeLayer()
    this = LifeLayer()
    initLifeLayer(this)
    this
end


function paint(this::LifeLayer, graphics)
        nothing
        nothing
end


function visit(this::LifeLayer, lifeInterface)
        AllBinary.add(lifeInterface, ((Int32(1)) % Int16))
        nothing
end

