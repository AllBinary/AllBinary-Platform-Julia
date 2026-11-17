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
mutable struct DownKeyEventHandlerBase <: JObject
    list::Any
    DownKeyEventHandlerBase() = new()
end

const DownKeyEventHandlerBase_TOTAL_LISTENERSValue = Ref{Any}(nothing)
const DownKeyEventHandlerBase_TOTAL_LISTENERSSet = Ref(false)
function staticGet_TOTAL_LISTENERS(::Type{DownKeyEventHandlerBase})
    if !DownKeyEventHandlerBase_TOTAL_LISTENERSSet[]
        DownKeyEventHandlerBase_TOTAL_LISTENERSSet[] = true
        DownKeyEventHandlerBase_TOTAL_LISTENERSValue[] = " Total PlayerGameInput Listeners: "
    end
    DownKeyEventHandlerBase_TOTAL_LISTENERSValue[]
end
function staticSet_TOTAL_LISTENERS(::Type{DownKeyEventHandlerBase}, value)
    DownKeyEventHandlerBase_TOTAL_LISTENERSSet[] = true
    DownKeyEventHandlerBase_TOTAL_LISTENERSValue[] = value
end
const DownKeyEventHandlerBase_LISTENER_LABELValue = Ref{Any}(nothing)
const DownKeyEventHandlerBase_LISTENER_LABELSet = Ref(false)
function staticGet_LISTENER_LABEL(::Type{DownKeyEventHandlerBase})
    if !DownKeyEventHandlerBase_LISTENER_LABELSet[]
        DownKeyEventHandlerBase_LISTENER_LABELSet[] = true
        DownKeyEventHandlerBase_LISTENER_LABELValue[] = " PlayerGameInput Listener: "
    end
    DownKeyEventHandlerBase_LISTENER_LABELValue[]
end
function staticSet_LISTENER_LABEL(::Type{DownKeyEventHandlerBase}, value)
    DownKeyEventHandlerBase_LISTENER_LABELSet[] = true
    DownKeyEventHandlerBase_LISTENER_LABELValue[] = value
end

function initFieldsDownKeyEventHandlerBase(this::DownKeyEventHandlerBase)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function initDownKeyEventHandlerBase(this::DownKeyEventHandlerBase)
        initBasicEventHandler(this)
        initFieldsDownKeyEventHandlerBase(this)
        nothing
        nothing
end

function newDownKeyEventHandlerBase()
    this = DownKeyEventHandlerBase()
    initDownKeyEventHandlerBase(this)
    this
end


function addListener(this::DownKeyEventHandlerBase, playerGameInput)
        if !AllBinary.contains(this.list, playerGameInput)
            AllBinary.add(this.list, playerGameInput)
        end
        nothing
end


function removeAllListeners(this::DownKeyEventHandlerBase)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListenerSingleThreaded(this::DownKeyEventHandlerBase, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListenerSingleThreaded(this, eventListenerInterface)
        nothing
end


function removeListener(this::DownKeyEventHandlerBase, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEventI(this::DownKeyEventHandlerBase, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local playerGameInput = (this.list.objectArray[index + 1])
                AllBinary.onDownKey(playerGameInput, eventObject)
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
                AllBinary.processI(this, eventObject, eventListenerInterface)
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            index += Int32(1)
        end
        nothing
end


function fireEventForGameKeyEvent(this::DownKeyEventHandlerBase, eventObject)
        local size::Int32 = AllBinary.size(this.list)
        let
            local index::Int32 = size
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local playerGameInput = (this.list.objectArray[index + 1])
                AllBinary.onDownKeyEvent(playerGameInput, eventObject)
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
                AllBinary.processEvent(this, eventObject, eventListenerInterface)
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            index += Int32(1)
        end
        nothing
end


function processI(this::DownKeyEventHandlerBase, eventObject, eventListenerInterface)
        local downKeyEventListenerInterface = (eventListenerInterface)
        AllBinary.onDownKey(downKeyEventListenerInterface, eventObject)
        nothing
end


function processEvent(this::DownKeyEventHandlerBase, eventObject, eventListenerInterface)
        local downKeyEventListenerInterface = (eventListenerInterface)
        AllBinary.onDownKeyEvent(downKeyEventListenerInterface, eventObject)
        nothing
end


function toString(this::DownKeyEventHandlerBase)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.toString(this))
        AllBinary.append(stringBuffer, staticGet_TOTAL_LISTENERS(DownKeyEventHandlerBase))
        AllBinary.appendint(stringBuffer, AllBinary.size(this.list))
        local eventListenerInterface = nothing
        let
            local index::Int32 = Int32(0)
            while index < AllBinary.size(this.list)
            try
            try
                eventListenerInterface = (AllBinary.get(this.list, index))
                AllBinary.append(stringBuffer, staticGet_LISTENER_LABEL(DownKeyEventHandlerBase))
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

