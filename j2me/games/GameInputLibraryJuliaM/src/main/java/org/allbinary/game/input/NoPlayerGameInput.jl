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

# extends PlayerGameInput: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoPlayerGameInput <: JObject
    NoPlayerGameInput() = new()
end

const NoPlayerGameInput_SINGLETONValue = Ref{Any}(nothing)
const NoPlayerGameInput_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NoPlayerGameInput})
    if !NoPlayerGameInput_SINGLETONSet[]
        NoPlayerGameInput_SINGLETONSet[] = true
        NoPlayerGameInput_SINGLETONValue[] = newNoPlayerGameInput()
    end
    NoPlayerGameInput_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NoPlayerGameInput}, value)
    NoPlayerGameInput_SINGLETONSet[] = true
    NoPlayerGameInput_SINGLETONValue[] = value
end

function initFieldsNoPlayerGameInput(this::NoPlayerGameInput)
    nothing
end


function getInstance(::Type{NoPlayerGameInput})
        return staticGet_SINGLETON(NoPlayerGameInput)
end


function initNoPlayerGameInput(this::NoPlayerGameInput)
        initPlayerGameInput(this, newBasicArrayListD(), newBasicArrayListD(), -Int32(1))
        nothing
end

function newNoPlayerGameInput()
    this = NoPlayerGameInput()
    initNoPlayerGameInput(this)
    this
end


function onDownGameKeyEvent(this::NoPlayerGameInput, gameKeyEvent)
        nothing
        nothing
end


function onUpGameKeyEvent(this::NoPlayerGameInput, gameKeyEvent)
        nothing
        nothing
end

