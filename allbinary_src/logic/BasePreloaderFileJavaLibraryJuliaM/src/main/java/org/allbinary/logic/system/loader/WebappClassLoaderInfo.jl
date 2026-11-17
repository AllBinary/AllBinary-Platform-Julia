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
# package org.allbinary.logic.system.loader

mutable struct WebappClassLoaderInfo <: JObject
    WebappClassLoaderInfo() = new()
end

const WebappClassLoaderInfo_classLoaderValue = Ref{Any}(nothing)
const WebappClassLoaderInfo_classLoaderSet = Ref(false)
function staticGet_classLoader(::Type{WebappClassLoaderInfo})
    if !WebappClassLoaderInfo_classLoaderSet[]
        WebappClassLoaderInfo_classLoaderSet[] = true
        WebappClassLoaderInfo_classLoaderValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    WebappClassLoaderInfo_classLoaderValue[]
end
function staticSet_classLoader(::Type{WebappClassLoaderInfo}, value)
    WebappClassLoaderInfo_classLoaderSet[] = true
    WebappClassLoaderInfo_classLoaderValue[] = value
end

function initFieldsWebappClassLoaderInfo(this::WebappClassLoaderInfo)
    nothing
end


function initWebappClassLoaderInfo(this::WebappClassLoaderInfo)
        initFieldsWebappClassLoaderInfo(this)
        nothing
        nothing
end

function newWebappClassLoaderInfo()
    this = WebappClassLoaderInfo()
    initWebappClassLoaderInfo(this)
    this
end


function setLoader(::Type{WebappClassLoaderInfo}, classLoader)
        staticSet_classLoader(WebappClassLoaderInfo, classLoader)
        nothing
end


function getLoader(::Type{WebappClassLoaderInfo})
        return (staticGet_classLoader(WebappClassLoaderInfo))
end

