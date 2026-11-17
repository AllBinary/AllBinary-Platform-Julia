#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.logic.system.security.crypt.jcehelper

# extends BaseSecretComposite: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SecretComposite <: JObject
    byteUtil::Any
    cipher::Any
    secretKey::Any
    key::Any
    SecretComposite() = new()
end


function initFieldsSecretComposite(this::SecretComposite)
    this.byteUtil = nothing
    this.cipher = nothing
    this.secretKey = nothing
    this.key = nothing
    this.byteUtil = AllBinary.getInstance(ByteUtil)
    
    
    
    nothing
end


function initSecretComposite(this::SecretComposite, secretKey, cipher, key)
        initBaseSecretComposite(this)
        initFieldsSecretComposite(this)
        this.secretKey = secretKey
        this.cipher = cipher
        this.key = key
        nothing
end

function newSecretComposite(secretKey, cipher, key)
    this = SecretComposite()
    initSecretComposite(this, secretKey, cipher, key)
    this
end


function encrypt(this::SecretComposite, array)
        array = AllBinary.mutilate(this, array)
        AllBinary.init(this.cipher, staticGet_ENCRYPT_MODE(Cipher), this.secretKey)
        return AllBinary.doFinal(this.cipher, array)
end


function decrypt(this::SecretComposite, array)
        AllBinary.init(this.cipher, staticGet_DECRYPT_MODE(Cipher), this.secretKey)
        return AllBinary.mutilate(this, AllBinary.doFinal(this.cipher, array))
end


function mutilate(this::SecretComposite, array)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(this.key))
            try
            local value::Int8 = this.key[index + 1]
            if ((value) % Int32) < Int32(8) && ((value) % Int32) > Int32(0)
                array = AllBinary.xorByte(this.byteUtil, array, ((value) % Int32))
            end
            finally
                index += Int32(1)
            end
            end
        end
        return array
end

