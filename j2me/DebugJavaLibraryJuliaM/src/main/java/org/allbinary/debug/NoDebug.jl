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
# package org.allbinary.debug

mutable struct NoDebug <: JObject
    NoDebug() = new()
end

const NoDebug_SINGLETONValue = Ref{Any}(nothing)
const NoDebug_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NoDebug})
    if !NoDebug_SINGLETONSet[]
        NoDebug_SINGLETONSet[] = true
        NoDebug_SINGLETONValue[] = newNoDebug()
    end
    NoDebug_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NoDebug}, value)
    NoDebug_SINGLETONSet[] = true
    NoDebug_SINGLETONValue[] = value
end

function initFieldsNoDebug(this::NoDebug)
    nothing
end

function initNoDebug(this::NoDebug)
    initFieldsNoDebug(this)
end

function newNoDebug()
    this = NoDebug()
    initNoDebug(this)
    this
end


function getInstance(::Type{NoDebug})
        return staticGet_SINGLETON(NoDebug)
end


function start(this::NoDebug)
        nothing
        nothing
end


function stop(this::NoDebug)
        nothing
        nothing
end


function getMaxTime(this::NoDebug)
        return Int64(10000)
end


function getStartTime(this::NoDebug)
        return Int64(0)
end


function isRunning(this::NoDebug)
        return false
end

