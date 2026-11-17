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

mutable struct Globals <: JObject
    logUtil::Any
    Globals() = new()
end

const Globals_instanceValue = Ref{Any}(nothing)
const Globals_instanceSet = Ref(false)
function staticGet_instance(::Type{Globals})
    if !Globals_instanceSet[]
        Globals_instanceSet[] = true
        Globals_instanceValue[] = newGlobals()
    end
    Globals_instanceValue[]
end
function staticSet_instance(::Type{Globals}, value)
    Globals_instanceSet[] = true
    Globals_instanceValue[] = value
end

function initFieldsGlobals(this::Globals)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end


function getInstance(::Type{Globals})
        return staticGet_instance(Globals)
end


function initGlobals(this::Globals)
        initFieldsGlobals(this)
        nothing
        nothing
end

function newGlobals()
    this = Globals()
    initGlobals(this)
    this
end


function init(this::Globals, classLoader, pathString)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        local appUrlGlobals = newAppUrlGlobals()
        AllBinary.setWebappPath(appUrlGlobals, pathString)
        AllBinary.init(staticGet_URLGLOBALS(), appUrlGlobals)
        AllBinary.setLoader(WebappClassLoaderInfo, classLoader)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Setting Up AllBinary System Configuration Args: ")
        AllBinary.append(stringBuffer, pathString)
        AllBinary.append(stringBuffer, " ClassLoader: ")
        AllBinary.append(stringBuffer, jClassName(classLoader))
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, commonStrings.INIT)
        local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
        if AllBinary.isEmpty(stringValidationUtil, pathString)
            AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
            AllBinary.append(stringBuffer, "No Path Provided. Using Process Path: ")
            AllBinary.append(stringBuffer, pathString)
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).EQUALS)
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
            AllBinary.append(stringBuffer, AllBinary.getWebappPath(staticGet_URLGLOBALS()))
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, commonStrings.INIT)
        end
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        AllBinary.append(stringBuffer, "Webapp Path Set To: ")
        AllBinary.append(stringBuffer, AllBinary.getWebappPath(staticGet_URLGLOBALS()))
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, commonStrings.INIT)
        nothing
end

