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
# package org.allbinary.animation.transition.shake

mutable struct ShakeAnimationListenerFactory <: JObject
    ShakeAnimationListenerFactory() = new()
end


function initFieldsShakeAnimationListenerFactory(this::ShakeAnimationListenerFactory)
    nothing
end

function initShakeAnimationListenerFactory(this::ShakeAnimationListenerFactory)
    initFieldsShakeAnimationListenerFactory(this)
end

function newShakeAnimationListenerFactory()
    this = ShakeAnimationListenerFactory()
    initShakeAnimationListenerFactory(this)
    this
end


function getInstance(::Type{ShakeAnimationListenerFactory})
        return newNoShakeAnimationListener()
end

