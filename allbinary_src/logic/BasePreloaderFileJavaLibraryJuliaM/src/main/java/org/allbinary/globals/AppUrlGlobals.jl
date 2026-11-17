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

#implements
# extends UrlGlobalsInterface: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AppUrlGlobals <: JObject
    path::Any
    AppUrlGlobals() = new()
end

const AppUrlGlobals_NULL_APP_URL_GLOBALSValue = Ref{Any}(nothing)
const AppUrlGlobals_NULL_APP_URL_GLOBALSSet = Ref(false)
function staticGet_NULL_APP_URL_GLOBALS(::Type{AppUrlGlobals})
    if !AppUrlGlobals_NULL_APP_URL_GLOBALSSet[]
        AppUrlGlobals_NULL_APP_URL_GLOBALSSet[] = true
        AppUrlGlobals_NULL_APP_URL_GLOBALSValue[] = newAppUrlGlobals()
    end
    AppUrlGlobals_NULL_APP_URL_GLOBALSValue[]
end
function staticSet_NULL_APP_URL_GLOBALS(::Type{AppUrlGlobals}, value)
    AppUrlGlobals_NULL_APP_URL_GLOBALSSet[] = true
    AppUrlGlobals_NULL_APP_URL_GLOBALSValue[] = value
end

function initFieldsAppUrlGlobals(this::AppUrlGlobals)
    this.path = nothing
    this.path = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end

function initAppUrlGlobals(this::AppUrlGlobals)
    initUrlGlobalsInterface(this)
    initFieldsAppUrlGlobals(this)
end

function newAppUrlGlobals()
    this = AppUrlGlobals()
    initAppUrlGlobals(this)
    this
end


function isTestingMode(this::AppUrlGlobals)
        return false
end


function getWebappPath(this::AppUrlGlobals)
        return this.path
end


function setWebappPath(this::AppUrlGlobals, path)
        this.path = path
        if !(jEndsWith(this.path, "\\") || jEndsWith(this.path, "/"))
            this.path = jstr(this.path) * jstr("\\")
        end
        nothing
end


function getTestHtmlPath(this::AppUrlGlobals)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function getMainPath(this::AppUrlGlobals)
        return this.path
end

