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
# package org.allbinary.game.midlet

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DemoGameMidletEventHandler <: JObject
    DemoGameMidletEventHandler() = new()
end

const DemoGameMidletEventHandler_gameKeyEventHandlerValue = Ref{Any}(nothing)
const DemoGameMidletEventHandler_gameKeyEventHandlerSet = Ref(false)
function staticGet_gameKeyEventHandler(::Type{DemoGameMidletEventHandler})
    if !DemoGameMidletEventHandler_gameKeyEventHandlerSet[]
        DemoGameMidletEventHandler_gameKeyEventHandlerSet[] = true
        DemoGameMidletEventHandler_gameKeyEventHandlerValue[] = newDemoGameMidletEventHandler()
    end
    DemoGameMidletEventHandler_gameKeyEventHandlerValue[]
end
function staticSet_gameKeyEventHandler(::Type{DemoGameMidletEventHandler}, value)
    DemoGameMidletEventHandler_gameKeyEventHandlerSet[] = true
    DemoGameMidletEventHandler_gameKeyEventHandlerValue[] = value
end

function initFieldsDemoGameMidletEventHandler(this::DemoGameMidletEventHandler)
    nothing
end


function initDemoGameMidletEventHandler(this::DemoGameMidletEventHandler)
        initBasicEventHandler(this)
        initFieldsDemoGameMidletEventHandler(this)
        nothing
        nothing
end

function newDemoGameMidletEventHandler()
    this = DemoGameMidletEventHandler()
    initDemoGameMidletEventHandler(this)
    this
end


function getInstance(::Type{DemoGameMidletEventHandler})
        return staticGet_gameKeyEventHandler(DemoGameMidletEventHandler)
end


function process(this::DemoGameMidletEventHandler, eventObject, eventListenerInterface)
        local demoGameMidletEventListener = (eventListenerInterface)
        AllBinary.onDemoGameMidletEvent(demoGameMidletEventListener, (eventObject))
        nothing
end

