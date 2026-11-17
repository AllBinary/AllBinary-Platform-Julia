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

mutable struct Direction <: JObject
    name::Any
    otherName::Any
    value::Int32
    frameFactor::Int32
    Direction() = new()
end

const Direction_directionArrayValue = Ref{Any}(nothing)
const Direction_directionArraySet = Ref(false)
function staticGet_directionArray(::Type{Direction})
    if !Direction_directionArraySet[]
        Direction_directionArraySet[] = true
        Direction_directionArrayValue[] = jNewArray(Any, Int32(13), nothing)
    end
    Direction_directionArrayValue[]
end
function staticSet_directionArray(::Type{Direction}, value)
    Direction_directionArraySet[] = true
    Direction_directionArrayValue[] = value
end

function initFieldsDirection(this::Direction)
    this.name = nothing
    this.otherName = nothing
    this.value = Int32(0)
    this.frameFactor = Int32(0)
    
    
    
    
    nothing
end


function initDirection(this::Direction, name, otherName, value, frameFactor)
        initFieldsDirection(this)
        this.name = name
        this.otherName = otherName
        this.value = value
        this.frameFactor = frameFactor
        staticGet_directionArray(Direction)[value + 1] = this
        nothing
end

function newDirection(name, otherName, value, frameFactor)
    this = Direction()
    initDirection(this, name, otherName, value, frameFactor)
    this
end


function getInstance(::Type{Direction}, direction)
        return staticGet_directionArray(Direction)[direction + 1]
end


function getValue(this::Direction)
        return this.value
end


function getFrameFactor(this::Direction)
        return this.frameFactor
end


function getOtherName(this::Direction)
        return this.otherName
end


function getName(this::Direction)
        return this.name
end


function toString(this::Direction)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Direction: ")
        AllBinary.append(stringBuffer, AllBinary.getName(this))
        AllBinary.append(stringBuffer, " Or: ")
        AllBinary.append(stringBuffer, AllBinary.getOtherName(this))
        AllBinary.append(stringBuffer, " Value: ")
        AllBinary.appendint(stringBuffer, this.value)
        return AllBinary.toString(stringBuffer)
end

