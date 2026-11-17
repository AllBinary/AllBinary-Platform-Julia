# Generated Code Do Not Modify
# package org.allbinary.logic.math

mutable struct MathUtil <: JObject
    ACCURACY::Int32
    MathUtil() = new()
end

const MathUtil_instanceValue = Ref{Any}(nothing)
const MathUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{MathUtil})
    if !MathUtil_instanceSet[]
        MathUtil_instanceSet[] = true
        MathUtil_instanceValue[] = newMathUtil()
    end
    MathUtil_instanceValue[]
end
function staticSet_instance(::Type{MathUtil}, value)
    MathUtil_instanceSet[] = true
    MathUtil_instanceValue[] = value
end

function initFieldsMathUtil(this::MathUtil)
    this.ACCURACY = Int32(0)
    this.ACCURACY = Int32(100)
    nothing
end

function initMathUtil(this::MathUtil)
    initFieldsMathUtil(this)
end

function newMathUtil()
    this = MathUtil()
    initMathUtil(this)
    this
end


function getInstance(::Type{MathUtil})
        return staticGet_instance(MathUtil)
end


function getTotalDigits(this::MathUtil, digits)
        local total::Int32 = Int32(0)
        while digits > Int32(0)
            digits = digits ÷ Int32(10)
            total += Int32(1)
        end
        return total
end


function sqrt(this::MathUtil, value)
        if value <= Int32(1)
            return value
        end
        local accumulated::Int32 = value >> Int32(1)
        local result::Int32 = (accumulated + (value ÷ accumulated)) >> Int32(1)
        while true
            accumulated = result
            result = (accumulated + (value ÷ accumulated)) >> Int32(1)
            accumulated > result || break
        end
        return accumulated
end


function sqrtd(this::MathUtil, x)
        if x == Int32(0)
            return Float64(0.0f0)
        end
        if x < Int32(0)
            return Float64(-1.0f0)
        end
        local result::Float64 = Float64(x)
        let
            local index::Int32 = Int32(0)
            while index < this.ACCURACY
            try
            result = (result + (Float64(x) ÷ result)) ÷ 2.0
            finally
                index += Int32(1)
            end
            end
        end
        return result
end


function abs(this::MathUtil, value)
        return ((value < Int32(0)) ? -value : value)
end


function abslong(this::MathUtil, value)
        return ((value < Int64(0)) ? -value : value)
end


function min(this::MathUtil, value, value2)
        return ((value <= value2) ? value : value2)
end


function max(this::MathUtil, value, value2)
        return ((value >= value2) ? value : value2)
end

