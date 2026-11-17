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
# package org.allbinary.game.input.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DownGameKeyEventHandlerBase <: JObject
    list::Any
    DownGameKeyEventHandlerBase() = new()
end

const DownGameKeyEventHandlerBase_TOTAL_LISTENERSValue = Ref{Any}(nothing)
const DownGameKeyEventHandlerBase_TOTAL_LISTENERSSet = Ref(false)
function staticGet_TOTAL_LISTENERS(::Type{DownGameKeyEventHandlerBase})
    if !DownGameKeyEventHandlerBase_TOTAL_LISTENERSSet[]
        DownGameKeyEventHandlerBase_TOTAL_LISTENERSSet[] = true
        DownGameKeyEventHandlerBase_TOTAL_LISTENERSValue[] = " Total PlayerGameInput Listeners: "
    end
    DownGameKeyEventHandlerBase_TOTAL_LISTENERSValue[]
end
function staticSet_TOTAL_LISTENERS(::Type{DownGameKeyEventHandlerBase}, value)
    DownGameKeyEventHandlerBase_TOTAL_LISTENERSSet[] = true
    DownGameKeyEventHandlerBase_TOTAL_LISTENERSValue[] = value
end
const DownGameKeyEventHandlerBase_LISTENER_LABELValue = Ref{Any}(nothing)
const DownGameKeyEventHandlerBase_LISTENER_LABELSet = Ref(false)
function staticGet_LISTENER_LABEL(::Type{DownGameKeyEventHandlerBase})
    if !DownGameKeyEventHandlerBase_LISTENER_LABELSet[]
        DownGameKeyEventHandlerBase_LISTENER_LABELSet[] = true
        DownGameKeyEventHandlerBase_LISTENER_LABELValue[] = " PlayerGameInput Listener: "
    end
    DownGameKeyEventHandlerBase_LISTENER_LABELValue[]
end
function staticSet_LISTENER_LABEL(::Type{DownGameKeyEventHandlerBase}, value)
    DownGameKeyEventHandlerBase_LISTENER_LABELSet[] = true
    DownGameKeyEventHandlerBase_LISTENER_LABELValue[] = value
end

function initFieldsDownGameKeyEventHandlerBase(this::DownGameKeyEventHandlerBase)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function initDownGameKeyEventHandlerBase(this::DownGameKeyEventHandlerBase)
        initBasicEventHandler(this)
        initFieldsDownGameKeyEventHandlerBase(this)
        nothing
        nothing
end

function newDownGameKeyEventHandlerBase()
    this = DownGameKeyEventHandlerBase()
    initDownGameKeyEventHandlerBase(this)
    this
end


function addListener(this::DownGameKeyEventHandlerBase, playerGameInput)
        if !AllBinary.contains(this.list, playerGameInput)
            AllBinary.add(this.list, playerGameInput)
        end
        nothing
end


function removeAllListeners(this::DownGameKeyEventHandlerBase)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListenerSingleThreaded(this::DownGameKeyEventHandlerBase, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListenerSingleThreaded(this, eventListenerInterface)
        nothing
end


function removeListener(this::DownGameKeyEventHandlerBase, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEvent(this::DownGameKeyEventHandlerBase, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local playerGameInput = (this.list.objectArray[index + 1])
                AllBinary.onDownGameKeyEvent(playerGameInput, (eventObject))
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            finally
            end
            end
        end
        AllBinary.fireEvent(this, eventObject)
        nothing
end


function process(this::DownGameKeyEventHandlerBase, eventObject, eventListenerInterface)
        local downGameKeyEventListenerInterface = (eventListenerInterface)
        AllBinary.onDownGameKeyEvent(downGameKeyEventListenerInterface, (eventObject))
        nothing
end


function toString(this::DownGameKeyEventHandlerBase)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.toString(this))
        AllBinary.append(stringBuffer, staticGet_TOTAL_LISTENERS(DownGameKeyEventHandlerBase))
        AllBinary.appendint(stringBuffer, AllBinary.size(this.list))
        local eventListenerInterface = nothing
        local size::Int32 = AllBinary.size(this.list)
        local index::Int32 = Int32(0)
        while index < size
            try
                eventListenerInterface = (AllBinary.get(this.list, index))
                AllBinary.append(stringBuffer, staticGet_LISTENER_LABEL(DownGameKeyEventHandlerBase))
                AllBinary.append(stringBuffer, AllBinary.toString(eventListenerInterface))
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e)
            end
            index += Int32(1)
        end
        return AllBinary.toString(stringBuffer)
end

