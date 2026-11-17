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
# package org.allbinary.logic.system.security.crypt.jcehelper

mutable struct BasicCrypt <: JObject
    byteUtil::Any
    key::Any
    BasicCrypt() = new()
end


function initFieldsBasicCrypt(this::BasicCrypt)
    this.byteUtil = nothing
    this.key = nothing
    this.byteUtil = AllBinary.getInstance(ByteUtil)
    
    nothing
end


function initBasicCrypt(this::BasicCrypt, keyAsString)
        initFieldsBasicCrypt(this)
        local key = AllBinary.getInstance(NullUtil).NULL_BYTE_ARRAY
        try
            key = AllBinary.getByteArray(AllBinary.getInstance(TsUtil), keyAsString)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.putOE(PreLogUtil, commonStrings.EXCEPTION, this, "AbCrypt(alg,key)", e)
        end
        this.key = key
        nothing
end

function newBasicCrypt(keyAsString)
    this = BasicCrypt()
    initBasicCrypt(this, keyAsString)
    this
end


function encrypt(this::BasicCrypt, array)
        try
            return AllBinary.mutilate(this, array)
        catch e
            AllBinary.putOE(PreLogUtil, "Encrypt Failed", this, "encrypt", e)
            return AllBinary.getInstance(NullUtil).NULL_BYTE_ARRAY
        end
end


function decrypt(this::BasicCrypt, array)
        try
            return AllBinary.mutilate(this, array)
        catch e
            AllBinary.putOE(PreLogUtil, "decrypt Failed", this, "decrypt", e)
            return AllBinary.getInstance(NullUtil).NULL_BYTE_ARRAY
        end
end


function mutilate(this::BasicCrypt, array)
        local value::Int8 = Int8(0)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(this.key))
            try
            value = this.key[index + 1]
            array = AllBinary.xor(this.byteUtil, array, value)
            finally
                index += Int32(1)
            end
            end
        end
        return array
end

