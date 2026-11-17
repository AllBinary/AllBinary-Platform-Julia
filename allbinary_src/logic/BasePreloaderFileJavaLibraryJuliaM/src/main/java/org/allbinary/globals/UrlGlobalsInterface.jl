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

mutable struct UrlGlobalsInterface <: JObject
    UrlGlobalsInterface() = new()
end


function initFieldsUrlGlobalsInterface(this::UrlGlobalsInterface)
    nothing
end

function initUrlGlobalsInterface(this::UrlGlobalsInterface)
    initFieldsUrlGlobalsInterface(this)
end

function newUrlGlobalsInterface()
    this = UrlGlobalsInterface()
    initUrlGlobalsInterface(this)
    this
end


function getMainPath(this::UrlGlobalsInterface)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function getTestHtmlPath(this::UrlGlobalsInterface)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function getWebappPath(this::UrlGlobalsInterface)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function isTestingMode(this::UrlGlobalsInterface)
        return false
end

