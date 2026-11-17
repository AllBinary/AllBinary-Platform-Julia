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
# package org.allbinary.logic.string

mutable struct StringValidationUtil <: JObject
    stringUtil::Any
    tsUtil::Any
    StringValidationUtil() = new()
end

const StringValidationUtil_instanceValue = Ref{Any}(nothing)
const StringValidationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{StringValidationUtil})
    if !StringValidationUtil_instanceSet[]
        StringValidationUtil_instanceSet[] = true
        StringValidationUtil_instanceValue[] = newStringValidationUtil()
    end
    StringValidationUtil_instanceValue[]
end
function staticSet_instance(::Type{StringValidationUtil}, value)
    StringValidationUtil_instanceSet[] = true
    StringValidationUtil_instanceValue[] = value
end

function initFieldsStringValidationUtil(this::StringValidationUtil)
    this.stringUtil = nothing
    this.tsUtil = nothing
    this.stringUtil = AllBinary.getInstance(StringUtil)
    this.tsUtil = AllBinary.getInstance(TsUtil)
    nothing
end


function getInstance(::Type{StringValidationUtil})
        return staticGet_instance(StringValidationUtil)
end


function initStringValidationUtil(this::StringValidationUtil)
        initFieldsStringValidationUtil(this)
        nothing
        nothing
end

function newStringValidationUtil()
    this = StringValidationUtil()
    initStringValidationUtil(this)
    this
end


function containsSpaces(this::StringValidationUtil, value)
        if jIndexOf(value, UInt16(' ')) >= Int32(0)
            return true
        end
        return false
end


function isNumber(this::StringValidationUtil, value)
        local numberOfDecimalPoints::Int32 = Int32(0)
        let
            local index::Int32 = Int32(0)
            while index < jLength(value)
            try
            local digit::UInt16 = jCharAt(value, index)
            if !AllBinary.isNumberFromChar(this, digit) && digit != UInt16('.')
                return false
            end
            if digit == UInt16('.')
                numberOfDecimalPoints += Int32(1)
                if numberOfDecimalPoints > Int32(1)
                    return false
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        return true
end


function isNumberFromChar(this::StringValidationUtil, digit)
        if digit != UInt16('0') && digit != UInt16('1') && digit != UInt16('2') && digit != UInt16('3') && digit != UInt16('4') && digit != UInt16('5') && digit != UInt16('6') && digit != UInt16('7') && digit != UInt16('8') && digit != UInt16('9')
            return false
        end
        return true
end


function isValidRequired(this::StringValidationUtil, value, min, max)
        if jLength(value) < min || jLength(value) > max
            return false
        end
        return true
end


function isValidRequiredNumber(this::StringValidationUtil, value, min, max)
        if AllBinary.isEmpty(this, value) || jLength(value) < min || jLength(value) > max
            return false
        end
        if !AllBinary.isNumber(this, value)
            return false
        end
        return true
end


function isValidNotRequired(this::StringValidationUtil, value, min, max)
        if jLength(value) > Int32(0)
            if jLength(value) < min || jLength(value) > max
                return false
            end
        end
        return true
end


function isValidNotRequiredNumber(this::StringValidationUtil, value, min, max)
        if jLength(value) > Int32(0)
            if AllBinary.compareTo(this.tsUtil, value, this.stringUtil.NULL_STRING) == Int32(0) || jLength(value) < min || jLength(value) > max
                return false
            end
            if !AllBinary.isNumber(this, value)
                return false
            end
        end
        return true
end


function isEmpty(this::StringValidationUtil, string)
        if AllBinary.compareTo(this.tsUtil, string, this.stringUtil.NULL_STRING) != Int32(0) && AllBinary.compareTo(this.tsUtil, string, this.stringUtil.EMPTY_STRING) != Int32(0)
            return false
        else
            return true
        end
end

