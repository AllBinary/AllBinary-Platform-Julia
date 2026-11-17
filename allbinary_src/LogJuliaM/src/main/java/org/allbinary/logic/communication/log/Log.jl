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

mutable struct Log <: JObject
    logFormatUtil::Any
    specialMessage::Any
    anyType::Any
    functionName::Any
    exception::Any
    Log() = new()
end


function initFieldsLog(this::Log)
    this.logFormatUtil = nothing
    this.specialMessage = nothing
    this.anyType = nothing
    this.functionName = nothing
    this.exception = nothing
    this.logFormatUtil = AllBinary.getInstance(LogFormatUtil)
    
    
    
    
    nothing
end


function initLog(this::Log, specialMessage, anyType, functionName, exception)
        initFieldsLog(this)
        this.specialMessage = specialMessage
        this.anyType = anyType
        this.functionName = functionName
        this.exception = exception
        nothing
end

function newLog(specialMessage, anyType, functionName, exception)
    this = Log()
    initLog(this, specialMessage, anyType, functionName, exception)
    this
end


function getSpecialMessage(this::Log)
        return this.specialMessage
end


function getObject(this::Log)
        return this.anyType
end


function getFunctionName(this::Log)
        return this.functionName
end


function getThrowable(this::Log)
        return this.exception
end


function toString(this::Log)
        local className = AllBinary.getInstance(CommonStrings).EMPTY
        local clazz = jClassName(this.anyType)
        if AllBinary.getName(clazz) != nothing
            className = AllBinary.getName(clazz)
        end
        return AllBinary.get(this.logFormatUtil, className, this.functionName, this.specialMessage, this.exception)
end

