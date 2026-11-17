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

mutable struct PrimitiveLongSingleton <: JObject
    UNK::Any
    NUMBER_ARRAY::Any
    NUMBER_CHAR_ARRAY::Any
    NUMBER_CHAR_ARRAYS::Any
    ZERO::Any
    PrimitiveLongSingleton() = new()
end

const PrimitiveLongSingleton_instanceValue = Ref{Any}(nothing)
const PrimitiveLongSingleton_instanceSet = Ref(false)
function staticGet_instance(::Type{PrimitiveLongSingleton})
    if !PrimitiveLongSingleton_instanceSet[]
        PrimitiveLongSingleton_instanceSet[] = true
        PrimitiveLongSingleton_instanceValue[] = newPrimitiveLongSingleton()
    end
    PrimitiveLongSingleton_instanceValue[]
end
function staticSet_instance(::Type{PrimitiveLongSingleton}, value)
    PrimitiveLongSingleton_instanceSet[] = true
    PrimitiveLongSingleton_instanceValue[] = value
end

function initFieldsPrimitiveLongSingleton(this::PrimitiveLongSingleton)
    this.UNK = nothing
    this.NUMBER_ARRAY = nothing
    this.NUMBER_CHAR_ARRAY = nothing
    this.NUMBER_CHAR_ARRAYS = nothing
    this.ZERO = nothing
    this.UNK = UInt16[UInt16('U'), UInt16('n'), UInt16('k')]
    this.NUMBER_ARRAY = Int8[Int32(0), Int32(1), Int32(2), Int32(3), Int32(4), Int32(5), Int32(6), Int32(7), Int32(8), Int32(9)]
    this.NUMBER_CHAR_ARRAY = UInt16[UInt16('0'), UInt16('1'), UInt16('2'), UInt16('3'), UInt16('4'), UInt16('5'), UInt16('6'), UInt16('7'), UInt16('8'), UInt16('9')]
    this.NUMBER_CHAR_ARRAYS = Vector{UInt16}[UInt16[UInt16('0')], UInt16[UInt16('1')], UInt16[UInt16('2')], UInt16[UInt16('3')], UInt16[UInt16('4')], UInt16[UInt16('5')], UInt16[UInt16('6')], UInt16[UInt16('7')], UInt16[UInt16('8')], UInt16[UInt16('9')]]
    this.ZERO = UInt16[this.NUMBER_CHAR_ARRAY[Int32(0) + 1]]
    nothing
end

function initPrimitiveLongSingleton(this::PrimitiveLongSingleton)
    initFieldsPrimitiveLongSingleton(this)
end

function newPrimitiveLongSingleton()
    this = PrimitiveLongSingleton()
    initPrimitiveLongSingleton(this)
    this
end


function getInstance(::Type{PrimitiveLongSingleton})
        return staticGet_instance(PrimitiveLongSingleton)
end


function getNumberFromChar(this::PrimitiveLongSingleton, numberAsChar)
        local size::Int32 = Int32(Base.length(this.NUMBER_CHAR_ARRAY))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            if this.NUMBER_CHAR_ARRAY[index + 1] == numberAsChar
                return this.NUMBER_ARRAY[index + 1]
            end
            finally
                index += Int32(1)
            end
            end
        end
        throw(jNewException("Exception", AllBinary.toString(AllBinary.appendchar(AllBinary.append(newStringMaker(), "numberAsChar was not in array: "), numberAsChar))))
end

