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

mutable struct FrameUtil <: JObject
    FrameUtil() = new()
end

const FrameUtil_instanceValue = Ref{Any}(nothing)
const FrameUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{FrameUtil})
    if !FrameUtil_instanceSet[]
        FrameUtil_instanceSet[] = true
        FrameUtil_instanceValue[] = newFrameUtil()
    end
    FrameUtil_instanceValue[]
end
function staticSet_instance(::Type{FrameUtil}, value)
    FrameUtil_instanceSet[] = true
    FrameUtil_instanceValue[] = value
end

function initFieldsFrameUtil(this::FrameUtil)
    nothing
end


function getInstance(::Type{FrameUtil})
        return staticGet_instance(FrameUtil)
end


function initFrameUtil(this::FrameUtil)
        initFieldsFrameUtil(this)
        nothing
        nothing
end

function newFrameUtil()
    this = FrameUtil()
    initFrameUtil(this)
    this
end


function getFrameForAngle(this::FrameUtil, angle, angleIncrement)
        return AllBinary.adjustAngleToFrameAngle(this, ((angle) % Int32)) ÷ angleIncrement
end


function getFrameAngle(this::FrameUtil, frame, angleIncrement)
        local frameAngle::Int32 = angleIncrement * frame - Int32(90)
        return AllBinary.adjustAngleToFrameAngle(this, frameAngle)
end


function adjustAngleToFrameAngle(this::FrameUtil, currentAngle)
        local angleFactory = AllBinary.getInstance(AngleFactory)
        if currentAngle > Int32(359)
            currentAngle = (currentAngle - angleFactory.TOTAL_ANGLE)
            while currentAngle > Int32(359)
                currentAngle = (currentAngle - angleFactory.TOTAL_ANGLE)
            end
        end
        if currentAngle < Int32(0)
            currentAngle = (currentAngle + angleFactory.TOTAL_ANGLE)
            while currentAngle < Int32(0)
                currentAngle = (currentAngle + angleFactory.TOTAL_ANGLE)
            end
        end
        return currentAngle
end

