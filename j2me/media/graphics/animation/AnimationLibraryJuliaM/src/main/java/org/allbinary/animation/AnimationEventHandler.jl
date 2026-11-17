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
# package org.allbinary.animation

# extends BasicEventHandler: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AnimationEventHandler <: JObject
    AnimationEventHandler() = new()
end

const AnimationEventHandler_eventHandlerValue = Ref{Any}(nothing)
const AnimationEventHandler_eventHandlerSet = Ref(false)
function staticGet_eventHandler(::Type{AnimationEventHandler})
    if !AnimationEventHandler_eventHandlerSet[]
        AnimationEventHandler_eventHandlerSet[] = true
        AnimationEventHandler_eventHandlerValue[] = newAnimationEventHandler()
    end
    AnimationEventHandler_eventHandlerValue[]
end
function staticSet_eventHandler(::Type{AnimationEventHandler}, value)
    AnimationEventHandler_eventHandlerSet[] = true
    AnimationEventHandler_eventHandlerValue[] = value
end

function initFieldsAnimationEventHandler(this::AnimationEventHandler)
    nothing
end


function initAnimationEventHandler(this::AnimationEventHandler)
        initBasicEventHandler(this)
        initFieldsAnimationEventHandler(this)
        nothing
        nothing
end

function newAnimationEventHandler()
    this = AnimationEventHandler()
    initAnimationEventHandler(this)
    this
end


function getInstance(::Type{AnimationEventHandler})
        return staticGet_eventHandler(AnimationEventHandler)
end

