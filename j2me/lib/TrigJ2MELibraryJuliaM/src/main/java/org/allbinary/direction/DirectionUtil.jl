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

mutable struct DirectionUtil <: JObject
    directionArray::Any
    directionArray2::Any
    DirectionUtil() = new()
end

const DirectionUtil_instanceValue = Ref{Any}(nothing)
const DirectionUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{DirectionUtil})
    if !DirectionUtil_instanceSet[]
        DirectionUtil_instanceSet[] = true
        DirectionUtil_instanceValue[] = newDirectionUtil()
    end
    DirectionUtil_instanceValue[]
end
function staticSet_instance(::Type{DirectionUtil}, value)
    DirectionUtil_instanceSet[] = true
    DirectionUtil_instanceValue[] = value
end

function initFieldsDirectionUtil(this::DirectionUtil)
    this.directionArray = nothing
    this.directionArray2 = nothing
    this.directionArray = jNewArray(Any, Int32(10), nothing)
    this.directionArray2 = jNewArray(Any, Int32(10), nothing)
    nothing
end


function getInstance(::Type{DirectionUtil})
        return staticGet_instance(DirectionUtil)
end


function initDirectionUtil(this::DirectionUtil)
        initFieldsDirectionUtil(this)
        local angleFactory = AllBinary.getInstance(AngleFactory)
        local directionFactory = AllBinary.getInstance(DirectionFactory)
        this.directionArray[AllBinary.getValue(directionFactory.LEFT) + 1] = angleFactory.LEFT
        this.directionArray[AllBinary.getValue(directionFactory.RIGHT) + 1] = angleFactory.RIGHT
        this.directionArray[AllBinary.getValue(directionFactory.UP) + 1] = angleFactory.UP
        this.directionArray[AllBinary.getValue(directionFactory.DOWN) + 1] = angleFactory.DOWN
        this.directionArray2[AllBinary.getValue(directionFactory.LEFT) + 1] = angleFactory.LEFT
        this.directionArray2[AllBinary.getValue(directionFactory.RIGHT) + 1] = angleFactory.RIGHT
        this.directionArray2[AllBinary.getValue(directionFactory.UP) + 1] = angleFactory.UP
        this.directionArray2[AllBinary.getValue(directionFactory.DOWN) + 1] = angleFactory.DOWN
        nothing
end

function newDirectionUtil()
    this = DirectionUtil()
    initDirectionUtil(this)
    this
end


function getAngle(this::DirectionUtil, direction)
        return this.directionArray2[AllBinary.getValue(direction) + 1]
end


function getFrameAngle(this::DirectionUtil, direction)
        return this.directionArray[AllBinary.getValue(direction) + 1]
end

