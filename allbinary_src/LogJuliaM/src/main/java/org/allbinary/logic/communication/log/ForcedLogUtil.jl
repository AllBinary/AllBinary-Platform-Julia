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
# package org.allbinary.logic.communication.log

mutable struct ForcedLogUtil <: JObject
    ForcedLogUtil() = new()
end


function initFieldsForcedLogUtil(this::ForcedLogUtil)
    nothing
end

function initForcedLogUtil(this::ForcedLogUtil)
    initFieldsForcedLogUtil(this)
end

function newForcedLogUtil()
    this = ForcedLogUtil()
    initForcedLogUtil(this)
    this
end


function log(::Type{ForcedLogUtil}, message, anyType)
        try
            throw(jNewException("Exception", message))
        catch e
            AllBinary.putOE(PreLogUtil, AllBinary.getInstance(CommonStrings).EXCEPTION, anyType, "log", e)
        end
        nothing
end

