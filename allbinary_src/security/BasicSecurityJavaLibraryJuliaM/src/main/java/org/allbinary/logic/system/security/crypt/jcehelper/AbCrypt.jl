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

mutable struct AbCrypt <: JObject
    tsUtil::Any
    secretComposite::Any
    algorithm::Any
    AbCrypt() = new()
end


function initFieldsAbCrypt(this::AbCrypt)
    this.tsUtil = nothing
    this.secretComposite = nothing
    this.algorithm = nothing
    this.tsUtil = AllBinary.getInstance(TsUtil)
    this.secretComposite = staticGet_NULL_SECRET_COMPOSITE(BaseSecretComposite)
    
    nothing
end


function initAbCrypt(this::AbCrypt, algorithm)
        initFieldsAbCrypt(this)
        this.algorithm = algorithm
        nothing
end

function newAbCrypt(algorithm)
    this = AbCrypt()
    initAbCrypt(this, algorithm)
    this
end


function init(this::AbCrypt, keyAsString)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        try
            try
                AllBinary.addProvider(Security, newBouncyCastleProvider())
            catch e
                AllBinary.putOE(PreLogUtil, commonStrings.EXCEPTION, this, commonStrings.INIT, e)
            end
            local key = AllBinary.getByteArray(this.tsUtil, keyAsString)
            local keySpec = AllBinary.getInstance(AllBinary.getInstance(KeySpecFactory), this.algorithm, key)
            local keyFactory = AllBinary.getInstance(SecretKeyFactory, this.algorithm)
            local secretKey = AllBinary.generateSecret(keyFactory, keySpec)
            local cipher = AllBinary.getInstance(Cipher, this.algorithm)
            this.secretComposite = newSecretComposite(secretKey, cipher, key)
        catch e
            AllBinary.putOE(PreLogUtil, "init Failed", this, commonStrings.INIT, e)
        end
        nothing
end


function encrypt(this::AbCrypt, array)
        try
            return AllBinary.encrypt(this.secretComposite, array)
        catch e
            AllBinary.putOE(PreLogUtil, "Encrypt Failed", this, "encrypt", e)
            return AllBinary.getInstance(NullUtil).NULL_BYTE_ARRAY
        end
end


function decrypt(this::AbCrypt, array)
        try
            return AllBinary.decrypt(this.secretComposite, array)
        catch e
            AllBinary.putOE(PreLogUtil, "decrypt Failed", this, "decrypt", e)
            return AllBinary.getInstance(NullUtil).NULL_BYTE_ARRAY
        end
end

