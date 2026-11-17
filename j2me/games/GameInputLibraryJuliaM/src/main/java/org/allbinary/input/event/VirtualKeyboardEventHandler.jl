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
# package org.allbinary.input.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct VirtualKeyboardEventHandler <: JObject
    SHOW_EVENT::Any
    HIDE_EVENT::Any
    VirtualKeyboardEventHandler() = new()
end

const VirtualKeyboardEventHandler_gameKeyEventHandlerValue = Ref{Any}(nothing)
const VirtualKeyboardEventHandler_gameKeyEventHandlerSet = Ref(false)
function staticGet_gameKeyEventHandler(::Type{VirtualKeyboardEventHandler})
    if !VirtualKeyboardEventHandler_gameKeyEventHandlerSet[]
        VirtualKeyboardEventHandler_gameKeyEventHandlerSet[] = true
        VirtualKeyboardEventHandler_gameKeyEventHandlerValue[] = newVirtualKeyboardEventHandler()
    end
    VirtualKeyboardEventHandler_gameKeyEventHandlerValue[]
end
function staticSet_gameKeyEventHandler(::Type{VirtualKeyboardEventHandler}, value)
    VirtualKeyboardEventHandler_gameKeyEventHandlerSet[] = true
    VirtualKeyboardEventHandler_gameKeyEventHandlerValue[] = value
end

function initFieldsVirtualKeyboardEventHandler(this::VirtualKeyboardEventHandler)
    this.SHOW_EVENT = nothing
    this.HIDE_EVENT = nothing
    this.SHOW_EVENT = newVirtualKeyboardEvent(AllBinary.getInstance(BooleanFactory).TRUE)
    this.HIDE_EVENT = newVirtualKeyboardEvent(AllBinary.getInstance(BooleanFactory).FALSE)
    nothing
end


function initVirtualKeyboardEventHandler(this::VirtualKeyboardEventHandler)
        initBasicEventHandler(this)
        initFieldsVirtualKeyboardEventHandler(this)
        nothing
        nothing
end

function newVirtualKeyboardEventHandler()
    this = VirtualKeyboardEventHandler()
    initVirtualKeyboardEventHandler(this)
    this
end


function getInstance(::Type{VirtualKeyboardEventHandler})
        return staticGet_gameKeyEventHandler(VirtualKeyboardEventHandler)
end


function process(this::VirtualKeyboardEventHandler, eventObject, eventListenerInterface)
        local virtualKeyboardEventListenerInterface = (eventListenerInterface)
        AllBinary.onVirtualKeyboardEvent(virtualKeyboardEventListenerInterface, (eventObject))
        nothing
end


function open(this::VirtualKeyboardEventHandler)
        try
            AllBinary.sleep(Thread, Int32(120))
            AllBinary.fireEvent(this, this.SHOW_EVENT)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "open", e)
        end
        nothing
end


function close(this::VirtualKeyboardEventHandler)
        try
            AllBinary.sleep(Thread, Int32(120))
            AllBinary.fireEvent(this, this.HIDE_EVENT)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e)
        end
        nothing
end

