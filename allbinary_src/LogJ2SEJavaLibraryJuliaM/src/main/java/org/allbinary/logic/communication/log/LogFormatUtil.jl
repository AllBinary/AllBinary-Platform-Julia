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
mutable struct LogFormatUtil <: JObject
    timeStampUtil::Any
    commonSeps::Any
    NONE::Any
    LOG_ERROR::Any
    EMPTY::Any
    STACK_TRACE::Any
    TIME::Any
    CLASS_NAME::Any
    FUNCTION_CALL::Any
    SPECIAL_MESSAGE::Any
    stringUtil::Any
    exceptionUtil::Any
    nullUtil::Any
    LogFormatUtil() = new()
end

const LogFormatUtil_instanceValue = Ref{Any}(nothing)
const LogFormatUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{LogFormatUtil})
    if !LogFormatUtil_instanceSet[]
        LogFormatUtil_instanceSet[] = true
        LogFormatUtil_instanceValue[] = newLogFormatUtil()
    end
    LogFormatUtil_instanceValue[]
end
function staticSet_instance(::Type{LogFormatUtil}, value)
    LogFormatUtil_instanceSet[] = true
    LogFormatUtil_instanceValue[] = value
end

function initFieldsLogFormatUtil(this::LogFormatUtil)
    this.timeStampUtil = nothing
    this.commonSeps = nothing
    this.NONE = nothing
    this.LOG_ERROR = nothing
    this.EMPTY = nothing
    this.STACK_TRACE = nothing
    this.TIME = nothing
    this.CLASS_NAME = nothing
    this.FUNCTION_CALL = nothing
    this.SPECIAL_MESSAGE = nothing
    this.stringUtil = nothing
    this.exceptionUtil = nothing
    this.nullUtil = nothing
    this.timeStampUtil = AllBinary.getInstance(TimeStampUtil)
    this.commonSeps = AllBinary.getInstance(CommonSeps)
    this.NONE = "None"
    this.LOG_ERROR = "\nLog-Error: "
    this.EMPTY = "Empty"
    this.STACK_TRACE = "\nStack Trace: "
    this.TIME = "Time: "
    this.CLASS_NAME = this.commonSeps.SPACE
    this.FUNCTION_CALL = AllBinary.getInstance(CommonLabels).COLON_SEP
    this.SPECIAL_MESSAGE = "> "
    this.stringUtil = AllBinary.getInstance(StringUtil)
    this.exceptionUtil = AllBinary.getInstance(ExceptionUtil)
    this.nullUtil = AllBinary.getInstance(NullUtil)
    nothing
end


function getInstance(::Type{LogFormatUtil})
        return staticGet_instance(LogFormatUtil)
end


function initLogFormatUtil(this::LogFormatUtil)
        initFieldsLogFormatUtil(this)
        nothing
        nothing
end

function newLogFormatUtil()
    this = LogFormatUtil()
    initLogFormatUtil(this)
    this
end


function get(this::LogFormatUtil, className, functionName, specialMessage, exception)
        local stringBuffer = AllBinary.getF(this, className, functionName)
        AllBinary.append(stringBuffer, AllBinary.getO(this, exception))
        AllBinary.append(stringBuffer, this.SPECIAL_MESSAGE)
        AllBinary.append(stringBuffer, specialMessage)
        AllBinary.append(stringBuffer, this.commonSeps.NEW_LINE)
        return AllBinary.toString(stringBuffer)
end


function getS(this::LogFormatUtil, className, functionName, specialMessage)
        local stringBuffer = AllBinary.getF(this, className, functionName)
        AllBinary.append(stringBuffer, this.SPECIAL_MESSAGE)
        AllBinary.append(stringBuffer, specialMessage)
        AllBinary.append(stringBuffer, this.commonSeps.NEW_LINE)
        return AllBinary.toString(stringBuffer)
end


function getF(this::LogFormatUtil, className, functionName)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, this.TIME)
        AllBinary.append(stringBuffer, AllBinary.getAsString(this.timeStampUtil))
        AllBinary.append(stringBuffer, this.CLASS_NAME)
        AllBinary.append(stringBuffer, className)
        AllBinary.append(stringBuffer, this.FUNCTION_CALL)
        AllBinary.append(stringBuffer, functionName)
        return stringBuffer
end


function getO(this::LogFormatUtil, exception)
        if exception !== this.nullUtil.NULL_OBJECT
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, this.LOG_ERROR)
            local exceptionAsString = AllBinary.toString(exception)
            AllBinary.append(stringBuffer, exceptionAsString)
            AllBinary.append(stringBuffer, this.STACK_TRACE)
            if exception !== this.nullUtil.NULL_OBJECT
                AllBinary.append(stringBuffer, AllBinary.getStackTrace(this.exceptionUtil, (exception)))
            else
                AllBinary.append(stringBuffer, this.stringUtil.NULL_STRING)
            end
            return AllBinary.toString(stringBuffer)
        else
            return AllBinary.getInstance(StringUtil).EMPTY_STRING
        end
end

