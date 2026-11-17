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

mutable struct PrimitiveLongUtil <: JObject
    logUtil::Any
    powerOfTen::Int32
    maxValue::Int32
    maxDigits::Int32
    charArray::Any
    currentTotalDigits::Int32
    primitiveLongSingleton::Any
    PrimitiveLongUtil() = new()
end


function initFieldsPrimitiveLongUtil(this::PrimitiveLongUtil)
    this.logUtil = nothing
    this.powerOfTen = Int32(0)
    this.maxValue = Int32(0)
    this.maxDigits = Int32(0)
    this.charArray = nothing
    this.currentTotalDigits = Int32(0)
    this.primitiveLongSingleton = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    
    
    
    this.currentTotalDigits = Int32(0)
    this.primitiveLongSingleton = AllBinary.getInstance(PrimitiveLongSingleton)
    nothing
end


function createPowerOfTen(::Type{PrimitiveLongUtil}, powerOfTen)
        local primitiveLongUtil = newPrimitiveLongUtil(powerOfTen, AllBinary.getInstance(NullUtil).NULL_OBJECT)
        if powerOfTen % Int32(10) != Int32(0)
            local logUtil = AllBinary.getInstance(LogUtil)
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(logUtil, commonStrings.EXCEPTION, primitiveLongUtil, commonStrings.CONSTRUCTOR, jNewException("Exception", "Max must be power of 10"))
        end
        return primitiveLongUtil
end


function initPrimitiveLongUtil(this::PrimitiveLongUtil, powerOfTen, unused)
        initFieldsPrimitiveLongUtil(this)
        this.maxDigits = AllBinary.getTotalDigits(AllBinary.getInstance(MathUtil), powerOfTen)
        this.powerOfTen = powerOfTen
        this.maxValue = (powerOfTen * Int32(10)) - Int32(1)
        this.charArray = jNewArray(UInt16, this.maxDigits, UInt16(0))
        nothing
end

function newPrimitiveLongUtil(powerOfTen, unused)
    this = PrimitiveLongUtil()
    initPrimitiveLongUtil(this, powerOfTen, unused)
    this
end


function getCharArray(this::PrimitiveLongUtil, value)
        if value < Int32(10)
            AllBinary.setCurrentTotalDigits(this, Int32(1))
            return this.primitiveLongSingleton.NUMBER_CHAR_ARRAYS[value + 1]
        end
        if value > this.maxValue
            AllBinary.setCurrentTotalDigits(this, Int32(3))
            return this.primitiveLongSingleton.UNK
        end
        local index::Int32 = Int32(0)
        local div::Int32 = this.powerOfTen
        local lastValue::Int32 = Int32(0)
        while div >= Int32(1)
            local digit::Int32 = (value - lastValue) ÷ div
            if digit >= Int32(0) && digit < Int32(10)
                if digit == Int32(0) && index == Int32(0)
                    nothing
                else
                    this.charArray[(let old = index; index += Int32(1); old end) + 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[digit + 1]
                end
                lastValue += digit * div
            end
            div = div ÷ Int32(10)
        end
        AllBinary.setCurrentTotalDigits(this, index)
        return this.charArray
end


function setCurrentTotalDigits(this::PrimitiveLongUtil, currentTotalDigits)
        this.currentTotalDigits = currentTotalDigits
        nothing
end


function getCurrentTotalDigits(this::PrimitiveLongUtil)
        return this.currentTotalDigits
end


function getMaxDigits(this::PrimitiveLongUtil)
        return this.maxDigits
end

