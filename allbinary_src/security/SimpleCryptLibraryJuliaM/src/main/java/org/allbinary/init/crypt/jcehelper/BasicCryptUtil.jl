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
# package org.allbinary.init.crypt.jcehelper

mutable struct BasicCryptUtil <: JObject
    logUtil::Any
    tsUtil::Any
    XML_START::Any
    BasicCryptUtil() = new()
end

const BasicCryptUtil_instanceValue = Ref{Any}(nothing)
const BasicCryptUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicCryptUtil})
    if !BasicCryptUtil_instanceSet[]
        BasicCryptUtil_instanceSet[] = true
        BasicCryptUtil_instanceValue[] = newBasicCryptUtil()
    end
    BasicCryptUtil_instanceValue[]
end
function staticSet_instance(::Type{BasicCryptUtil}, value)
    BasicCryptUtil_instanceSet[] = true
    BasicCryptUtil_instanceValue[] = value
end

function initFieldsBasicCryptUtil(this::BasicCryptUtil)
    this.logUtil = nothing
    this.tsUtil = nothing
    this.XML_START = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.tsUtil = AllBinary.getInstance(TsUtil)
    this.XML_START = "<?xml"
    nothing
end

function initBasicCryptUtil(this::BasicCryptUtil)
    initFieldsBasicCryptUtil(this)
end

function newBasicCryptUtil()
    this = BasicCryptUtil()
    initBasicCryptUtil(this)
    this
end


function getInstance(::Type{BasicCryptUtil})
        return staticGet_instance(BasicCryptUtil)
end


function getDecryptedInputStream(this::BasicCryptUtil, inputStream, cryptInterface)
        local buffer = newByteArrayOutputStream()
        local ch::Int32 = Int32(0)
        while true
            ch = AllBinary.read(inputStream)
            if ch == -Int32(1)
                break
            end
            AllBinary.write(buffer, ch)
        end
        local decrypted = AllBinary.decrypt(cryptInterface, AllBinary.toByteArray(buffer))
        local decryptedString = decrypted
        local index::Int32 = jIndexOf(decryptedString, this.XML_START)
        if index > Int32(0)
            decryptedString = jSubstring(decryptedString, index)
        end
        return newByteArrayInputStream(AllBinary.getByteArray(this.tsUtil, decryptedString))
end

