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
# package org.allbinary.logic.string.tokens

mutable struct Tokenizer <: JObject
    sep::Any
    endSep::Any
    Tokenizer() = new()
end


function initFieldsTokenizer(this::Tokenizer)
    this.sep = nothing
    this.endSep = nothing
    
    this.endSep = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function initTokenizer(this::Tokenizer, sep)
        initFieldsTokenizer(this)
        if AllBinary.compareTo(AllBinary.getInstance(TsUtil), sep, AllBinary.getInstance(StringUtil).EMPTY_STRING) == Int32(0)
            throw(jNewException("Exception", "Sep provided is not valid"))
        end
        this.sep = sep
        nothing
end

function newTokenizer(sep)
    this = Tokenizer()
    initTokenizer(this, sep)
    this
end


function setSep(this::Tokenizer, sep)
        this.sep = sep
        nothing
end


function setEndSep(this::Tokenizer, endSep)
        this.endSep = endSep
        nothing
end


function getInsideSep(this::Tokenizer, string)
        local tokenList = newBasicArrayListD()
        local index::Int32 = Int32(0)
        local size::Int32 = jLength(string)
        while index < size
            index = jIndexOf(string, this.sep, index)
            if index != -Int32(1)
                local end_::Int32 = jIndexOf(string, this.endSep, index + jLength(this.sep))
                if end_ != -Int32(1)
                    AllBinary.add(tokenList, jSubstring(string, index + jLength(this.sep), end_ - (jLength(this.endSep) - Int32(1))))
                    index = end_ + jLength(this.endSep)
                else
                    nothing
                end
            else
                break
            end
        end
        return tokenList
end


function getTokensFromString(this::Tokenizer, string, tokenVector)
        local index::Int32 = Int32(0)
        local end_::Int32 = Int32(0)
        while index < jLength(string)
            end_ = jIndexOf(string, this.sep, index)
            if end_ != -Int32(1)
                AllBinary.add(tokenVector, jSubstring(string, index, end_))
                index = end_ + jLength(this.sep)
            else
                AllBinary.add(tokenVector, jSubstring(string, index, jLength(string)))
                break
            end
        end
        return tokenVector
end


function getTokens(this::Tokenizer, stringVector)
        local tokenHashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
        local string = AllBinary.getInstance(StringUtil).EMPTY_STRING
        local end_::Int32 = Int32(0)
        local size::Int32 = AllBinary.size(stringVector)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            string = (stringVector.objectArray[index + 1])
            end_ = jIndexOf(string, this.sep)
            if end_ >= Int32(0)
                AllBinary.put(tokenHashtable, jSubstring(string, Int32(0), end_), jSubstring(string, end_ + Int32(1), jLength(string)))
            end
            finally
                index += Int32(1)
            end
            end
        end
        return tokenHashtable
end

