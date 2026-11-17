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
# package org.allbinary.game.input

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CompleteMotionGestureInputEventHandler <: JObject
    list::Any
    CompleteMotionGestureInputEventHandler() = new()
end

const CompleteMotionGestureInputEventHandler_SINGLETONValue = Ref{Any}(nothing)
const CompleteMotionGestureInputEventHandler_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{CompleteMotionGestureInputEventHandler})
    if !CompleteMotionGestureInputEventHandler_SINGLETONSet[]
        CompleteMotionGestureInputEventHandler_SINGLETONSet[] = true
        CompleteMotionGestureInputEventHandler_SINGLETONValue[] = newCompleteMotionGestureInputEventHandler()
    end
    CompleteMotionGestureInputEventHandler_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{CompleteMotionGestureInputEventHandler}, value)
    CompleteMotionGestureInputEventHandler_SINGLETONSet[] = true
    CompleteMotionGestureInputEventHandler_SINGLETONValue[] = value
end

function initFieldsCompleteMotionGestureInputEventHandler(this::CompleteMotionGestureInputEventHandler)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function getInstance(::Type{CompleteMotionGestureInputEventHandler})
        return staticGet_SINGLETON(CompleteMotionGestureInputEventHandler)
end


function initCompleteMotionGestureInputEventHandler(this::CompleteMotionGestureInputEventHandler)
        initBasicEventHandler(this)
        initFieldsCompleteMotionGestureInputEventHandler(this)
        nothing
        nothing
end

function newCompleteMotionGestureInputEventHandler()
    this = CompleteMotionGestureInputEventHandler()
    initCompleteMotionGestureInputEventHandler(this)
    this
end


function addListener(this::CompleteMotionGestureInputEventHandler, completeMotionGestureInputEventListener)
        if !AllBinary.contains(this.list, completeMotionGestureInputEventListener)
            AllBinary.add(this.list, completeMotionGestureInputEventListener)
        end
        nothing
end


function removeAllListeners(this::CompleteMotionGestureInputEventHandler)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListener(this::CompleteMotionGestureInputEventHandler, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEvent(this::CompleteMotionGestureInputEventHandler, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local completeMotionGestureInputEventListener = (this.list.objectArray[index + 1])
                AllBinary.onCompleteMotionGestureInputEvent(completeMotionGestureInputEventListener, (eventObject))
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


function process(this::CompleteMotionGestureInputEventHandler, eventObject, eventListenerInterface)
        local completeMotionGestureInputEventListenerInterface = (eventListenerInterface)
        AllBinary.onCompleteMotionGestureInputEvent(completeMotionGestureInputEventListenerInterface, (eventObject))
        nothing
end

