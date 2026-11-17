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
# package org.allbinary.graphics.color

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ColorChangeEventHandler <: JObject
    ColorChangeEventHandler() = new()
end

const ColorChangeEventHandler_eventHandlerValue = Ref{Any}(nothing)
const ColorChangeEventHandler_eventHandlerSet = Ref(false)
function staticGet_eventHandler(::Type{ColorChangeEventHandler})
    if !ColorChangeEventHandler_eventHandlerSet[]
        ColorChangeEventHandler_eventHandlerSet[] = true
        ColorChangeEventHandler_eventHandlerValue[] = newColorChangeEventHandler()
    end
    ColorChangeEventHandler_eventHandlerValue[]
end
function staticSet_eventHandler(::Type{ColorChangeEventHandler}, value)
    ColorChangeEventHandler_eventHandlerSet[] = true
    ColorChangeEventHandler_eventHandlerValue[] = value
end

function initFieldsColorChangeEventHandler(this::ColorChangeEventHandler)
    nothing
end


function initColorChangeEventHandler(this::ColorChangeEventHandler)
        initBasicEventHandler(this)
        initFieldsColorChangeEventHandler(this)
        nothing
        nothing
end

function newColorChangeEventHandler()
    this = ColorChangeEventHandler()
    initColorChangeEventHandler(this)
    this
end


function getInstance(::Type{ColorChangeEventHandler})
        return staticGet_eventHandler(ColorChangeEventHandler)
end

