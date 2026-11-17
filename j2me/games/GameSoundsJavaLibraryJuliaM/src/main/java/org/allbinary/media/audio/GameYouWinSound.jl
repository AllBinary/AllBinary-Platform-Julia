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
mutable struct GameYouWinSound <: JObject
    GameYouWinSound() = new()
end

const GameYouWinSound_soundInterfaceValue = Ref{Any}(nothing)
const GameYouWinSound_soundInterfaceSet = Ref(false)
function staticGet_soundInterface(::Type{GameYouWinSound})
    if !GameYouWinSound_soundInterfaceSet[]
        GameYouWinSound_soundInterfaceSet[] = true
        GameYouWinSound_soundInterfaceValue[] = newGameYouWinSound()
    end
    GameYouWinSound_soundInterfaceValue[]
end
function staticSet_soundInterface(::Type{GameYouWinSound}, value)
    GameYouWinSound_soundInterfaceSet[] = true
    GameYouWinSound_soundInterfaceValue[] = value
end

function initFieldsGameYouWinSound(this::GameYouWinSound)
    nothing
end


function initGameYouWinSound(this::GameYouWinSound)
        initCompositeSound(this, "resource:/wav/youwin.wav")
        nothing
end

function newGameYouWinSound()
    this = GameYouWinSound()
    initGameYouWinSound(this)
    this
end


function getInstance(::Type{GameYouWinSound})
        return staticGet_soundInterface(GameYouWinSound)
end

