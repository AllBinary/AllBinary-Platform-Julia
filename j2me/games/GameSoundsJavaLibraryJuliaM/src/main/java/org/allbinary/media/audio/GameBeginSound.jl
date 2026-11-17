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
mutable struct GameBeginSound <: JObject
    GameBeginSound() = new()
end

const GameBeginSound_soundInterfaceValue = Ref{Any}(nothing)
const GameBeginSound_soundInterfaceSet = Ref(false)
function staticGet_soundInterface(::Type{GameBeginSound})
    if !GameBeginSound_soundInterfaceSet[]
        GameBeginSound_soundInterfaceSet[] = true
        GameBeginSound_soundInterfaceValue[] = newGameBeginSound()
    end
    GameBeginSound_soundInterfaceValue[]
end
function staticSet_soundInterface(::Type{GameBeginSound}, value)
    GameBeginSound_soundInterfaceSet[] = true
    GameBeginSound_soundInterfaceValue[] = value
end

function initFieldsGameBeginSound(this::GameBeginSound)
    nothing
end


function initGameBeginSound(this::GameBeginSound)
        initCompositeSound(this, "resource:/wav/begin.wav")
        nothing
end

function newGameBeginSound()
    this = GameBeginSound()
    initGameBeginSound(this)
    this
end


function getInstance(::Type{GameBeginSound})
        return staticGet_soundInterface(GameBeginSound)
end

