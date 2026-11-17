# Generated Code Do Not Modify
# package org.allbinary.util

mutable struct ArrayUtil <: JObject
    mathUtil::Any
    ArrayUtil() = new()
end

const ArrayUtil_instanceValue = Ref{Any}(nothing)
const ArrayUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{ArrayUtil})
    if !ArrayUtil_instanceSet[]
        ArrayUtil_instanceSet[] = true
        ArrayUtil_instanceValue[] = newArrayUtil()
    end
    ArrayUtil_instanceValue[]
end
function staticSet_instance(::Type{ArrayUtil}, value)
    ArrayUtil_instanceSet[] = true
    ArrayUtil_instanceValue[] = value
end

function initFieldsArrayUtil(this::ArrayUtil)
    this.mathUtil = nothing
    this.mathUtil = AllBinary.getInstance(MathUtil)
    nothing
end

function initArrayUtil(this::ArrayUtil)
    initFieldsArrayUtil(this)
end

function newArrayUtil()
    this = ArrayUtil()
    initArrayUtil(this)
    this
end


function getInstance(::Type{ArrayUtil})
        return staticGet_instance(ArrayUtil)
end


function copyOf(this::ArrayUtil, original, newLength)
        return AllBinary.copyOfType(this, original, newLength, jClassName(original))
end


function copyOfType(this::ArrayUtil, original, newLength, newType)
        local copy = jNewArray(Any, newLength, nothing)
        jArraycopy(original, Int32(0), copy, Int32(0), AllBinary.min(this.mathUtil, Int32(Base.length(original)), newLength))
        return copy
end


function copyOfbyte(this::ArrayUtil, original, newLength)
        local copy = jNewArray(Int8, newLength, Int8(0))
        jArraycopy(original, Int32(0), copy, Int32(0), AllBinary.min(this.mathUtil, Int32(Base.length(original)), newLength))
        return copy
end


function copyOfshort(this::ArrayUtil, original, newLength)
        local copy = jNewArray(Int16, newLength, Int16(0))
        jArraycopy(original, Int32(0), copy, Int32(0), AllBinary.min(this.mathUtil, Int32(Base.length(original)), newLength))
        return copy
end


function copyOfint(this::ArrayUtil, original, newLength)
        local copy = jNewArray(Int32, newLength, Int32(0))
        jArraycopy(original, Int32(0), copy, Int32(0), AllBinary.min(this.mathUtil, Int32(Base.length(original)), newLength))
        return copy
end


function copyOflong(this::ArrayUtil, original, newLength)
        local copy = jNewArray(Int64, newLength, Int64(0))
        jArraycopy(original, Int32(0), copy, Int32(0), AllBinary.min(this.mathUtil, Int32(Base.length(original)), newLength))
        return copy
end


function copyOfchar(this::ArrayUtil, original, newLength)
        local copy = jNewArray(UInt16, newLength, UInt16(0))
        jArraycopy(original, Int32(0), copy, Int32(0), AllBinary.min(this.mathUtil, Int32(Base.length(original)), newLength))
        return copy
end


function copyOffloat(this::ArrayUtil, original, newLength)
        local copy = jNewArray(Float32, newLength, 0.0f0)
        jArraycopy(original, Int32(0), copy, Int32(0), AllBinary.min(this.mathUtil, Int32(Base.length(original)), newLength))
        return copy
end


function copyOfdouble(this::ArrayUtil, original, newLength)
        local copy = jNewArray(Float64, newLength, 0.0)
        jArraycopy(original, Int32(0), copy, Int32(0), AllBinary.min(this.mathUtil, Int32(Base.length(original)), newLength))
        return copy
end


function copyOfboolean(this::ArrayUtil, original, newLength)
        local copy = jNewArray(Bool, newLength, false)
        jArraycopy(original, Int32(0), copy, Int32(0), AllBinary.min(this.mathUtil, Int32(Base.length(original)), newLength))
        return copy
end


function reverse(this::ArrayUtil, intArray)
        local length::Int32 = Int32(Base.length(intArray)) - Int32(1)
        local temp::Int32 = Int32(0)
        local size::Int32 = length ÷ Int32(2)
        let
            local index::Int32 = Int32(0)
            while index <= size
            try
            temp = intArray[index + 1]
            intArray[index + 1] = intArray[length - index + 1]
            intArray[length - index + 1] = temp
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function flip(this::ArrayUtil, intArray, width, height)
        local length::Int32 = height - Int32(1)
        local temp::Int32 = Int32(0)
        local index::Int32 = Int32(0)
        local rowIndex::Int32 = Int32(0)
        let
            local y::Int32 = Int32(0)
            while y <= length ÷ Int32(2)
            try
            let
                local x::Int32 = Int32(0)
                while x < width
                try
                rowIndex = ((length - y) * width)
                index = x + (y * width)
                temp = intArray[index + 1]
                intArray[index + 1] = intArray[rowIndex + x + 1]
                intArray[rowIndex + x + 1] = temp
                finally
                    x += Int32(1)
                end
                end
            end
            finally
                y += Int32(1)
            end
            end
        end
        nothing
end


function toStringFromTwoDimensionaArray(this::ArrayUtil, twoDimensionalIntArray)
        local stringBuffer = newStringMaker()
        local commonSeps = AllBinary.getInstance(CommonSeps)
        local endIndex::Int32 = Int32(Base.length(twoDimensionalIntArray))
        local endIndex2::Int32 = Int32(Base.length(twoDimensionalIntArray[Int32(0) + 1]))
        let
            local index::Int32 = Int32(0)
            while index < endIndex
            try
            AllBinary.append(stringBuffer, commonSeps.BRACE_OPEN)
            let
                local index2::Int32 = Int32(0)
                while index2 < endIndex2
                try
                AllBinary.appendint(stringBuffer, ((twoDimensionalIntArray[index + 1][index2 + 1]) % Int32))
                AllBinary.append(stringBuffer, commonSeps.COMMA_SEP)
                finally
                    index2 += Int32(1)
                end
                end
            end
            AllBinary.append(stringBuffer, commonSeps.BRACE_CLOSE)
            AllBinary.append(stringBuffer, commonSeps.NEW_LINE)
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end


function toStringFromObjectArray(this::ArrayUtil, objectArray)
        local stringBuffer = newStringMaker()
        local commonSeps = AllBinary.getInstance(CommonSeps)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(objectArray))
            try
            AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), objectArray[index + 1]))
            AllBinary.append(stringBuffer, commonSeps.COMMA_SEP)
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end


function toStringFromByteArray(this::ArrayUtil, byteArray)
        local stringBuffer = newStringMaker()
        local commonSeps = AllBinary.getInstance(CommonSeps)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(byteArray))
            try
            AllBinary.appendbyte(stringBuffer, byteArray[index + 1])
            AllBinary.append(stringBuffer, commonSeps.COMMA_SEP)
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuffer)
end

