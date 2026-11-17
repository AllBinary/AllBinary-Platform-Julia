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
# package org.allbinary.logic.util.event.handler

mutable struct BasicEventHandler <: JObject
    logUtil::Any
    commonStrings::Any
    eventStrings::Any
    eventListenerInterfaceList::Any
    BasicEventHandler() = new()
end


function initFieldsBasicEventHandler(this::BasicEventHandler)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.eventStrings = nothing
    this.eventListenerInterfaceList = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.eventStrings = AllBinary.getInstance(EventStrings)
    
    nothing
end


function initBasicEventHandler(this::BasicEventHandler)
        initFieldsBasicEventHandler(this)
        this.eventListenerInterfaceList = newBasicArrayListD()
        nothing
end

function newBasicEventHandler()
    this = BasicEventHandler()
    initBasicEventHandler(this)
    this
end


function removeAllListeners(this::BasicEventHandler)
        this.eventListenerInterfaceList = newBasicArrayListD()
        nothing
end


function addListeners(this::BasicEventHandler, vector)
        local eventListenerInterface = nothing
        local size::Int32 = AllBinary.size(vector)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            eventListenerInterface = (AllBinary.get(vector, index))
            AllBinary.addListenerInterface(this, eventListenerInterface)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function removeListeners(this::BasicEventHandler, vector)
        local eventListenerInterface = nothing
        local size::Int32 = AllBinary.size(vector)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            eventListenerInterface = (AllBinary.get(vector, index))
            AllBinary.removeListener(this, eventListenerInterface)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function addListenerSingleThreaded(this::BasicEventHandler, eventListenerInterface)
        if !AllBinary.contains(this.eventListenerInterfaceList, eventListenerInterface)
            AllBinary.add(this.eventListenerInterfaceList, eventListenerInterface)
        end
        nothing
end


function addListenerInterface(this::BasicEventHandler, eventListenerInterface)
        if !AllBinary.contains(this.eventListenerInterfaceList, eventListenerInterface)
            AllBinary.add(this.eventListenerInterfaceList, eventListenerInterface)
        end
        nothing
end


function removeListenerSingleThreaded(this::BasicEventHandler, eventListenerInterface)
        AllBinary.remove(this.eventListenerInterfaceList, eventListenerInterface)
        nothing
end


function removeListener(this::BasicEventHandler, eventListenerInterface)
        AllBinary.remove(this.eventListenerInterfaceList, eventListenerInterface)
        nothing
end


function fireEvent(this::BasicEventHandler, eventObject)
        local eventListenerInterface = nothing
        local index::Int32 = Int32(0)
        while index < AllBinary.size(this.eventListenerInterfaceList)
            try
                eventListenerInterface = (AllBinary.get(this.eventListenerInterfaceList, index))
                AllBinary.process(this, eventObject, eventListenerInterface)
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.eventStrings.FIRE_EVENT, e)
            end
            index += Int32(1)
        end
        nothing
end


function process(this::BasicEventHandler, eventObject, eventListenerInterface)
        AllBinary.onEvent(eventListenerInterface, eventObject)
        nothing
end


function getEventListenerInterfaceListP(this::BasicEventHandler)
        return this.eventListenerInterfaceList
end


function toString(this::BasicEventHandler)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, this.eventStrings.TOTAL_LISTENERS)
        AllBinary.appendint(stringBuffer, AllBinary.size(this.eventListenerInterfaceList))
        local eventListenerInterface = nothing
        local index::Int32 = Int32(0)
        while index < AllBinary.size(this.eventListenerInterfaceList)
            try
                eventListenerInterface = (AllBinary.get(this.eventListenerInterfaceList, index))
                AllBinary.append(stringBuffer, this.eventStrings.LISTENER_LABEL)
                AllBinary.append(stringBuffer, AllBinary.toString(eventListenerInterface))
            catch e
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e)
            end
            index += Int32(1)
        end
        return AllBinary.toString(stringBuffer)
end

