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
# package org.allbinary.logic.system.security.crypt

mutable struct DatabaseEncoder <: JObject
    DatabaseEncoder() = new()
end


function initFieldsDatabaseEncoder(this::DatabaseEncoder)
    nothing
end


function initDatabaseEncoder(this::DatabaseEncoder)
        initFieldsDatabaseEncoder(this)
        nothing
        nothing
end

function newDatabaseEncoder()
    this = DatabaseEncoder()
    initDatabaseEncoder(this)
    this
end


function encode(::Type{DatabaseEncoder}, value)
        try
            local array = value
            local stringBuffer = newStringMaker()
            let
                local index::Int32 = Int32(0)
                while index < Int32(Base.length(array))
                try
                AllBinary.append(stringBuffer, AllBinary.toString(array[index + 1]))
                if index < Int32(Base.length(array)) - Int32(1)
                    AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
                end
                finally
                    index += Int32(1)
                end
                end
            end
            return AllBinary.toString(stringBuffer)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.putOE(PreLogUtil, commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e)
            return AllBinary.getInstance(StringUtil).EMPTY_STRING
        end
end


function decode(::Type{DatabaseEncoder}, value)
        try
            local tokenizer = newTokenizer(AllBinary.getInstance(CommonSeps).SPACE)
            local vector = AllBinary.getTokensFromString(tokenizer, value, newBasicArrayListD())
            local size::Int32 = AllBinary.size(vector)
            local decode = jNewArray(Int8, size, Int8(0))
            local byteOfData = nothing
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                byteOfData = (vector.objectArray[index + 1])
                decode[index + 1] = AllBinary.parseByte(Byte, byteOfData)
                finally
                    index += Int32(1)
                end
                end
            end
            return decode
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.putSE(PreLogUtil, commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e)
            return AllBinary.getInstance(NullUtil).NULL_BYTE_ARRAY
        end
end

