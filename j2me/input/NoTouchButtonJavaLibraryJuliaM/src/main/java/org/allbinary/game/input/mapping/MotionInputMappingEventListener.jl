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
# package org.allbinary.game.input.mapping

mutable struct MotionInputMappingEventListener <: JObject
    MotionInputMappingEventListener() = new()
end


function initFieldsMotionInputMappingEventListener(this::MotionInputMappingEventListener)
    nothing
end

function initMotionInputMappingEventListener(this::MotionInputMappingEventListener)
    initFieldsMotionInputMappingEventListener(this)
end

function newMotionInputMappingEventListener()
    this = MotionInputMappingEventListener()
    initMotionInputMappingEventListener(this)
    this
end


function onEvent(this::MotionInputMappingEventListener, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onInputMappingEvent(this::MotionInputMappingEventListener, inputMappingEvent)
        nothing
        nothing
end

