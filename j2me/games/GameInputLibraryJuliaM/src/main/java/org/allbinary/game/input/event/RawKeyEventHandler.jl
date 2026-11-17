#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.input.event

mutable struct RawKeyEventHandler <: JObject
    logUtil::Any
    eventListenerInterfaceList::Any
    RawKeyEventHandler() = new()
end

const RawKeyEventHandler_instanceValue = Ref{Any}(nothing)
const RawKeyEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{RawKeyEventHandler})
    if !RawKeyEventHandler_instanceSet[]
        RawKeyEventHandler_instanceSet[] = true
        RawKeyEventHandler_instanceValue[] = newRawKeyEventHandler()
    end
    RawKeyEventHandler_instanceValue[]
end
function staticSet_instance(::Type{RawKeyEventHandler}, value)
    RawKeyEventHandler_instanceSet[] = true
    RawKeyEventHandler_instanceValue[] = value
end
const RawKeyEventHandler_TOTAL_LISTENERSValue = Ref{Any}(nothing)
const RawKeyEventHandler_TOTAL_LISTENERSSet = Ref(false)
function staticGet_TOTAL_LISTENERS(::Type{RawKeyEventHandler})
    if !RawKeyEventHandler_TOTAL_LISTENERSSet[]
        RawKeyEventHandler_TOTAL_LISTENERSSet[] = true
        RawKeyEventHandler_TOTAL_LISTENERSValue[] = "Total Listeners: "
    end
    RawKeyEventHandler_TOTAL_LISTENERSValue[]
end
function staticSet_TOTAL_LISTENERS(::Type{RawKeyEventHandler}, value)
    RawKeyEventHandler_TOTAL_LISTENERSSet[] = true
    RawKeyEventHandler_TOTAL_LISTENERSValue[] = value
end
const RawKeyEventHandler_LISTENER_LABELValue = Ref{Any}(nothing)
const RawKeyEventHandler_LISTENER_LABELSet = Ref(false)
function staticGet_LISTENER_LABEL(::Type{RawKeyEventHandler})
    if !RawKeyEventHandler_LISTENER_LABELSet[]
        RawKeyEventHandler_LISTENER_LABELSet[] = true
        RawKeyEventHandler_LISTENER_LABELValue[] = " Listener: "
    end
    RawKeyEventHandler_LISTENER_LABELValue[]
end
function staticSet_LISTENER_LABEL(::Type{RawKeyEventHandler}, value)
    RawKeyEventHandler_LISTENER_LABELSet[] = true
    RawKeyEventHandler_LISTENER_LABELValue[] = value
end

function initFieldsRawKeyEventHandler(this::RawKeyEventHandler)
    this.logUtil = nothing
    this.eventListenerInterfaceList = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    nothing
end


function getInstance(::Type{RawKeyEventHandler})
        return staticGet_instance(RawKeyEventHandler)
end


function initRawKeyEventHandler(this::RawKeyEventHandler)
        initFieldsRawKeyEventHandler(this)
        this.eventListenerInterfaceList = newBasicArrayListD()
        nothing
end

function newRawKeyEventHandler()
    this = RawKeyEventHandler()
    initRawKeyEventHandler(this)
    this
end


function removeAllListeners(this::RawKeyEventHandler)
        this.eventListenerInterfaceList = newBasicArrayListD()
        nothing
end


function addListeners(this::RawKeyEventHandler, vector)
        local eventListenerInterface = nothing
        local size::Int32 = AllBinary.size(vector)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            eventListenerInterface = (AllBinary.get(vector, index))
            AllBinary.addListener(this, eventListenerInterface)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function addListenerSingleThreaded(this::RawKeyEventHandler, eventListenerInterface)
        if !AllBinary.contains(this.eventListenerInterfaceList, eventListenerInterface)
            AllBinary.add(this.eventListenerInterfaceList, eventListenerInterface)
        end
        nothing
end


function addListener(this::RawKeyEventHandler, eventListenerInterface)
        if !AllBinary.contains(this.eventListenerInterfaceList, eventListenerInterface)
            AllBinary.add(this.eventListenerInterfaceList, eventListenerInterface)
        end
        nothing
end


function removeListenerSingleThreaded(this::RawKeyEventHandler, eventListenerInterface)
        AllBinary.remove(this.eventListenerInterfaceList, eventListenerInterface)
        nothing
end


function removeListener(this::RawKeyEventHandler, eventListenerInterface)
        AllBinary.remove(this.eventListenerInterfaceList, eventListenerInterface)
        nothing
end


function fireEvent(this::RawKeyEventHandler, keyCode, deviceId, repeated)
        local eventListenerInterface = nothing
        local index::Int32 = Int32(0)
        while index < AllBinary.size(this.eventListenerInterfaceList)
            try
                eventListenerInterface = (AllBinary.get(this.eventListenerInterfaceList, index))
                AllBinary.process(this, keyCode, deviceId, repeated, eventListenerInterface)
            catch e
                local commonStrings = AllBinary.getInstance(CommonStrings)
                AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
            end
            index += Int32(1)
        end
        nothing
end


function process(this::RawKeyEventHandler, keyCode, deviceId, repeated, eventListenerInterface)
        AllBinary.onEventRaw(eventListenerInterface, keyCode, deviceId, repeated)
        nothing
end


function getEventListenerInterfaceListP(this::RawKeyEventHandler)
        return this.eventListenerInterfaceList
end


function toString(this::RawKeyEventHandler)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, staticGet_TOTAL_LISTENERS(RawKeyEventHandler))
        AllBinary.appendint(stringBuffer, AllBinary.size(this.eventListenerInterfaceList))
        local eventListenerInterface = nothing
        local index::Int32 = Int32(0)
        while index < AllBinary.size(this.eventListenerInterfaceList)
            try
                eventListenerInterface = (AllBinary.get(this.eventListenerInterfaceList, index))
                AllBinary.append(stringBuffer, staticGet_LISTENER_LABEL(RawKeyEventHandler))
                AllBinary.append(stringBuffer, AllBinary.toString(eventListenerInterface))
            catch e
                local commonStrings = AllBinary.getInstance(CommonStrings)
                AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.TOSTRING, e)
            end
            index += Int32(1)
        end
        return AllBinary.toString(stringBuffer)
end

