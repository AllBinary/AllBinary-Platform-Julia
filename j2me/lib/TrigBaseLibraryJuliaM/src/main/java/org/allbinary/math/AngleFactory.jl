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

mutable struct AngleFactory <: JObject
    logUtil::Any
    TOTAL_ANGLE::Int16
    QUARTER_TOTAL_ANGLE::Int16
    angleArray::Any
    NEGATIVE_ONE::Int16
    NOT_ANGLE::Any
    DOWN::Any
    UP::Any
    LEFT::Any
    RIGHT::Any
    frameUtil::Any
    AngleFactory() = new()
end

const AngleFactory_instanceValue = Ref{Any}(nothing)
const AngleFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{AngleFactory})
    if !AngleFactory_instanceSet[]
        AngleFactory_instanceSet[] = true
        AngleFactory_instanceValue[] = newAngleFactory()
    end
    AngleFactory_instanceValue[]
end
function staticSet_instance(::Type{AngleFactory}, value)
    AngleFactory_instanceSet[] = true
    AngleFactory_instanceValue[] = value
end

function initFieldsAngleFactory(this::AngleFactory)
    this.logUtil = nothing
    this.TOTAL_ANGLE = Int16(0)
    this.QUARTER_TOTAL_ANGLE = Int16(0)
    this.angleArray = nothing
    this.NEGATIVE_ONE = Int16(0)
    this.NOT_ANGLE = nothing
    this.DOWN = nothing
    this.UP = nothing
    this.LEFT = nothing
    this.RIGHT = nothing
    this.frameUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.TOTAL_ANGLE = Int32(360)
    this.QUARTER_TOTAL_ANGLE = Int32(90)
    this.angleArray = jNewArray(Any, ((this.TOTAL_ANGLE) % Int32), nothing)
    this.NEGATIVE_ONE = ((-Int32(1)) % Int16)
    this.NOT_ANGLE = newNamedAngle(this.NEGATIVE_ONE, AllBinary.getInstance(CommonStrings).EMPTY)
    
    
    
    
    this.frameUtil = AllBinary.getInstance(FrameUtil)
    nothing
end


function getInstance(::Type{AngleFactory})
        return staticGet_instance(AngleFactory)
end


function initAngleFactory(this::AngleFactory)
        initFieldsAngleFactory(this)
        local commonPhoneStrings = AllBinary.getInstance(CommonPhoneStrings)
        local total::Int16 = ((Int32(Base.length(this.angleArray))) % Int16)
        this.UP = newNamedAngle(((Int32(0)) % Int16), commonPhoneStrings.UP)
        this.angleArray[Int32(0) + 1] = this.UP
        let
            local index::Int32 = Int32(1)
            while index < Int32(90)
            try
            this.angleArray[index + 1] = newAngle(((index) % Int16))
            finally
                index += Int32(1)
            end
            end
        end
        this.RIGHT = newNamedAngle(((Int32(90)) % Int16), commonPhoneStrings.RIGHT)
        this.angleArray[Int32(90) + 1] = this.RIGHT
        let
            index = Int32(91)
            while index < Int32(180)
            try
            this.angleArray[index + 1] = newAngle(((index) % Int16))
            finally
                index += Int32(1)
            end
            end
        end
        this.DOWN = newNamedAngle(((Int32(180)) % Int16), commonPhoneStrings.DOWN)
        this.angleArray[Int32(180) + 1] = this.DOWN
        let
            index = Int32(181)
            while index < Int32(270)
            try
            this.angleArray[index + 1] = newAngle(((index) % Int16))
            finally
                index += Int32(1)
            end
            end
        end
        this.LEFT = newNamedAngle(((Int32(270)) % Int16), commonPhoneStrings.LEFT)
        this.angleArray[Int32(270) + 1] = this.LEFT
        let
            index = Int32(271)
            while index < ((total) % Int32)
            try
            this.angleArray[index + 1] = newAngle(((index) % Int16))
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

function newAngleFactory()
    this = AngleFactory()
    initAngleFactory(this)
    this
end


function getAt(this::AngleFactory, index)
        local adjustedIndex::Int32 = ((AllBinary.adjustAngleToFrameAngle(this.frameUtil, index)) % Int32)
        return this.angleArray[adjustedIndex + 1]
end


function getClosestDirection(this::AngleFactory, angle)
        if (angle >= Int32(315) && angle < Int32(360)) || (angle >= Int32(0) && angle < Int32(45))
            return this.UP
        elseif angle >= Int32(45) && angle < Int32(135)
            return this.RIGHT
        elseif angle >= Int32(135) && angle < Int32(225)
            return this.DOWN
        elseif angle >= Int32(225) && angle < Int32(315)
            return this.LEFT
        end
        throw(jNewException("RuntimeException", ""))
end


function getGeneralDirection(this::AngleFactory)
        return this.NOT_ANGLE
end


function main(::Type{AngleFactory}, args)
        local stringMaker = newStringMaker()
        local angleFactory = AllBinary.getInstance(AngleFactory)
        let
            local index::Int32 = Int32(0)
            while index < Int32(360)
            try
            AllBinary.append(AllBinary.appendshort(AllBinary.append(AllBinary.appendint(stringMaker, index), AllBinary.getInstance(CommonSeps).FORWARD_SLASH), ((AllBinary.getValue(AllBinary.getClosestDirection(angleFactory, index))) % Int16)), AllBinary.getInstance(CommonSeps).NEW_LINE)
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.putF(AllBinary.getInstance(LogUtil), AllBinary.toString(stringMaker), "main", "main")
        nothing
end

