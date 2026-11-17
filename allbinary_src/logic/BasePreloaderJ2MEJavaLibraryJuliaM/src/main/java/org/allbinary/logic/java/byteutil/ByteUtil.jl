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
# package org.allbinary.logic.java.byteutil

mutable struct ByteUtil <: JObject
    ByteUtil() = new()
end

const ByteUtil_instanceValue = Ref{Any}(nothing)
const ByteUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ByteUtil})
    if !ByteUtil_instanceSet[]
        ByteUtil_instanceSet[] = true
        ByteUtil_instanceValue[] = newByteUtil()
    end
    ByteUtil_instanceValue[]
end
function staticSet_instance(::Type{ByteUtil}, value)
    ByteUtil_instanceSet[] = true
    ByteUtil_instanceValue[] = value
end

function initFieldsByteUtil(this::ByteUtil)
    nothing
end


function getInstance(::Type{ByteUtil})
        return staticGet_instance(ByteUtil)
end


function initByteUtil(this::ByteUtil)
        initFieldsByteUtil(this)
        nothing
        nothing
end

function newByteUtil()
    this = ByteUtil()
    initByteUtil(this)
    this
end


function xor(this::ByteUtil, array, mask)
        local bytes = jNewArray(Int8, Int32(Base.length(array)), Int8(0))
        local size::Int32 = Int32(Base.length(array))
        local index::Int32 = Int32(0)
        local currentByte::Int8 = Int8(0)
        while index < size
            currentByte = array[index + 1]
            bytes[index + 1] = (((currentByte ⊻ mask)) % Int8)
            index += Int32(1)
        end
        return bytes
end


function not(this::ByteUtil, array)
        local bytes = jNewArray(Int8, Int32(Base.length(array)), Int8(0))
        local size::Int32 = Int32(Base.length(array))
        local index::Int32 = Int32(0)
        while index < size
            bytes[index + 1] = ((~array[index + 1]) % Int8)
            index += Int32(1)
        end
        return bytes
end


function xorByte(this::ByteUtil, array, index)
        local mask::Int8 = Int32(0)
        if index == Int32(0)
            mask = Int32(1)
        end
        if index == Int32(1)
            mask = Int32(2)
        end
        if index == Int32(2)
            mask = Int32(4)
        end
        if index == Int32(3)
            mask = Int32(8)
        end
        if index == Int32(4)
            mask = Int32(16)
        end
        if index == Int32(5)
            mask = Int32(32)
        end
        if index == Int32(6)
            mask = Int32(64)
        end
        if index == Int32(7)
            mask = ((-Int32(127)) % Int8)
        end
        return AllBinary.xor(this, array, mask)
end


function compare(this::ByteUtil, newByteArray, oldByteArray)
        if Int32(Base.length(newByteArray)) != Int32(Base.length(oldByteArray))
            return false
        else
            nothing
        end
        local size::Int32 = Int32(Base.length(newByteArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            if newByteArray[index + 1] != oldByteArray[index + 1]
                return false
            end
            finally
                index += Int32(1)
            end
            end
        end
        return true
end


function compareWithStats(this::ByteUtil, newByteArray, newSize, oldByteArray, stats)
        if newSize != Int32(Base.length(oldByteArray))
            stats[Int32(0) + 1] = -Int32(1)
            stats[Int32(2) + 1] = newSize
            stats[Int32(3) + 1] = Int32(Base.length(oldByteArray))
            return false
        else
            stats[Int32(0) + 1] = newSize
        end
        stats[Int32(1) + 1] = Int32(0)
        local size::Int32 = newSize
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            if newByteArray[index + 1] != oldByteArray[index + 1]
                return false
            end
            stats[Int32(1) + 1] += Int32(1)
            finally
                index += Int32(1)
            end
            end
        end
        return true
end

