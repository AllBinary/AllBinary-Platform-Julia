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
    eventListenerInterfaceList::Any
    BasicEventHandler() = new()
end

const BasicEventHandler_PERFORMANCE_MESSAGEValue = Ref{Any}(nothing)
const BasicEventHandler_PERFORMANCE_MESSAGESet = Ref(false)
function staticGet_PERFORMANCE_MESSAGE(::Type{BasicEventHandler})
    if !BasicEventHandler_PERFORMANCE_MESSAGESet[]
        BasicEventHandler_PERFORMANCE_MESSAGESet[] = true
        BasicEventHandler_PERFORMANCE_MESSAGEValue[] = "Use Custom onEvent Methods for needed optimization"
    end
    BasicEventHandler_PERFORMANCE_MESSAGEValue[]
end
function staticSet_PERFORMANCE_MESSAGE(::Type{BasicEventHandler}, value)
    BasicEventHandler_PERFORMANCE_MESSAGESet[] = true
    BasicEventHandler_PERFORMANCE_MESSAGEValue[] = value
end

function initFieldsBasicEventHandler(this::BasicEventHandler)
    this.logUtil = nothing
    this.eventListenerInterfaceList = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
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


function toString(this::BasicEventHandler)
        local stringBuffer = newStringMaker()
        local LISTENER = " Listener: "
        AllBinary.append(stringBuffer, "Total Listeners: ")
        AllBinary.appendint(stringBuffer, AllBinary.size(this.eventListenerInterfaceList))
        local eventListenerInterface = nothing
        local index::Int32 = Int32(0)
        while index < AllBinary.size(this.eventListenerInterfaceList)
            try
                eventListenerInterface = (this.eventListenerInterfaceList.objectArray[index + 1])
                AllBinary.append(stringBuffer, LISTENER)
                AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), eventListenerInterface))
            catch e
                local commonStrings = AllBinary.getInstance(CommonStrings)
                AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.TOSTRING, e)
            end
            index += Int32(1)
        end
        return AllBinary.toString(stringBuffer)
end


function removeAllListeners(this::BasicEventHandler)
        this.eventListenerInterfaceList = newBasicArrayListD()
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
        local index::Int32 = Int32(0)
        local eventListenerInterface = nothing
        while index < AllBinary.size(this.eventListenerInterfaceList)
            try
                eventListenerInterface = (this.eventListenerInterfaceList.objectArray[index + 1])
                AllBinary.process(this, eventObject, eventListenerInterface)
            catch e
                local commonStrings = AllBinary.getInstance(CommonStrings)
                AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, AllBinary.getInstance(EventStrings).FIRE_EVENT, e)
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

