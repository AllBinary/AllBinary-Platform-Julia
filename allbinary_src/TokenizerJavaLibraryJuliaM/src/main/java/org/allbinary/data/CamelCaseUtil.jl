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
# package org.allbinary.data

mutable struct CamelCaseUtil <: JObject
    commonSeps::Any
    CamelCaseUtil() = new()
end

const CamelCaseUtil_instanceValue = Ref{Any}(nothing)
const CamelCaseUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{CamelCaseUtil})
    if !CamelCaseUtil_instanceSet[]
        CamelCaseUtil_instanceSet[] = true
        CamelCaseUtil_instanceValue[] = newCamelCaseUtil()
    end
    CamelCaseUtil_instanceValue[]
end
function staticSet_instance(::Type{CamelCaseUtil}, value)
    CamelCaseUtil_instanceSet[] = true
    CamelCaseUtil_instanceValue[] = value
end

function initFieldsCamelCaseUtil(this::CamelCaseUtil)
    this.commonSeps = nothing
    this.commonSeps = AllBinary.getInstance(CommonSeps)
    nothing
end

function initCamelCaseUtil(this::CamelCaseUtil)
    initFieldsCamelCaseUtil(this)
end

function newCamelCaseUtil()
    this = CamelCaseUtil()
    initCamelCaseUtil(this)
    this
end


function getInstance(::Type{CamelCaseUtil})
        return staticGet_instance(CamelCaseUtil)
end


function getAsCamelCase(this::CamelCaseUtil, string, stringBuilder)
        local stringValidationUtil = AllBinary.getInstance(StringValidationUtil)
        AllBinary.delete(stringBuilder, Int32(0), AllBinary.length(stringBuilder))
        local list = newBasicArrayListD()
        local tokenizer = newTokenizer(this.commonSeps.UNDERSCORE)
        AllBinary.getTokensFromString(tokenizer, string, list)
        local size::Int32 = AllBinary.size(list)
        local word = nothing
        let
            local i::Int32 = Int32(0)
            while i < size
            try
            word = (AllBinary.get(list, i))
            word = (AllBinary.isEmpty(stringValidationUtil, word) ? word : AllBinary.toString(AllBinary.append(AllBinary.appendchar(newStringMaker(), AllBinary.toUpperCase(Character, jCharAt(word, Int32(0)))), Base.lowercase(jSubstring(word, Int32(1))))))
            AllBinary.append(stringBuilder, word)
            finally
                i += Int32(1)
            end
            end
        end
        return AllBinary.toString(stringBuilder)
end

