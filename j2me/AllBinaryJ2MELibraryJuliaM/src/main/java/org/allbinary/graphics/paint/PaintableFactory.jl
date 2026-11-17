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
# package org.allbinary.graphics.paint

mutable struct PaintableFactory <: JObject
    PaintableFactory() = new()
end


function initFieldsPaintableFactory(this::PaintableFactory)
    nothing
end

function initPaintableFactory(this::PaintableFactory)
    initFieldsPaintableFactory(this)
end

function newPaintableFactory()
    this = PaintableFactory()
    initPaintableFactory(this)
    this
end


function getInstance(this::PaintableFactory)
        return AllBinary.getInstance(NullPaintable)
end

