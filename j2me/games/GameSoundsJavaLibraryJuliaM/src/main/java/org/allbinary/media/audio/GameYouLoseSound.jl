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
mutable struct GameYouLoseSound <: JObject
    GameYouLoseSound() = new()
end

const GameYouLoseSound_soundInterfaceValue = Ref{Any}(nothing)
const GameYouLoseSound_soundInterfaceSet = Ref(false)
function staticGet_soundInterface(::Type{GameYouLoseSound})
    if !GameYouLoseSound_soundInterfaceSet[]
        GameYouLoseSound_soundInterfaceSet[] = true
        GameYouLoseSound_soundInterfaceValue[] = newGameYouLoseSound()
    end
    GameYouLoseSound_soundInterfaceValue[]
end
function staticSet_soundInterface(::Type{GameYouLoseSound}, value)
    GameYouLoseSound_soundInterfaceSet[] = true
    GameYouLoseSound_soundInterfaceValue[] = value
end

function initFieldsGameYouLoseSound(this::GameYouLoseSound)
    nothing
end


function initGameYouLoseSound(this::GameYouLoseSound)
        initCompositeSound(this, "resource:/wav/youlose.wav")
        nothing
end

function newGameYouLoseSound()
    this = GameYouLoseSound()
    initGameYouLoseSound(this)
    this
end


function getInstance(::Type{GameYouLoseSound})
        return staticGet_soundInterface(GameYouLoseSound)
end

