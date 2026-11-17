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
# package org.allbinary.input.motion.button

mutable struct TouchButtonsPaintableFactory <: JObject
    TouchButtonsPaintableFactory() = new()
end


function initFieldsTouchButtonsPaintableFactory(this::TouchButtonsPaintableFactory)
    nothing
end

function initTouchButtonsPaintableFactory(this::TouchButtonsPaintableFactory)
    initFieldsTouchButtonsPaintableFactory(this)
end

function newTouchButtonsPaintableFactory()
    this = TouchButtonsPaintableFactory()
    initTouchButtonsPaintableFactory(this)
    this
end


function getInstance(::Type{TouchButtonsPaintableFactory}, basicColor)
        return newPaintable()
end

