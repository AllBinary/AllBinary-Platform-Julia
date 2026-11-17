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
# package org.allbinary.view.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ViewPositionEventHandler <: JObject
    list::Any
    ViewPositionEventHandler() = new()
end

const ViewPositionEventHandler_SINGLETONValue = Ref{Any}(nothing)
const ViewPositionEventHandler_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{ViewPositionEventHandler})
    if !ViewPositionEventHandler_SINGLETONSet[]
        ViewPositionEventHandler_SINGLETONSet[] = true
        ViewPositionEventHandler_SINGLETONValue[] = newViewPositionEventHandler()
    end
    ViewPositionEventHandler_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{ViewPositionEventHandler}, value)
    ViewPositionEventHandler_SINGLETONSet[] = true
    ViewPositionEventHandler_SINGLETONValue[] = value
end

function initFieldsViewPositionEventHandler(this::ViewPositionEventHandler)
    this.list = nothing
    this.list = newBasicArrayListD()
    nothing
end


function getInstance(::Type{ViewPositionEventHandler})
        return staticGet_SINGLETON(ViewPositionEventHandler)
end


function initViewPositionEventHandler(this::ViewPositionEventHandler)
        initBasicEventHandler(this)
        initFieldsViewPositionEventHandler(this)
        nothing
        nothing
end

function newViewPositionEventHandler()
    this = ViewPositionEventHandler()
    initViewPositionEventHandler(this)
    this
end


function addListener(this::ViewPositionEventHandler, layerInterface)
        if !AllBinary.contains(this.list, layerInterface)
            AllBinary.add(this.list, layerInterface)
        end
        nothing
end


function removeAllListeners(this::ViewPositionEventHandler)
        AllBinary.clear(this.list)
        AllBinary.removeAllListeners(this)
        nothing
end


function removeListener(this::ViewPositionEventHandler, eventListenerInterface)
        AllBinary.remove(this.list, eventListenerInterface)
        AllBinary.removeListener(this, eventListenerInterface)
        nothing
end


function fireEvent(this::ViewPositionEventHandler, eventObject)
        let
            local index::Int32 = AllBinary.size(this.list)
            while (index -= Int32(1)) >= Int32(0)
            try
            try
                local layerInterface = (this.list.objectArray[index + 1])
                AllBinary.onChangeEvent(layerInterface, (eventObject))
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


function process(this::ViewPositionEventHandler, eventObject, eventListenerInterface)
        local viewPositionEventListenerInterface = ((eventListenerInterface))
        AllBinary.onChangeEvent(viewPositionEventListenerInterface, (eventObject))
        nothing
end

