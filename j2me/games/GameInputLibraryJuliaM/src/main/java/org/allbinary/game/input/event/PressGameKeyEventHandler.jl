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
mutable struct PressGameKeyEventHandler <: JObject
    list::Any
    PressGameKeyEventHandler() = new()
end

const PressGameKeyEventHandler_instanceValue = Ref{Any}(nothing)
const PressGameKeyEventHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{PressGameKeyEventHandler})
    if !PressGameKeyEventHandler_instanceSet[]
        PressGameKeyEventHandler_instanceSet[] = true
        PressGameKeyEventHandler_instanceValue[] = newPressGameKeyEventHandler()
    end
    PressGameKeyEventHandler_instanceValue[]
end
function staticSet_instance(::Type{PressGameKeyEventHandler}, value)
    PressGameKeyEventHandler_instanceSet[] = true
    PressGameKeyEventHandler_instanceValue[] = value
end

function initFieldsPressGameKeyEventHandler(this::PressGameKeyEventHandler)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function getInstance(::Type{PressGameKeyEventHandler})
        return staticGet_instance(PressGameKeyEventHandler)
end


function initPressGameKeyEventHandler(this::PressGameKeyEventHandler)
        initBasicEventHandler(this)
        initFieldsPressGameKeyEventHandler(this)
        nothing
        nothing
end

function newPressGameKeyEventHandler()
    this = PressGameKeyEventHandler()
    initPressGameKeyEventHandler(this)
    this
end


function addListener(this::PressGameKeyEventHandler, playerGameInput)
        if !AllBinary.contains(this.list, playerGameInput)
            AllBinary.add(this.list, playerGameInput)
        end
        nothing
end


function removeAllListeners(this::PressGameKeyEventHandler)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListener(this::PressGameKeyEventHandler, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEvent(this::PressGameKeyEventHandler, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local playerGameInput = (this.list.objectArray[index + 1])
                AllBinary.onPressGameKeyEvent(playerGameInput, (eventObject))
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


function process(this::PressGameKeyEventHandler, eventObject, eventListenerInterface)
        local pressGameKeyEventListenerInterface = ((eventListenerInterface))
        AllBinary.onPressGameKeyEvent(pressGameKeyEventListenerInterface, (eventObject))
        nothing
end

