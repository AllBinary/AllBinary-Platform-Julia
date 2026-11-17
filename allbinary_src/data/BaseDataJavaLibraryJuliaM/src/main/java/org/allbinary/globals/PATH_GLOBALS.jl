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
# package org.allbinary.globals

mutable struct PATH_GLOBALS <: JObject
    DATA_PATH::Any
    INIT_PATH::Any
    VIEWS_PATH::Any
    LOG_PATH::Any
    BACKUP_PATH::Any
    PATH_GLOBALS() = new()
end

const PATH_GLOBALS_instanceValue = Ref{Any}(nothing)
const PATH_GLOBALS_instanceSet = Ref(false)
function staticGet_instance(::Type{PATH_GLOBALS})
    if !PATH_GLOBALS_instanceSet[]
        PATH_GLOBALS_instanceSet[] = true
        PATH_GLOBALS_instanceValue[] = newPATH_GLOBALS()
    end
    PATH_GLOBALS_instanceValue[]
end
function staticSet_instance(::Type{PATH_GLOBALS}, value)
    PATH_GLOBALS_instanceSet[] = true
    PATH_GLOBALS_instanceValue[] = value
end

function initFieldsPATH_GLOBALS(this::PATH_GLOBALS)
    this.DATA_PATH = nothing
    this.INIT_PATH = nothing
    this.VIEWS_PATH = nothing
    this.LOG_PATH = nothing
    this.BACKUP_PATH = nothing
    
    
    
    
    
    nothing
end


function getInstance(::Type{PATH_GLOBALS})
        return staticGet_instance(PATH_GLOBALS)
end


function initPATH_GLOBALS(this::PATH_GLOBALS)
        initFieldsPATH_GLOBALS(this)
        local stringBuffer = newStringMaker()
        local abPathData = AllBinary.getInstance(AbPathData)
        AllBinary.append(stringBuffer, "data")
        AllBinary.append(stringBuffer, abPathData.SEPARATOR)
        this.DATA_PATH = AllBinary.toString(stringBuffer)
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        AllBinary.append(stringBuffer, this.DATA_PATH)
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonStrings).INIT)
        AllBinary.append(stringBuffer, abPathData.SEPARATOR)
        this.INIT_PATH = AllBinary.toString(stringBuffer)
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        AllBinary.append(stringBuffer, this.DATA_PATH)
        AllBinary.append(stringBuffer, "log")
        AllBinary.append(stringBuffer, abPathData.SEPARATOR)
        this.LOG_PATH = AllBinary.toString(stringBuffer)
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        AllBinary.append(stringBuffer, this.DATA_PATH)
        AllBinary.append(stringBuffer, "backup")
        AllBinary.append(stringBuffer, abPathData.SEPARATOR)
        this.BACKUP_PATH = AllBinary.toString(stringBuffer)
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        AllBinary.append(stringBuffer, this.INIT_PATH)
        AllBinary.append(stringBuffer, "views")
        AllBinary.append(stringBuffer, abPathData.SEPARATOR)
        this.VIEWS_PATH = AllBinary.toString(stringBuffer)
        nothing
end

function newPATH_GLOBALS()
    this = PATH_GLOBALS()
    initPATH_GLOBALS(this)
    this
end

