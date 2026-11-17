#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.communication.log.config.type

mutable struct LogConfigTypeFactory <: JObject
    NO_DESCRIPTION::Any
    OS::Any
    FACTORYERROR::Any
    FILE::Any
    FILEERROR::Any
    IDLOGGING::Any
    REPLACE::Any
    REPLACE_INFO::Any
    REPLACEERROR::Any
    LogConfigTypeFactory() = new()
end

const LogConfigTypeFactory_instanceValue = Ref{Any}(nothing)
const LogConfigTypeFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{LogConfigTypeFactory})
    if !LogConfigTypeFactory_instanceSet[]
        LogConfigTypeFactory_instanceSet[] = true
        LogConfigTypeFactory_instanceValue[] = newLogConfigTypeFactory()
    end
    LogConfigTypeFactory_instanceValue[]
end
function staticSet_instance(::Type{LogConfigTypeFactory}, value)
    LogConfigTypeFactory_instanceSet[] = true
    LogConfigTypeFactory_instanceValue[] = value
end

function initFieldsLogConfigTypeFactory(this::LogConfigTypeFactory)
    this.NO_DESCRIPTION = nothing
    this.OS = nothing
    this.FACTORYERROR = nothing
    this.FILE = nothing
    this.FILEERROR = nothing
    this.IDLOGGING = nothing
    this.REPLACE = nothing
    this.REPLACE_INFO = nothing
    this.REPLACEERROR = nothing
    this.NO_DESCRIPTION = "No Description"
    this.OS = newLogConfigType("Operating System", this.NO_DESCRIPTION)
    this.FACTORYERROR = newLogConfigType("Factory Error", this.NO_DESCRIPTION)
    this.FILE = newLogConfigType("File", this.NO_DESCRIPTION)
    this.FILEERROR = newLogConfigType("File Error", this.NO_DESCRIPTION)
    this.IDLOGGING = newLogConfigType("ID Logging", this.NO_DESCRIPTION)
    this.REPLACE = newLogConfigType("Replace", this.NO_DESCRIPTION)
    this.REPLACE_INFO = newLogConfigType("Replace Info", this.NO_DESCRIPTION)
    this.REPLACEERROR = newLogConfigType("Replace Error", this.NO_DESCRIPTION)
    nothing
end


function getInstance(::Type{LogConfigTypeFactory})
        return staticGet_instance(LogConfigTypeFactory)
end


function initLogConfigTypeFactory(this::LogConfigTypeFactory)
        initFieldsLogConfigTypeFactory(this)
        AllBinary.add(staticGet_LOGGING(LogConfigTypes), this.OS)
        AllBinary.add(staticGet_LOGGING(LogConfigTypes), this.FACTORYERROR)
        nothing
end

function newLogConfigTypeFactory()
    this = LogConfigTypeFactory()
    initLogConfigTypeFactory(this)
    this
end

