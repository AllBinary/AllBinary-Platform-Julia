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

mutable struct BaseSecretComposite <: JObject
    BaseSecretComposite() = new()
end

const BaseSecretComposite_NULL_SECRET_COMPOSITEValue = Ref{Any}(nothing)
const BaseSecretComposite_NULL_SECRET_COMPOSITESet = Ref(false)
function staticGet_NULL_SECRET_COMPOSITE(::Type{BaseSecretComposite})
    if !BaseSecretComposite_NULL_SECRET_COMPOSITESet[]
        BaseSecretComposite_NULL_SECRET_COMPOSITESet[] = true
        BaseSecretComposite_NULL_SECRET_COMPOSITEValue[] = newBaseSecretComposite()
    end
    BaseSecretComposite_NULL_SECRET_COMPOSITEValue[]
end
function staticSet_NULL_SECRET_COMPOSITE(::Type{BaseSecretComposite}, value)
    BaseSecretComposite_NULL_SECRET_COMPOSITESet[] = true
    BaseSecretComposite_NULL_SECRET_COMPOSITEValue[] = value
end

function initFieldsBaseSecretComposite(this::BaseSecretComposite)
    nothing
end

function initBaseSecretComposite(this::BaseSecretComposite)
    initFieldsBaseSecretComposite(this)
end

function newBaseSecretComposite()
    this = BaseSecretComposite()
    initBaseSecretComposite(this)
    this
end


function encrypt(this::BaseSecretComposite, array)
        return AllBinary.getInstance(NullUtil).NULL_BYTE_ARRAY
end


function decrypt(this::BaseSecretComposite, array)
        return AllBinary.getInstance(NullUtil).NULL_BYTE_ARRAY
end

