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

mutable struct TouchButtonsPaintableCompositeFactory <: JObject
    TouchButtonsPaintableCompositeFactory() = new()
end


function initFieldsTouchButtonsPaintableCompositeFactory(this::TouchButtonsPaintableCompositeFactory)
    nothing
end

function initTouchButtonsPaintableCompositeFactory(this::TouchButtonsPaintableCompositeFactory)
    initFieldsTouchButtonsPaintableCompositeFactory(this)
end

function newTouchButtonsPaintableCompositeFactory()
    this = TouchButtonsPaintableCompositeFactory()
    initTouchButtonsPaintableCompositeFactory(this)
    this
end


function getInstance(::Type{TouchButtonsPaintableCompositeFactory}, inputMappingInterface, basicColor)
        return newProcessPaintable()
end

