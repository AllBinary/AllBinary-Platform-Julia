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
# package org.allbinary.time

# extends TimeDelayHelper: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoTimeDelayHelper <: JObject
    NoTimeDelayHelper() = new()
end

const NoTimeDelayHelper_SINGLETONValue = Ref{Any}(nothing)
const NoTimeDelayHelper_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NoTimeDelayHelper})
    if !NoTimeDelayHelper_SINGLETONSet[]
        NoTimeDelayHelper_SINGLETONSet[] = true
        NoTimeDelayHelper_SINGLETONValue[] = newNoTimeDelayHelper()
    end
    NoTimeDelayHelper_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NoTimeDelayHelper}, value)
    NoTimeDelayHelper_SINGLETONSet[] = true
    NoTimeDelayHelper_SINGLETONValue[] = value
end

function initFieldsNoTimeDelayHelper(this::NoTimeDelayHelper)
    nothing
end


function initNoTimeDelayHelper(this::NoTimeDelayHelper)
        initTimeDelayHelper(this, Int32(0))
        nothing
end

function newNoTimeDelayHelper()
    this = NoTimeDelayHelper()
    initNoTimeDelayHelper(this)
    this
end


function isTimeTNT(this::NoTimeDelayHelper)
        return true
end


function isTimeSinceTNT(this::NoTimeDelayHelper, delay)
        return true
end


function isTime(this::NoTimeDelayHelper, currentTime)
        return true
end


function isTimeSince(this::NoTimeDelayHelper, delay, currentTime)
        return true
end

