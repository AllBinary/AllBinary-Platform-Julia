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
# package org.allbinary.resources

mutable struct KeyValueFactory <: JObject
    MAP::Any
    KeyValueFactory() = new()
end

const KeyValueFactory_instanceValue = Ref{Any}(nothing)
const KeyValueFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{KeyValueFactory})
    if !KeyValueFactory_instanceSet[]
        KeyValueFactory_instanceSet[] = true
        KeyValueFactory_instanceValue[] = newKeyValueFactory()
    end
    KeyValueFactory_instanceValue[]
end
function staticSet_instance(::Type{KeyValueFactory}, value)
    KeyValueFactory_instanceSet[] = true
    KeyValueFactory_instanceValue[] = value
end

function initFieldsKeyValueFactory(this::KeyValueFactory)
    this.MAP = nothing
    this.MAP = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    nothing
end

function initKeyValueFactory(this::KeyValueFactory)
    initFieldsKeyValueFactory(this)
end

function newKeyValueFactory()
    this = KeyValueFactory()
    initKeyValueFactory(this)
    this
end


function getInstance(::Type{KeyValueFactory})
        return staticGet_instance(KeyValueFactory)
end


function get(this::KeyValueFactory, key)
        if !AllBinary.containsKey(this.MAP, (key))
            return key
        end
        return (AllBinary.get(this.MAP, (key)))
end

