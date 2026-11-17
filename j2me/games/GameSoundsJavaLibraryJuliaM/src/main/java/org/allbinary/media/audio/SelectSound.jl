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
mutable struct SelectSound <: JObject
    SelectSound() = new()
end

const SelectSound_soundInterfaceValue = Ref{Any}(nothing)
const SelectSound_soundInterfaceSet = Ref(false)
function staticGet_soundInterface(::Type{SelectSound})
    if !SelectSound_soundInterfaceSet[]
        SelectSound_soundInterfaceSet[] = true
        SelectSound_soundInterfaceValue[] = newSelectSound()
    end
    SelectSound_soundInterfaceValue[]
end
function staticSet_soundInterface(::Type{SelectSound}, value)
    SelectSound_soundInterfaceSet[] = true
    SelectSound_soundInterfaceValue[] = value
end

function initFieldsSelectSound(this::SelectSound)
    nothing
end


function initSelectSound(this::SelectSound)
        initCompositeSound(this, "resource:/wav/select.wav")
        nothing
end

function newSelectSound()
    this = SelectSound()
    initSelectSound(this)
    this
end


function getInstance(::Type{SelectSound})
        return staticGet_soundInterface(SelectSound)
end

