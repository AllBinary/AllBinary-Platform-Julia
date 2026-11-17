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
mutable struct UpKeyEventHandlerBase <: JObject
    list::Any
    UpKeyEventHandlerBase() = new()
end

const UpKeyEventHandlerBase_TOTAL_LISTENERSValue = Ref{Any}(nothing)
const UpKeyEventHandlerBase_TOTAL_LISTENERSSet = Ref(false)
function staticGet_TOTAL_LISTENERS(::Type{UpKeyEventHandlerBase})
    if !UpKeyEventHandlerBase_TOTAL_LISTENERSSet[]
        UpKeyEventHandlerBase_TOTAL_LISTENERSSet[] = true
        UpKeyEventHandlerBase_TOTAL_LISTENERSValue[] = " Total PlayerGameInput Listeners: "
    end
    UpKeyEventHandlerBase_TOTAL_LISTENERSValue[]
end
function staticSet_TOTAL_LISTENERS(::Type{UpKeyEventHandlerBase}, value)
    UpKeyEventHandlerBase_TOTAL_LISTENERSSet[] = true
    UpKeyEventHandlerBase_TOTAL_LISTENERSValue[] = value
end
const UpKeyEventHandlerBase_LISTENER_LABELValue = Ref{Any}(nothing)
const UpKeyEventHandlerBase_LISTENER_LABELSet = Ref(false)
function staticGet_LISTENER_LABEL(::Type{UpKeyEventHandlerBase})
    if !UpKeyEventHandlerBase_LISTENER_LABELSet[]
        UpKeyEventHandlerBase_LISTENER_LABELSet[] = true
        UpKeyEventHandlerBase_LISTENER_LABELValue[] = " PlayerGameInput Listener: "
    end
    UpKeyEventHandlerBase_LISTENER_LABELValue[]
end
function staticSet_LISTENER_LABEL(::Type{UpKeyEventHandlerBase}, value)
    UpKeyEventHandlerBase_LISTENER_LABELSet[] = true
    UpKeyEventHandlerBase_LISTENER_LABELValue[] = value
end

function initFieldsUpKeyEventHandlerBase(this::UpKeyEventHandlerBase)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function initUpKeyEventHandlerBase(this::UpKeyEventHandlerBase)
        initBasicEventHandler(this)
        initFieldsUpKeyEventHandlerBase(this)
        nothing
        nothing
end

function newUpKeyEventHandlerBase()
    this = UpKeyEventHandlerBase()
    initUpKeyEventHandlerBase(this)
    this
end


function addListener(this::UpKeyEventHandlerBase, playerGameInput)
        if !AllBinary.contains(this.list, playerGameInput)
            AllBinary.add(this.list, playerGameInput)
        end
        nothing
end


function removeAllListeners(this::UpKeyEventHandlerBase)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListenerSingleThreaded(this::UpKeyEventHandlerBase, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListenerSingleThreaded(this, eventListenerInterface)
        nothing
end


function removeListener(this::UpKeyEventHandlerBase, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEventForInteger(this::UpKeyEventHandlerBase, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local playerGameInput = (this.list.objectArray[index + 1])
                AllBinary.onUpKeyEvent(playerGameInput, eventObject)
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            finally
            end
            end
        end
        index = Int32(0)
        local eventListenerInterface = nothing
        while index < AllBinary.size(this.eventListenerInterfaceList)
            try
                eventListenerInterface = (AllBinary.get(this.eventListenerInterfaceList, index))
                AllBinary.processForInteger(this, eventObject, eventListenerInterface)
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            index += Int32(1)
        end
        nothing
end


function processForInteger(this::UpKeyEventHandlerBase, eventObject, eventListenerInterface)
        local upKeyEventListenerInterface = (eventListenerInterface)
        AllBinary.onUpKeyEvent(upKeyEventListenerInterface, eventObject)
        nothing
end


function toString(this::UpKeyEventHandlerBase)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.toString(this))
        AllBinary.append(stringBuffer, staticGet_TOTAL_LISTENERS(UpKeyEventHandlerBase))
        AllBinary.appendint(stringBuffer, AllBinary.size(this.list))
        let
            local index::Int32 = Int32(0)
            while index < AllBinary.size(this.list)
            try
            try
                local eventListenerInterface = (AllBinary.get(this.list, index))
                AllBinary.append(stringBuffer, staticGet_LISTENER_LABEL(UpKeyEventHandlerBase))
                AllBinary.append(stringBuffer, AllBinary.toString(eventListenerInterface))
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e)
            end
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end

