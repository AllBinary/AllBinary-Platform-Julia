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
# package org.allbinary.canvas

mutable struct SpecialMessageUtil <: JObject
    SpecialMessageUtil() = new()
end

const SpecialMessageUtil_SINGLETONValue = Ref{Any}(nothing)
const SpecialMessageUtil_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{SpecialMessageUtil})
    if !SpecialMessageUtil_SINGLETONSet[]
        SpecialMessageUtil_SINGLETONSet[] = true
        SpecialMessageUtil_SINGLETONValue[] = newSpecialMessageUtil()
    end
    SpecialMessageUtil_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{SpecialMessageUtil}, value)
    SpecialMessageUtil_SINGLETONSet[] = true
    SpecialMessageUtil_SINGLETONValue[] = value
end

function initFieldsSpecialMessageUtil(this::SpecialMessageUtil)
    nothing
end

function initSpecialMessageUtil(this::SpecialMessageUtil)
    initFieldsSpecialMessageUtil(this)
end

function newSpecialMessageUtil()
    this = SpecialMessageUtil()
    initSpecialMessageUtil(this)
    this
end


function getInstance(::Type{SpecialMessageUtil})
        return staticGet_SINGLETON(SpecialMessageUtil)
end


function get(this::SpecialMessageUtil)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.getInfo(Memory))
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(GameStatisticsFactory)))
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, " Option: ")
        if AllBinary.isDefault(AllBinary.getInstance(Features), AllBinary.getInstance(OpenGLFeatureFactory).OPENGL_AUTO_SELECT)
            AllBinary.append(stringBuffer, AllBinary.getName(AllBinary.getInstance(OpenGLFeatureFactory).OPENGL_AUTO_SELECT))
        else
            AllBinary.append(stringBuffer, AllBinary.getName(AllBinary.getInstance(OpenGLFeatureFactory).OPENGL_MINIMUM))
        end
        return AllBinary.toString(stringBuffer)
end

