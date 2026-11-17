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

#NoPlatform
mutable struct TimeStampUtil <: JObject
    TimeStampUtil() = new()
end

const TimeStampUtil_instanceValue = Ref{Any}(nothing)
const TimeStampUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{TimeStampUtil})
    if !TimeStampUtil_instanceSet[]
        TimeStampUtil_instanceSet[] = true
        TimeStampUtil_instanceValue[] = newTimeStampUtil()
    end
    TimeStampUtil_instanceValue[]
end
function staticSet_instance(::Type{TimeStampUtil}, value)
    TimeStampUtil_instanceSet[] = true
    TimeStampUtil_instanceValue[] = value
end

function initFieldsTimeStampUtil(this::TimeStampUtil)
    nothing
end


function getInstance(::Type{TimeStampUtil})
        return staticGet_instance(TimeStampUtil)
end


function initTimeStampUtil(this::TimeStampUtil)
        initFieldsTimeStampUtil(this)
        nothing
        nothing
end

function newTimeStampUtil()
    this = TimeStampUtil()
    initTimeStampUtil(this)
    this
end


function getAsString(this::TimeStampUtil)
        throw(jNewException("RuntimeException", ""))
end

