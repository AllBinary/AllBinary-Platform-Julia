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
# package org.allbinary.math

mutable struct AngleInfo <: JObject
    angleIncrementInfo::Any
    angle::Int16
    frameUtil::Any
    AngleInfo() = new()
end

const AngleInfo_ANGLEValue = Ref{Any}(nothing)
const AngleInfo_ANGLESet = Ref(false)
function staticGet_ANGLE(::Type{AngleInfo})
    if !AngleInfo_ANGLESet[]
        AngleInfo_ANGLESet[] = true
        AngleInfo_ANGLEValue[] = "Angle: "
    end
    AngleInfo_ANGLEValue[]
end
function staticSet_ANGLE(::Type{AngleInfo}, value)
    AngleInfo_ANGLESet[] = true
    AngleInfo_ANGLEValue[] = value
end

function initFieldsAngleInfo(this::AngleInfo)
    this.angleIncrementInfo = nothing
    this.angle = Int16(0)
    this.frameUtil = nothing
    
    this.angle = Int32(0)
    this.frameUtil = AllBinary.getInstance(FrameUtil)
    nothing
end


function getInstance(::Type{AngleInfo}, angleIncrement)
        return newAngleInfo(AllBinary.getAt(AllBinary.getInstance(AngleIncrementInfoFactory), angleIncrement))
end


function initAngleInfo(this::AngleInfo, angleIncrementInfo)
        initFieldsAngleInfo(this)
        this.angleIncrementInfo = angleIncrementInfo
        nothing
end

function newAngleInfo(angleIncrementInfo)
    this = AngleInfo()
    initAngleInfo(this, angleIncrementInfo)
    this
end


function adjustAngle(this::AngleInfo, frame)
        local newAngle::Int32 = AllBinary.getAngleIncrement(this.angleIncrementInfo) * frame - Int32(90)
        AllBinary.setAngle(this, ((AllBinary.adjustAngleToFrameAngle(this.frameUtil, newAngle)) % Int16))
        nothing
end


function getAngle(this::AngleInfo)
        return this.angle
end


function setAngle(this::AngleInfo, angle)
        this.angle = angle
        nothing
end


function getAngleIncrementInfo(this::AngleInfo)
        return this.angleIncrementInfo
end


function toString(this::AngleInfo)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, staticGet_ANGLE(AngleInfo))
        AllBinary.appendshort(stringBuffer, this.angle)
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), AllBinary.getAngleIncrementInfo(this)))
        return AllBinary.toString(stringBuffer)
end

