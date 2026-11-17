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

#Use 8hz16bitmono for most J2ME
# extends CompositeSound: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct FireworksSound <: JObject
    FireworksSound() = new()
end

const FireworksSound_soundInterfaceValue = Ref{Any}(nothing)
const FireworksSound_soundInterfaceSet = Ref(false)
function staticGet_soundInterface(::Type{FireworksSound})
    if !FireworksSound_soundInterfaceSet[]
        FireworksSound_soundInterfaceSet[] = true
        FireworksSound_soundInterfaceValue[] = newFireworksSound()
    end
    FireworksSound_soundInterfaceValue[]
end
function staticSet_soundInterface(::Type{FireworksSound}, value)
    FireworksSound_soundInterfaceSet[] = true
    FireworksSound_soundInterfaceValue[] = value
end

function initFieldsFireworksSound(this::FireworksSound)
    nothing
end


function initFireworksSound(this::FireworksSound)
        initCompositeSound(this, "resource:/wav/fireworks.wav")
        nothing
end

function newFireworksSound()
    this = FireworksSound()
    initFireworksSound(this)
    this
end


function getInstance(::Type{FireworksSound})
        return staticGet_soundInterface(FireworksSound)
end

