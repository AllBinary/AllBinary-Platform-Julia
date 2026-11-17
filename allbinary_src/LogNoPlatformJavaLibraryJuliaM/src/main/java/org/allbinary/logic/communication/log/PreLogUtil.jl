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

#NoPlatform
mutable struct PreLogUtil <: JObject
    PreLogUtil() = new()
end


function initFieldsPreLogUtil(this::PreLogUtil)
    nothing
end


function initPreLogUtil(this::PreLogUtil)
        initFieldsPreLogUtil(this)
        nothing
        nothing
end

function newPreLogUtil()
    this = PreLogUtil()
    initPreLogUtil(this)
    this
end


function put(::Type{PreLogUtil}, specialMessage, anyType, functionName)
        AllBinary.putOE(PreLogUtil, specialMessage, anyType, functionName, AllBinary.getInstance(NullUtil).NULL_OBJECT)
        nothing
end


function putOE(::Type{PreLogUtil}, specialMessage, anyType, functionName, exception)
        throw(jNewException("RuntimeException", ""))
        nothing
end


function putSE(::Type{PreLogUtil}, specialMessage, className, functionName, exception)
        throw(jNewException("RuntimeException", ""))
        nothing
end

