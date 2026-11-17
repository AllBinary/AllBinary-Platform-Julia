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
# package org.allbinary.media.audio

# extends BaseSoundsFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct EarlySoundsFactory <: JObject
    EarlySoundsFactory() = new()
end

const EarlySoundsFactory_instanceValue = Ref{Any}(nothing)
const EarlySoundsFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{EarlySoundsFactory})
    if !EarlySoundsFactory_instanceSet[]
        EarlySoundsFactory_instanceSet[] = true
        EarlySoundsFactory_instanceValue[] = newEarlySoundsFactory()
    end
    EarlySoundsFactory_instanceValue[]
end
function staticSet_instance(::Type{EarlySoundsFactory}, value)
    EarlySoundsFactory_instanceSet[] = true
    EarlySoundsFactory_instanceValue[] = value
end

function initFieldsEarlySoundsFactory(this::EarlySoundsFactory)
    nothing
end

function initEarlySoundsFactory(this::EarlySoundsFactory)
    initBaseSoundsFactory(this)
    initFieldsEarlySoundsFactory(this)
end

function newEarlySoundsFactory()
    this = EarlySoundsFactory()
    initEarlySoundsFactory(this)
    this
end


function getSoundInterfaceArray(this::EarlySoundsFactory)
        local soundInterfaceArray = jNewArray(Any, Int32(2), nothing)
        local index::Int32 = Int32(0)
        soundInterfaceArray[(let old = index; index += Int32(1); old end) + 1] = AllBinary.getInstance(SelectSound)
        soundInterfaceArray[(let old = index; index += Int32(1); old end) + 1] = AllBinary.getInstance(ErrorSound)
        return soundInterfaceArray
end


function getInstance(::Type{EarlySoundsFactory})
        return staticGet_instance(EarlySoundsFactory)
end

