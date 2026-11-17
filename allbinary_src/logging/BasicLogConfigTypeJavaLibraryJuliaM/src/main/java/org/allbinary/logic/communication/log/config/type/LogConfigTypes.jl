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
# package org.allbinary.logic.communication.log.config.type

mutable struct LogConfigTypes <: JObject
    LogConfigTypes() = new()
end

const LogConfigTypes_LOGGINGValue = Ref{Any}(nothing)
const LogConfigTypes_LOGGINGSet = Ref(false)
function staticGet_LOGGING(::Type{LogConfigTypes})
    if !LogConfigTypes_LOGGINGSet[]
        LogConfigTypes_LOGGINGSet[] = true
        LogConfigTypes_LOGGINGValue[] = newBasicArrayListD()
    end
    LogConfigTypes_LOGGINGValue[]
end
function staticSet_LOGGING(::Type{LogConfigTypes}, value)
    LogConfigTypes_LOGGINGSet[] = true
    LogConfigTypes_LOGGINGValue[] = value
end

function initFieldsLogConfigTypes(this::LogConfigTypes)
    nothing
end


function initLogConfigTypes(this::LogConfigTypes)
        initFieldsLogConfigTypes(this)
        nothing
        nothing
end

function newLogConfigTypes()
    this = LogConfigTypes()
    initLogConfigTypes(this)
    this
end

