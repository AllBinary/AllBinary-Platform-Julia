#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.media.audio

# extends Sound: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoSound <: JObject
    NoSound() = new()
end

const NoSound_instanceValue = Ref{Any}(nothing)
const NoSound_instanceSet = Ref(false)
function staticGet_instance(::Type{NoSound})
    if !NoSound_instanceSet[]
        NoSound_instanceSet[] = true
        NoSound_instanceValue[] = newNoSound()
    end
    NoSound_instanceValue[]
end
function staticSet_instance(::Type{NoSound}, value)
    NoSound_instanceSet[] = true
    NoSound_instanceValue[] = value
end

function initFieldsNoSound(this::NoSound)
    nothing
end


function getInstance(::Type{NoSound})
        return staticGet_instance(NoSound)
end


function initNoSound(this::NoSound)
        initSound(this, AllBinary.getInstance(StringUtil).EMPTY_STRING)
        AllBinary.setPlayerP(this, staticGet_NO_PLAYER(NoPlayer))
        nothing
end

function newNoSound()
    this = NoSound()
    initNoSound(this)
    this
end

