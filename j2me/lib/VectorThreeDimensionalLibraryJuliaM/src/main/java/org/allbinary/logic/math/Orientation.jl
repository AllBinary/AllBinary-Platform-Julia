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
# package org.allbinary.logic.math

mutable struct Orientation <: JObject
    yaw::Any
    pitch::Any
    roll::Any
    Orientation() = new()
end

const Orientation_NONEValue = Ref{Any}(nothing)
const Orientation_NONESet = Ref(false)
function staticGet_NONE(::Type{Orientation})
    if !Orientation_NONESet[]
        Orientation_NONESet[] = true
        Orientation_NONEValue[] = newOrientation(Int32(0), Int32(0), Int32(0))
    end
    Orientation_NONEValue[]
end
function staticSet_NONE(::Type{Orientation}, value)
    Orientation_NONESet[] = true
    Orientation_NONEValue[] = value
end
const Orientation_SINGLETONValue = Ref{Any}(nothing)
const Orientation_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{Orientation})
    if !Orientation_SINGLETONSet[]
        Orientation_SINGLETONSet[] = true
        Orientation_SINGLETONValue[] = newOrientation(Int32(0), Int32(0), Int32(0))
    end
    Orientation_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{Orientation}, value)
    Orientation_SINGLETONSet[] = true
    Orientation_SINGLETONValue[] = value
end

function initFieldsOrientation(this::Orientation)
    this.yaw = nothing
    this.pitch = nothing
    this.roll = nothing
    this.yaw = newBasicDecimal(Int32(0))
    this.pitch = newBasicDecimal(Int32(0))
    this.roll = newBasicDecimal(Int32(0))
    nothing
end


function getInstance(::Type{Orientation}, yaw, pitch, roll)
        AllBinary.setint(staticGet_SINGLETON(Orientation).yaw, yaw)
        AllBinary.setint(staticGet_SINGLETON(Orientation).pitch, pitch)
        AllBinary.setint(staticGet_SINGLETON(Orientation).roll, roll)
        return staticGet_SINGLETON(Orientation)
end


function initOrientation(this::Orientation, yaw, pitch, roll)
        initFieldsOrientation(this)
        AllBinary.setint(this.yaw, yaw)
        AllBinary.setint(this.pitch, pitch)
        AllBinary.setint(this.roll, roll)
        nothing
end

function newOrientation(yaw, pitch, roll)
    this = Orientation()
    initOrientation(this, yaw, pitch, roll)
    this
end


function toString(this::Orientation)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Y: ")
        AllBinary.append(stringBuffer, AllBinary.toString(this.yaw))
        AllBinary.append(stringBuffer, " P: ")
        AllBinary.append(stringBuffer, AllBinary.toString(this.pitch))
        AllBinary.append(stringBuffer, " R: ")
        AllBinary.append(stringBuffer, AllBinary.toString(this.roll))
        return AllBinary.toString(stringBuffer)
end

