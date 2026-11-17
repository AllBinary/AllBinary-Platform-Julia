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
# package org.allbinary.game.score

# extends Scoreable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoScoreable <: JObject
    NoScoreable() = new()
end

const NoScoreable_SINGLETONValue = Ref{Any}(nothing)
const NoScoreable_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NoScoreable})
    if !NoScoreable_SINGLETONSet[]
        NoScoreable_SINGLETONSet[] = true
        NoScoreable_SINGLETONValue[] = newNoScoreable()
    end
    NoScoreable_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NoScoreable}, value)
    NoScoreable_SINGLETONSet[] = true
    NoScoreable_SINGLETONValue[] = value
end

function initFieldsNoScoreable(this::NoScoreable)
    nothing
end


function getInstance(::Type{NoScoreable})
        return staticGet_SINGLETON(NoScoreable)
end


function initNoScoreable(this::NoScoreable)
        initScoreable(this, Int32(0))
        nothing
end

function newNoScoreable()
    this = NoScoreable()
    initNoScoreable(this)
    this
end


function addPoints(this::NoScoreable, points)
        nothing
        nothing
end


function removePoints(this::NoScoreable, points)
        nothing
        nothing
end

