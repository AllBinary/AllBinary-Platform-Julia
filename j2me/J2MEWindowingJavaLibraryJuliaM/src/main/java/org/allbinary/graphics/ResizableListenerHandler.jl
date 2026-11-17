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
# package org.allbinary.graphics

mutable struct ResizableListenerHandler <: JObject
    ResizableListenerHandler() = new()
end

const ResizableListenerHandler_instanceValue = Ref{Any}(nothing)
const ResizableListenerHandler_instanceSet = Ref(false)
function staticGet_instance(::Type{ResizableListenerHandler})
    if !ResizableListenerHandler_instanceSet[]
        ResizableListenerHandler_instanceSet[] = true
        ResizableListenerHandler_instanceValue[] = newResizableListenerHandler()
    end
    ResizableListenerHandler_instanceValue[]
end
function staticSet_instance(::Type{ResizableListenerHandler}, value)
    ResizableListenerHandler_instanceSet[] = true
    ResizableListenerHandler_instanceValue[] = value
end

function initFieldsResizableListenerHandler(this::ResizableListenerHandler)
    nothing
end

function initResizableListenerHandler(this::ResizableListenerHandler)
    initFieldsResizableListenerHandler(this)
end

function newResizableListenerHandler()
    this = ResizableListenerHandler()
    initResizableListenerHandler(this)
    this
end


function getInstance(::Type{ResizableListenerHandler})
        return staticGet_instance(ResizableListenerHandler)
end


function setListener(this::ResizableListenerHandler, resizableListenerInterface)
        nothing
        nothing
end


function fire(this::ResizableListenerHandler, isFullScreen)
        nothing
        nothing
end


function fireEvent(this::ResizableListenerHandler, value)
        nothing
        nothing
end

