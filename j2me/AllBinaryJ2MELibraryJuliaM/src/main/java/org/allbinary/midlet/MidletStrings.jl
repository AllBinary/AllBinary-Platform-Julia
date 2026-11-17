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
# package org.allbinary.midlet

mutable struct MidletStrings <: JObject
    COMMAND_ACTION::Any
    MidletStrings() = new()
end

const MidletStrings_instanceValue = Ref{Any}(nothing)
const MidletStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{MidletStrings})
    if !MidletStrings_instanceSet[]
        MidletStrings_instanceSet[] = true
        MidletStrings_instanceValue[] = newMidletStrings()
    end
    MidletStrings_instanceValue[]
end
function staticSet_instance(::Type{MidletStrings}, value)
    MidletStrings_instanceSet[] = true
    MidletStrings_instanceValue[] = value
end

function initFieldsMidletStrings(this::MidletStrings)
    this.COMMAND_ACTION = nothing
    this.COMMAND_ACTION = "commandAction"
    nothing
end

function initMidletStrings(this::MidletStrings)
    initFieldsMidletStrings(this)
end

function newMidletStrings()
    this = MidletStrings()
    initMidletStrings(this)
    this
end


function getInstance(::Type{MidletStrings})
        return staticGet_instance(MidletStrings)
end

