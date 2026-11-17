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
# package org.allbinary.input.motion.gesture.observer

mutable struct MotionGestureReceiveInterfaceFactory <: JObject
    MotionGestureReceiveInterfaceFactory() = new()
end


function initFieldsMotionGestureReceiveInterfaceFactory(this::MotionGestureReceiveInterfaceFactory)
    nothing
end

function initMotionGestureReceiveInterfaceFactory(this::MotionGestureReceiveInterfaceFactory)
    initFieldsMotionGestureReceiveInterfaceFactory(this)
end

function newMotionGestureReceiveInterfaceFactory()
    this = MotionGestureReceiveInterfaceFactory()
    initMotionGestureReceiveInterfaceFactory(this)
    this
end


function getInstance(::Type{MotionGestureReceiveInterfaceFactory})
        local configuration = AllBinary.getInstance(MotionGestureConfigurationFactory)
        if !AllBinary.isExecutingActionsAllowed(configuration)
            return newNullCompleteMotionGestureReceiver()
        else
            return newResolveCompleteMotionGestureListener()
        end
end

