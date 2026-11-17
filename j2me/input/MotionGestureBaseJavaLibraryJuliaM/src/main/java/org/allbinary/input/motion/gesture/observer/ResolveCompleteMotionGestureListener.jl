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

mutable struct ResolveCompleteMotionGestureListener <: JObject
    logUtil::Any
    ResolveCompleteMotionGestureListener() = new()
end


function initFieldsResolveCompleteMotionGestureListener(this::ResolveCompleteMotionGestureListener)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function initResolveCompleteMotionGestureListener(this::ResolveCompleteMotionGestureListener)
        initFieldsResolveCompleteMotionGestureListener(this)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(this.logUtil, "MotionGesture to CompleteMotionGesture Reciever", this, commonStrings.CONSTRUCTOR)
        AllBinary.addListener(AllBinary.getInstance(CompleteMotionGestureInputEventHandler), newGameKeyFromMotionGestureEventListener())
        nothing
end

function newResolveCompleteMotionGestureListener()
    this = ResolveCompleteMotionGestureListener()
    initResolveCompleteMotionGestureListener(this)
    this
end


function onMotionGestureCompleted(this::ResolveCompleteMotionGestureListener, list)
        local configuration = AllBinary.getInstance(MotionGestureConfigurationFactory)
        local commandActionsList = AllBinary.getAssociateCommandActionsList(configuration)
        local size::Int32 = AllBinary.size(commandActionsList)
        let
            local index::Int32 = size - Int32(1)
            while index >= Int32(0)
            try
            local association = (commandActionsList.objectArray[index + 1])
            if AllBinary.isMotionGestureArrayEquals(association, list) == true
                local completeMotionGestureInputEvent = (AllBinary.getCommandAction(association))
                AllBinary.fireEvent(AllBinary.getInstance(CompleteMotionGestureInputEventHandler), completeMotionGestureInputEvent)
                break
            end
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

