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
mutable struct DropWeaponSound <: JObject
    DropWeaponSound() = new()
end

const DropWeaponSound_soundInterfaceValue = Ref{Any}(nothing)
const DropWeaponSound_soundInterfaceSet = Ref(false)
function staticGet_soundInterface(::Type{DropWeaponSound})
    if !DropWeaponSound_soundInterfaceSet[]
        DropWeaponSound_soundInterfaceSet[] = true
        DropWeaponSound_soundInterfaceValue[] = newDropWeaponSound()
    end
    DropWeaponSound_soundInterfaceValue[]
end
function staticSet_soundInterface(::Type{DropWeaponSound}, value)
    DropWeaponSound_soundInterfaceSet[] = true
    DropWeaponSound_soundInterfaceValue[] = value
end

function initFieldsDropWeaponSound(this::DropWeaponSound)
    nothing
end


function initDropWeaponSound(this::DropWeaponSound)
        initCompositeSound(this, "resource:/wav/mine.wav")
        nothing
end

function newDropWeaponSound()
    this = DropWeaponSound()
    initDropWeaponSound(this)
    this
end


function getInstance(::Type{DropWeaponSound})
        return staticGet_soundInterface(DropWeaponSound)
end

