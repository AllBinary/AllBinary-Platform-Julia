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

# extends CompositeSound: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ErrorSound <: JObject
    ErrorSound() = new()
end

const ErrorSound_soundInterfaceValue = Ref{Any}(nothing)
const ErrorSound_soundInterfaceSet = Ref(false)
function staticGet_soundInterface(::Type{ErrorSound})
    if !ErrorSound_soundInterfaceSet[]
        ErrorSound_soundInterfaceSet[] = true
        ErrorSound_soundInterfaceValue[] = newErrorSound()
    end
    ErrorSound_soundInterfaceValue[]
end
function staticSet_soundInterface(::Type{ErrorSound}, value)
    ErrorSound_soundInterfaceSet[] = true
    ErrorSound_soundInterfaceValue[] = value
end

function initFieldsErrorSound(this::ErrorSound)
    nothing
end


function initErrorSound(this::ErrorSound)
        initCompositeSound(this, "resource:/wav/error.wav")
        nothing
end

function newErrorSound()
    this = ErrorSound()
    initErrorSound(this)
    this
end


function getInstance(::Type{ErrorSound})
        return staticGet_soundInterface(ErrorSound)
end

