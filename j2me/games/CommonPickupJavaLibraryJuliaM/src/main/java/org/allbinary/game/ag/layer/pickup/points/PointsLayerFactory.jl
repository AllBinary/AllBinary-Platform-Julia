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

mutable struct PointsLayerFactory <: JObject
    points::Int32
    PointsLayerFactory() = new()
end


function initFieldsPointsLayerFactory(this::PointsLayerFactory)
    this.points = Int32(0)
    
    nothing
end


function initPointsLayerFactory(this::PointsLayerFactory, points)
        initFieldsPointsLayerFactory(this)
        this.points = points
        nothing
end

function newPointsLayerFactory(points)
    this = PointsLayerFactory()
    initPointsLayerFactory(this, points)
    this
end


function getInstance(this::PointsLayerFactory)
        return newPointsLayer(this.points)
end

