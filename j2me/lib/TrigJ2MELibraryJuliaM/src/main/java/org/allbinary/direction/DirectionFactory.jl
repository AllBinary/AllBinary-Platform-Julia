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
# package org.allbinary.direction

mutable struct DirectionFactory <: JObject
    NAME::Any
    LEFT::Any
    RIGHT::Any
    DOWN::Any
    UP::Any
    UP_LEFT::Any
    UP_RIGHT::Any
    DOWN_LEFT::Any
    DOWN_RIGHT::Any
    NOT_BORDERED_WITH::Any
    NO_DIRECTION::Any
    TOP::Any
    BOTTOM::Any
    ALL_DIRECTION::Any
    DirectionFactory() = new()
end

const DirectionFactory_instanceValue = Ref{Any}(nothing)
const DirectionFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{DirectionFactory})
    if !DirectionFactory_instanceSet[]
        DirectionFactory_instanceSet[] = true
        DirectionFactory_instanceValue[] = newDirectionFactory()
    end
    DirectionFactory_instanceValue[]
end
function staticSet_instance(::Type{DirectionFactory}, value)
    DirectionFactory_instanceSet[] = true
    DirectionFactory_instanceValue[] = value
end

function initFieldsDirectionFactory(this::DirectionFactory)
    this.NAME = nothing
    this.LEFT = nothing
    this.RIGHT = nothing
    this.DOWN = nothing
    this.UP = nothing
    this.UP_LEFT = nothing
    this.UP_RIGHT = nothing
    this.DOWN_LEFT = nothing
    this.DOWN_RIGHT = nothing
    this.NOT_BORDERED_WITH = nothing
    this.NO_DIRECTION = nothing
    this.TOP = nothing
    this.BOTTOM = nothing
    this.ALL_DIRECTION = nothing
    this.NAME = "DIRECTION"
    this.LEFT = newDirection(AllBinary.getInstance(CommonPhoneStrings).LEFT, "WEST", Int32(0), Int32(1))
    this.RIGHT = newDirection(AllBinary.getInstance(CommonPhoneStrings).RIGHT, "EAST", Int32(1), Int32(0))
    this.DOWN = newDirection(AllBinary.getInstance(CommonPhoneStrings).DOWN, "SOUTH", Int32(2), Int32(0))
    this.UP = newDirection(AllBinary.getInstance(CommonPhoneStrings).UP, "NORTH", Int32(3), Int32(0))
    
    
    
    
    this.NOT_BORDERED_WITH = newDirection("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", Int32(8), Int32(0))
    this.NO_DIRECTION = newDirection("NO_DIRECTION", "NO_DIRECTION", Int32(9), Int32(0))
    this.TOP = newDirection("TOP", "TOP", Int32(10), Int32(0))
    this.BOTTOM = newDirection("BOTTOM", "BOTTOM", Int32(11), Int32(0))
    this.ALL_DIRECTION = newDirection("ALL_DIRECTION", "ALL_DIRECTION", Int32(12), Int32(0))
    nothing
end


function getInstance(::Type{DirectionFactory})
        return staticGet_instance(DirectionFactory)
end


function initDirectionFactory(this::DirectionFactory)
        initFieldsDirectionFactory(this)
        local stringBuffer = newStringMaker()
        local commonSeps = AllBinary.getInstance(CommonSeps)
        this.UP_LEFT = newDirection("UP LEFT", AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringBuffer, AllBinary.getOtherName(this.UP)), commonSeps.SPACE), AllBinary.getOtherName(this.LEFT))), Int32(4), Int32(0))
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        this.UP_RIGHT = newDirection("UP RIGHT", AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringBuffer, AllBinary.getOtherName(this.UP)), commonSeps.SPACE), AllBinary.getOtherName(this.RIGHT))), Int32(5), Int32(0))
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        this.DOWN_LEFT = newDirection("DOWN LEFT", AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringBuffer, AllBinary.getOtherName(this.DOWN)), commonSeps.SPACE), AllBinary.getOtherName(this.LEFT))), Int32(6), Int32(0))
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        this.DOWN_RIGHT = newDirection("DOWN RIGHT", AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringBuffer, AllBinary.getOtherName(this.DOWN)), commonSeps.SPACE), AllBinary.getOtherName(this.RIGHT))), Int32(7), Int32(0))
        nothing
end

function newDirectionFactory()
    this = DirectionFactory()
    initDirectionFactory(this)
    this
end

