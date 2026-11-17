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
# package org.allbinary.ag.weapon.media.audio

# extends CompositeSound: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ExplosionBasicSound <: JObject
    ExplosionBasicSound() = new()
end

const ExplosionBasicSound_soundInterfaceValue = Ref{Any}(nothing)
const ExplosionBasicSound_soundInterfaceSet = Ref(false)
function staticGet_soundInterface(::Type{ExplosionBasicSound})
    if !ExplosionBasicSound_soundInterfaceSet[]
        ExplosionBasicSound_soundInterfaceSet[] = true
        ExplosionBasicSound_soundInterfaceValue[] = newExplosionBasicSound()
    end
    ExplosionBasicSound_soundInterfaceValue[]
end
function staticSet_soundInterface(::Type{ExplosionBasicSound}, value)
    ExplosionBasicSound_soundInterfaceSet[] = true
    ExplosionBasicSound_soundInterfaceValue[] = value
end

function initFieldsExplosionBasicSound(this::ExplosionBasicSound)
    nothing
end


function initExplosionBasicSound(this::ExplosionBasicSound)
        initCompositeSound(this, "resource:/wav/explosion.wav")
        nothing
end

function newExplosionBasicSound()
    this = ExplosionBasicSound()
    initExplosionBasicSound(this)
    this
end


function getInstance(::Type{ExplosionBasicSound})
        return staticGet_soundInterface(ExplosionBasicSound)
end

