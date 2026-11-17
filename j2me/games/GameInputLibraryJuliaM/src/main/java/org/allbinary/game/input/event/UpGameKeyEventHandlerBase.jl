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
mutable struct UpGameKeyEventHandlerBase <: JObject
    list::Any
    UpGameKeyEventHandlerBase() = new()
end

const UpGameKeyEventHandlerBase_TOTAL_LISTENERSValue = Ref{Any}(nothing)
const UpGameKeyEventHandlerBase_TOTAL_LISTENERSSet = Ref(false)
function staticGet_TOTAL_LISTENERS(::Type{UpGameKeyEventHandlerBase})
    if !UpGameKeyEventHandlerBase_TOTAL_LISTENERSSet[]
        UpGameKeyEventHandlerBase_TOTAL_LISTENERSSet[] = true
        UpGameKeyEventHandlerBase_TOTAL_LISTENERSValue[] = " Total PlayerGameInput Listeners: "
    end
    UpGameKeyEventHandlerBase_TOTAL_LISTENERSValue[]
end
function staticSet_TOTAL_LISTENERS(::Type{UpGameKeyEventHandlerBase}, value)
    UpGameKeyEventHandlerBase_TOTAL_LISTENERSSet[] = true
    UpGameKeyEventHandlerBase_TOTAL_LISTENERSValue[] = value
end
const UpGameKeyEventHandlerBase_LISTENER_LABELValue = Ref{Any}(nothing)
const UpGameKeyEventHandlerBase_LISTENER_LABELSet = Ref(false)
function staticGet_LISTENER_LABEL(::Type{UpGameKeyEventHandlerBase})
    if !UpGameKeyEventHandlerBase_LISTENER_LABELSet[]
        UpGameKeyEventHandlerBase_LISTENER_LABELSet[] = true
        UpGameKeyEventHandlerBase_LISTENER_LABELValue[] = " PlayerGameInput Listener: "
    end
    UpGameKeyEventHandlerBase_LISTENER_LABELValue[]
end
function staticSet_LISTENER_LABEL(::Type{UpGameKeyEventHandlerBase}, value)
    UpGameKeyEventHandlerBase_LISTENER_LABELSet[] = true
    UpGameKeyEventHandlerBase_LISTENER_LABELValue[] = value
end

function initFieldsUpGameKeyEventHandlerBase(this::UpGameKeyEventHandlerBase)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function initUpGameKeyEventHandlerBase(this::UpGameKeyEventHandlerBase)
        initBasicEventHandler(this)
        initFieldsUpGameKeyEventHandlerBase(this)
        nothing
        nothing
end

function newUpGameKeyEventHandlerBase()
    this = UpGameKeyEventHandlerBase()
    initUpGameKeyEventHandlerBase(this)
    this
end


function addListener(this::UpGameKeyEventHandlerBase, playerGameInput)
        if !AllBinary.contains(this.list, playerGameInput)
            AllBinary.add(this.list, playerGameInput)
        end
        nothing
end


function removeAllListeners(this::UpGameKeyEventHandlerBase)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListenerSingleThreaded(this::UpGameKeyEventHandlerBase, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListenerSingleThreaded(this, eventListenerInterface)
        nothing
end


function removeListener(this::UpGameKeyEventHandlerBase, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEvent(this::UpGameKeyEventHandlerBase, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local playerGameInput = (this.list.objectArray[index + 1])
                AllBinary.onUpGameKeyEvent(playerGameInput, (eventObject))
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


function process(this::UpGameKeyEventHandlerBase, eventObject, eventListenerInterface)
        local upGameKeyEventListenerInterface = (eventListenerInterface)
        AllBinary.onUpGameKeyEvent(upGameKeyEventListenerInterface, (eventObject))
        nothing
end


function toString(this::UpGameKeyEventHandlerBase)
        local stringBuffer = newStringMaker()
        local size::Int32 = AllBinary.size(this.list)
        AllBinary.append(stringBuffer, AllBinary.toString(this))
        AllBinary.append(stringBuffer, staticGet_TOTAL_LISTENERS(UpGameKeyEventHandlerBase))
        AllBinary.appendint(stringBuffer, size)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            try
                local eventListenerInterface = (AllBinary.get(this.list, index))
                AllBinary.append(stringBuffer, staticGet_LISTENER_LABEL(UpGameKeyEventHandlerBase))
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

