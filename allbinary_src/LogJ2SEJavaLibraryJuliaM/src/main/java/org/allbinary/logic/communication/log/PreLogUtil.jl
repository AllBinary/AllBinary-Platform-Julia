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

#ActualPlatform
mutable struct PreLogUtil <: JObject
    PreLogUtil() = new()
end

const PreLogUtil_LOG_SUCCESSValue = Ref{Any}(nothing)
const PreLogUtil_LOG_SUCCESSSet = Ref(false)
function staticGet_LOG_SUCCESS(::Type{PreLogUtil})
    if !PreLogUtil_LOG_SUCCESSSet[]
        PreLogUtil_LOG_SUCCESSSet[] = true
        PreLogUtil_LOG_SUCCESSValue[] = "org.allbinary: "
    end
    PreLogUtil_LOG_SUCCESSValue[]
end
function staticSet_LOG_SUCCESS(::Type{PreLogUtil}, value)
    PreLogUtil_LOG_SUCCESSSet[] = true
    PreLogUtil_LOG_SUCCESSValue[] = value
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
        local className = AllBinary.getInstance(CommonStrings).EMPTY
        if jClassName(anyType) != nothing
            className = jClassName(anyType)
        end
        local message = AllBinary.get(AllBinary.getInstance(LogFormatUtil), className, functionName, specialMessage, exception)
        Base.println(jstr(staticGet_LOG_SUCCESS(PreLogUtil)))
        Base.println(jstr(message))
        nothing
end


function putS(::Type{PreLogUtil}, specialMessage, className, functionName)
        AllBinary.putSE(PreLogUtil, specialMessage, className, functionName, AllBinary.getInstance(NullUtil).NULL_OBJECT)
        nothing
end


function putSE(::Type{PreLogUtil}, specialMessage, className, functionName, exception)
        local message = AllBinary.get(AllBinary.getInstance(LogFormatUtil), className, functionName, specialMessage, exception)
        Base.println(jstr(staticGet_LOG_SUCCESS(PreLogUtil)))
        Base.println(jstr(message))
        nothing
end

