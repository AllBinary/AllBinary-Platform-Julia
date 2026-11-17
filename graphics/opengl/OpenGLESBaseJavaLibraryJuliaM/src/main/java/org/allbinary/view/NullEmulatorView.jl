#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.view

mutable struct NullEmulatorView <: JObject
    NullEmulatorView() = new()
end

const NullEmulatorView_NULL_EMULATOR_VIEWValue = Ref{Any}(nothing)
const NullEmulatorView_NULL_EMULATOR_VIEWSet = Ref(false)
function staticGet_NULL_EMULATOR_VIEW(::Type{NullEmulatorView})
    if !NullEmulatorView_NULL_EMULATOR_VIEWSet[]
        NullEmulatorView_NULL_EMULATOR_VIEWSet[] = true
        NullEmulatorView_NULL_EMULATOR_VIEWValue[] = newNullEmulatorView()
    end
    NullEmulatorView_NULL_EMULATOR_VIEWValue[]
end
function staticSet_NULL_EMULATOR_VIEW(::Type{NullEmulatorView}, value)
    NullEmulatorView_NULL_EMULATOR_VIEWSet[] = true
    NullEmulatorView_NULL_EMULATOR_VIEWValue[] = value
end

function initFieldsNullEmulatorView(this::NullEmulatorView)
    nothing
end

function initNullEmulatorView(this::NullEmulatorView)
    initFieldsNullEmulatorView(this)
end

function newNullEmulatorView()
    this = NullEmulatorView()
    initNullEmulatorView(this)
    this
end


function setMidlet(this::NullEmulatorView, midlet)
        nothing
        nothing
end


function onEmulatorInitComplete(this::NullEmulatorView, midletActivity)
        nothing
        nothing
end


function onSetDisplayable(this::NullEmulatorView, displayable)
        nothing
        nothing
end

