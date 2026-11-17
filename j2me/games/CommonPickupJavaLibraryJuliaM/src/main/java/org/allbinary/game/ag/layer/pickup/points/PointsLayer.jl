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

# extends AllBinaryLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PointsLayer <: JObject
    points::Int32
    PointsLayer() = new()
end


function initFieldsPointsLayer(this::PointsLayer)
    this.points = Int32(0)
    
    nothing
end


function initPointsLayer(this::PointsLayer, points)
        initAllBinaryLayer(this, AllBinary.getInstance(StringUtil).EMPTY_STRING, newRectangle(AllBinary.getInstance(PointFactory).ZERO_ZERO, Int32(0), Int32(0)), AllBinary.getInstanceD(ViewPosition))
        initFieldsPointsLayer(this)
        this.points = points
        nothing
end

function newPointsLayer(points)
    this = PointsLayer()
    initPointsLayer(this, points)
    this
end


function paint(this::PointsLayer, graphics)
        nothing
        nothing
end


function visit(this::PointsLayer, scoreableInterface)
        AllBinary.addPoints(scoreableInterface, this.points)
        nothing
end

