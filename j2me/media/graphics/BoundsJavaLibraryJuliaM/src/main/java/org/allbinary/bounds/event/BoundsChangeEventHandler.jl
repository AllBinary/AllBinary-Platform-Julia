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
# package org.allbinary.bounds.event

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BoundsChangeEventHandler <: JObject
    BoundsChangeEventHandler() = new()
end

const BoundsChangeEventHandler_SINGLETONValue = Ref{Any}(nothing)
const BoundsChangeEventHandler_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{BoundsChangeEventHandler})
    if !BoundsChangeEventHandler_SINGLETONSet[]
        BoundsChangeEventHandler_SINGLETONSet[] = true
        BoundsChangeEventHandler_SINGLETONValue[] = newBoundsChangeEventHandler()
    end
    BoundsChangeEventHandler_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{BoundsChangeEventHandler}, value)
    BoundsChangeEventHandler_SINGLETONSet[] = true
    BoundsChangeEventHandler_SINGLETONValue[] = value
end

function initFieldsBoundsChangeEventHandler(this::BoundsChangeEventHandler)
    nothing
end


function initBoundsChangeEventHandler(this::BoundsChangeEventHandler)
        initBasicEventHandler(this)
        initFieldsBoundsChangeEventHandler(this)
        nothing
        nothing
end

function newBoundsChangeEventHandler()
    this = BoundsChangeEventHandler()
    initBoundsChangeEventHandler(this)
    this
end


function getInstance(::Type{BoundsChangeEventHandler})
        return staticGet_SINGLETON(BoundsChangeEventHandler)
end


function process(this::BoundsChangeEventHandler, eventObject, eventListenerInterface)
        local boundsChangeEventListener = (eventListenerInterface)
        AllBinary.onBoundsChangeEvent(boundsChangeEventListener, (eventObject))
        nothing
end

