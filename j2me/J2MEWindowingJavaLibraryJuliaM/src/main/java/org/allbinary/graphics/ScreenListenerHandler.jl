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
# package org.allbinary.graphics

mutable struct ScreenListenerHandler <: JObject
    screenListenerInterface::Any
    ScreenListenerHandler() = new()
end

const ScreenListenerHandler_instanceValue = Ref{Any}(nothing)
const ScreenListenerHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{ScreenListenerHandler})
    if !ScreenListenerHandler_instanceSet[]
        ScreenListenerHandler_instanceSet[] = true
        ScreenListenerHandler_instanceValue[] = newScreenListenerHandler()
    end
    ScreenListenerHandler_instanceValue[]
end
function staticSet_instance(::Type{ScreenListenerHandler}, value)
    ScreenListenerHandler_instanceSet[] = true
    ScreenListenerHandler_instanceValue[] = value
end

function initFieldsScreenListenerHandler(this::ScreenListenerHandler)
    this.screenListenerInterface = nothing
    this.screenListenerInterface = newScreenEmptyListener()
    nothing
end

function initScreenListenerHandler(this::ScreenListenerHandler)
    initFieldsScreenListenerHandler(this)
end

function newScreenListenerHandler()
    this = ScreenListenerHandler()
    initScreenListenerHandler(this)
    this
end


function getInstance(::Type{ScreenListenerHandler})
        return staticGet_instance(ScreenListenerHandler)
end


function setListener(this::ScreenListenerHandler, screenListenerInterface)
        this.screenListenerInterface = screenListenerInterface
        nothing
end


function fireWithState(this::ScreenListenerHandler, isFullScreen)
        AllBinary.onFullScreen(this.screenListenerInterface, isFullScreen)
        nothing
end


function fire(this::ScreenListenerHandler)
        AllBinary.onFullScreenDisplay(this.screenListenerInterface)
        nothing
end

