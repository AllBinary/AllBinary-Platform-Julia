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
# package org.allbinary.logic.java.characters

mutable struct CharacterSetData <: JObject
    US_ASCII::Any
    ISO_8859_1::Any
    UTF_8::Any
    UTF_16::Any
    UTF_16BE::Any
    UTF_16LE::Any
    CharacterSetData() = new()
end

const CharacterSetData_instanceValue = Ref{Any}(nothing)
const CharacterSetData_instanceSet = Ref(false)
function staticGet_instance(::Type{CharacterSetData})
    if !CharacterSetData_instanceSet[]
        CharacterSetData_instanceSet[] = true
        CharacterSetData_instanceValue[] = newCharacterSetData()
    end
    CharacterSetData_instanceValue[]
end
function staticSet_instance(::Type{CharacterSetData}, value)
    CharacterSetData_instanceSet[] = true
    CharacterSetData_instanceValue[] = value
end

function initFieldsCharacterSetData(this::CharacterSetData)
    this.US_ASCII = nothing
    this.ISO_8859_1 = nothing
    this.UTF_8 = nothing
    this.UTF_16 = nothing
    this.UTF_16BE = nothing
    this.UTF_16LE = nothing
    this.US_ASCII = "US-ASCII"
    this.ISO_8859_1 = "ISO-8859-1"
    this.UTF_8 = "UTF-8"
    this.UTF_16 = "UTF-16"
    this.UTF_16BE = "UTF-16BE"
    this.UTF_16LE = "UTF-16LE"
    nothing
end


function getInstance(::Type{CharacterSetData})
        return staticGet_instance(CharacterSetData)
end


function initCharacterSetData(this::CharacterSetData)
        initFieldsCharacterSetData(this)
        nothing
        nothing
end

function newCharacterSetData()
    this = CharacterSetData()
    initCharacterSetData(this)
    this
end

