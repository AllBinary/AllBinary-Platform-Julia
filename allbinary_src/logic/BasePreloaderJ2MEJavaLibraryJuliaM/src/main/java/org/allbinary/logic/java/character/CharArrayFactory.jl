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
# package org.allbinary.logic.java.character

mutable struct CharArrayFactory <: JObject
    zeroCharArray::Any
    CharArrayFactory() = new()
end

const CharArrayFactory_instanceValue = Ref{Any}(nothing)
const CharArrayFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{CharArrayFactory})
    if !CharArrayFactory_instanceSet[]
        CharArrayFactory_instanceSet[] = true
        CharArrayFactory_instanceValue[] = newCharArrayFactory()
    end
    CharArrayFactory_instanceValue[]
end
function staticSet_instance(::Type{CharArrayFactory}, value)
    CharArrayFactory_instanceSet[] = true
    CharArrayFactory_instanceValue[] = value
end

function initFieldsCharArrayFactory(this::CharArrayFactory)
    this.zeroCharArray = nothing
    this.zeroCharArray = jNewArray(UInt16, Int32(0), UInt16(0))
    nothing
end

function initCharArrayFactory(this::CharArrayFactory)
    initFieldsCharArrayFactory(this)
end

function newCharArrayFactory()
    this = CharArrayFactory()
    initCharArrayFactory(this)
    this
end


function getInstance(::Type{CharArrayFactory})
        return staticGet_instance(CharArrayFactory)
end


function getZeroCharArray(this::CharArrayFactory)
        return this.zeroCharArray
end

