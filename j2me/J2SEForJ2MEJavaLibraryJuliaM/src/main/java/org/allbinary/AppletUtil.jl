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
# package org.allbinary

#import org.allbinary.logic.communication.log.PreLogUtil;
mutable struct AppletUtil <: JObject
    AppletUtil() = new()
end

const AppletUtil_appletValue = Ref{Any}(nothing)
const AppletUtil_appletSet = Ref(false)
function staticGet_applet(::Type{AppletUtil})
    if !AppletUtil_appletSet[]
        AppletUtil_appletSet[] = true
        AppletUtil_appletValue[] = false
    end
    AppletUtil_appletValue[]
end
function staticSet_applet(::Type{AppletUtil}, value)
    AppletUtil_appletSet[] = true
    AppletUtil_appletValue[] = value
end

function initFieldsAppletUtil(this::AppletUtil)
    nothing
end


function initAppletUtil(this::AppletUtil)
        initFieldsAppletUtil(this)
        nothing
        nothing
end

function newAppletUtil()
    this = AppletUtil()
    initAppletUtil(this)
    this
end


function setApplet(::Type{AppletUtil})
        staticSet_applet(AppletUtil, true)
        nothing
end


function isAppletLoader(::Type{AppletUtil}, anyType)
        return staticGet_applet(AppletUtil)
end

