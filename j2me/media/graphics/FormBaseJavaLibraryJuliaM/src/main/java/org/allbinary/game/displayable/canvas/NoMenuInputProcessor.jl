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
# package org.allbinary.game.displayable.canvas

# extends BasicMenuInputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoMenuInputProcessor <: JObject
    NoMenuInputProcessor() = new()
end

const NoMenuInputProcessor_SINGLETONValue = Ref{Any}(nothing)
const NoMenuInputProcessor_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NoMenuInputProcessor})
    if !NoMenuInputProcessor_SINGLETONSet[]
        NoMenuInputProcessor_SINGLETONSet[] = true
        NoMenuInputProcessor_SINGLETONValue[] = newNoMenuInputProcessor()
    end
    NoMenuInputProcessor_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NoMenuInputProcessor}, value)
    NoMenuInputProcessor_SINGLETONSet[] = true
    NoMenuInputProcessor_SINGLETONValue[] = value
end

function initFieldsNoMenuInputProcessor(this::NoMenuInputProcessor)
    nothing
end


function getInstance(::Type{NoMenuInputProcessor})
        return staticGet_SINGLETON(NoMenuInputProcessor)
end


function initNoMenuInputProcessor(this::NoMenuInputProcessor)
        initBasicMenuInputProcessor(this, AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil)), -Int32(1), staticGet_NULL_CANVAS(NullCanvas))
        nothing
end

function newNoMenuInputProcessor()
    this = NoMenuInputProcessor()
    initNoMenuInputProcessor(this)
    this
end


function onDownGameKeyEvent(this::NoMenuInputProcessor, gameKeyEvent)
        nothing
        nothing
end


function onUpGameKeyEvent(this::NoMenuInputProcessor, gameKeyEvent)
        nothing
        nothing
end


function onMotionGestureEvent(this::NoMenuInputProcessor, motionGestureEvent)
        nothing
        nothing
end

