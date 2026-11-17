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

mutable struct KeySpecFactory <: JObject
    DES::Any
    DESEDE::Any
    BLOWFISH::Any
    KeySpecFactory() = new()
end

const KeySpecFactory_instanceValue = Ref{Any}(nothing)
const KeySpecFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{KeySpecFactory})
    if !KeySpecFactory_instanceSet[]
        KeySpecFactory_instanceSet[] = true
        KeySpecFactory_instanceValue[] = newKeySpecFactory()
    end
    KeySpecFactory_instanceValue[]
end
function staticSet_instance(::Type{KeySpecFactory}, value)
    KeySpecFactory_instanceSet[] = true
    KeySpecFactory_instanceValue[] = value
end

function initFieldsKeySpecFactory(this::KeySpecFactory)
    this.DES = nothing
    this.DESEDE = nothing
    this.BLOWFISH = nothing
    this.DES = "DES"
    this.DESEDE = "DESede"
    this.BLOWFISH = "Blowfish"
    nothing
end


function getInstance(::Type{KeySpecFactory})
        return staticGet_instance(KeySpecFactory)
end


function initKeySpecFactory(this::KeySpecFactory)
        initFieldsKeySpecFactory(this)
        nothing
        nothing
end

function newKeySpecFactory()
    this = KeySpecFactory()
    initKeySpecFactory(this)
    this
end


function getInstance(this::KeySpecFactory, algorithm, keyData)
        try
            local tsUtil = AllBinary.getInstance(TsUtil)
            if AllBinary.compareTo(tsUtil, algorithm, this.DES) == Int32(0)
                return newDESKeySpec(keyData)
            elseif AllBinary.compareTo(tsUtil, algorithm, this.DESEDE) == Int32(0)
                return newDESedeKeySpec(keyData)
            else
                throw(jNewException("RuntimeException", ""))
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.putOE(PreLogUtil, commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e)
            throw(jNewException("RuntimeException", ""))
        end
end

