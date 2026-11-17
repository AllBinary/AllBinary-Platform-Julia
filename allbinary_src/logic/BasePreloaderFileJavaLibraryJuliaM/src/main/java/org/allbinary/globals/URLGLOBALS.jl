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

mutable struct URLGLOBALS <: JObject
    URLGLOBALS() = new()
end

const URLGLOBALS_urlGlobalsInterfaceValue = Ref{Any}(nothing)
const URLGLOBALS_urlGlobalsInterfaceSet = Ref(false)
function staticGet_urlGlobalsInterface(::Type{URLGLOBALS})
    if !URLGLOBALS_urlGlobalsInterfaceSet[]
        URLGLOBALS_urlGlobalsInterfaceSet[] = true
        URLGLOBALS_urlGlobalsInterfaceValue[] = staticGet_NULL_APP_URL_GLOBALS(AppUrlGlobals)
    end
    URLGLOBALS_urlGlobalsInterfaceValue[]
end
function staticSet_urlGlobalsInterface(::Type{URLGLOBALS}, value)
    URLGLOBALS_urlGlobalsInterfaceSet[] = true
    URLGLOBALS_urlGlobalsInterfaceValue[] = value
end

function initFieldsURLGLOBALS(this::URLGLOBALS)
    nothing
end

function initURLGLOBALS(this::URLGLOBALS)
    initFieldsURLGLOBALS(this)
end

function newURLGLOBALS()
    this = URLGLOBALS()
    initURLGLOBALS(this)
    this
end


function init(::Type{URLGLOBALS}, urlGlobalsInterface)
        staticSet_urlGlobalsInterface(URLGLOBALS, urlGlobalsInterface)
        nothing
end


function isTestingMode(::Type{URLGLOBALS})
        return AllBinary.isTestingMode(staticGet_urlGlobalsInterface(URLGLOBALS))
end


function getWebappPath(::Type{URLGLOBALS})
        return AllBinary.getWebappPath(staticGet_urlGlobalsInterface(URLGLOBALS))
end


function getTestHtmlPath(::Type{URLGLOBALS})
        return AllBinary.getTestHtmlPath(staticGet_urlGlobalsInterface(URLGLOBALS))
end


function getMainPath(::Type{URLGLOBALS})
        return AllBinary.getMainPath(staticGet_urlGlobalsInterface(URLGLOBALS))
end

