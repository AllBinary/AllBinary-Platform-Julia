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
# package org.allbinary.logic.java.bool

mutable struct BooleanUtil <: JObject
    tsUtil::Any
    BooleanUtil() = new()
end

const BooleanUtil_instanceValue = Ref{Any}(nothing)
const BooleanUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{BooleanUtil})
    if !BooleanUtil_instanceSet[]
        BooleanUtil_instanceSet[] = true
        BooleanUtil_instanceValue[] = newBooleanUtil()
    end
    BooleanUtil_instanceValue[]
end
function staticSet_instance(::Type{BooleanUtil}, value)
    BooleanUtil_instanceSet[] = true
    BooleanUtil_instanceValue[] = value
end

function initFieldsBooleanUtil(this::BooleanUtil)
    this.tsUtil = nothing
    this.tsUtil = AllBinary.getInstance(TsUtil)
    nothing
end


function getInstance(::Type{BooleanUtil})
        return staticGet_instance(BooleanUtil)
end


function initBooleanUtil(this::BooleanUtil)
        initFieldsBooleanUtil(this)
        nothing
        nothing
end

function newBooleanUtil()
    this = BooleanUtil()
    initBooleanUtil(this)
    this
end


function getFromString(this::BooleanUtil, booleanString)
        local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
        local booleanFactory = AllBinary.getInstance(BooleanFactory)
        if AllBinary.isEmpty(stringValidationUtil, booleanString)
            return false
        end
        local booleanStringLowerCase = Base.lowercase(booleanString)
        if AllBinary.compareTo(this.tsUtil, booleanStringLowerCase, booleanFactory.TRUE_STRING) == Int32(0)
            return true
        elseif AllBinary.compareTo(this.tsUtil, booleanStringLowerCase, booleanFactory.FALSE_STRING) == Int32(0)
            return false
        else
            throw(jNewException("Exception", "Invalid booleanString - Must be true or false"))
        end
end


function isStringBoolean(this::BooleanUtil, booleanString)
        local booleanFactory = AllBinary.getInstance(BooleanFactory)
        local booleanStringLowerCase = Base.lowercase(booleanString)
        if jCompareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == Int32(0) || jCompareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == Int32(0)
            return true
        end
        return false
end


function toStringFromBooleanArray(this::BooleanUtil, booleanArray)
        local stringMaker = newStringMaker()
        local size::Int32 = Int32(Base.length(booleanArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.appendboolean(stringMaker, booleanArray[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringMaker)
end

