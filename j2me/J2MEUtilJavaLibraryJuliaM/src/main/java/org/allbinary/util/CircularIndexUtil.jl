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
# package org.allbinary.util

mutable struct CircularIndexUtil <: JObject
    index::Int32
    lastIndex::Int32
    size::Int32
    CircularIndexUtil() = new()
end

const CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILValue = Ref{Any}(nothing)
const CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILSet = Ref(false)
function staticGet_NULL_CIRCULAR_INDEX_UTIL(::Type{CircularIndexUtil})
    if !CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILSet[]
        CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILSet[] = true
        CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILValue[] = newCircularIndexUtil(Int32(0), Int32(0))
    end
    CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILValue[]
end
function staticSet_NULL_CIRCULAR_INDEX_UTIL(::Type{CircularIndexUtil}, value)
    CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILSet[] = true
    CircularIndexUtil_NULL_CIRCULAR_INDEX_UTILValue[] = value
end

function initFieldsCircularIndexUtil(this::CircularIndexUtil)
    this.index = Int32(0)
    this.lastIndex = Int32(0)
    this.size = Int32(0)
    this.index = Int32(0)
    this.lastIndex = Int32(0)
    this.size = Int32(0)
    nothing
end


function initCircularIndexUtil(this::CircularIndexUtil, index, size)
        initFieldsCircularIndexUtil(this)
        AllBinary.setSize(this, size)
        AllBinary.setIndex(this, index)
        nothing
end

function newCircularIndexUtil(index, size)
    this = CircularIndexUtil()
    initCircularIndexUtil(this, index, size)
    this
end


function next(this::CircularIndexUtil)
        if this.index >= this.lastIndex
            this.index = Int32(0)
        else
            this.index += Int32(1)
        end
        return this.index
end


function previous(this::CircularIndexUtil)
        if this.index < Int32(1)
            this.index = this.lastIndex
        else
            this.index -= Int32(1)
        end
        return this.index
end


function setIndex(this::CircularIndexUtil, index)
        if index > this.lastIndex
            return
        end
        this.index = index
        nothing
end


function getIndex(this::CircularIndexUtil)
        return this.index
end


function createInstance(::Type{CircularIndexUtil}, max)
        return newCircularIndexUtil(Int32(0), max)
end


function createInstanceAt(::Type{CircularIndexUtil}, index, max)
        return newCircularIndexUtil(index, max)
end


function setSize(this::CircularIndexUtil, size)
        this.size = size
        this.lastIndex = size - Int32(1)
        this.index = Int32(0)
        nothing
end


function getSize(this::CircularIndexUtil)
        return this.size
end


function toString(this::CircularIndexUtil)
        return AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).INDEX_LABEL), this.index), "lastIndex: "), this.lastIndex), "size: "), this.size))
end

