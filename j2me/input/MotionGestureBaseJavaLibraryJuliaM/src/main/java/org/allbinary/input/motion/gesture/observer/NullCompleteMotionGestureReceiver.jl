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

mutable struct NullCompleteMotionGestureReceiver <: JObject
    logUtil::Any
    NullCompleteMotionGestureReceiver() = new()
end


function initFieldsNullCompleteMotionGestureReceiver(this::NullCompleteMotionGestureReceiver)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function initNullCompleteMotionGestureReceiver(this::NullCompleteMotionGestureReceiver)
        initFieldsNullCompleteMotionGestureReceiver(this)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(this.logUtil, "Null Gesture Reciever", this, commonStrings.CONSTRUCTOR)
        nothing
end

function newNullCompleteMotionGestureReceiver()
    this = NullCompleteMotionGestureReceiver()
    initNullCompleteMotionGestureReceiver(this)
    this
end


function onMotionGestureCompleted(this::NullCompleteMotionGestureReceiver, list)
        nothing
        nothing
end

