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
# package org.allbinary.game.tick

mutable struct NullTickable <: JObject
    NAME::Any
    NullTickable() = new()
end

const NullTickable_SINGLETONValue = Ref{Any}(nothing)
const NullTickable_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{NullTickable})
    if !NullTickable_SINGLETONSet[]
        NullTickable_SINGLETONSet[] = true
        NullTickable_SINGLETONValue[] = newNullTickable()
    end
    NullTickable_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{NullTickable}, value)
    NullTickable_SINGLETONSet[] = true
    NullTickable_SINGLETONValue[] = value
end

function initFieldsNullTickable(this::NullTickable)
    this.NAME = nothing
    this.NAME = "NulLTickable"
    nothing
end

function initNullTickable(this::NullTickable)
    initFieldsNullTickable(this)
end

function newNullTickable()
    this = NullTickable()
    initNullTickable(this)
    this
end


function getInstance(::Type{NullTickable})
        return staticGet_SINGLETON(NullTickable)
end


function processTick(this::NullTickable, allBinaryLayerManager)
        nothing
        nothing
end


function getName(this::NullTickable)
        return this.NAME
end

