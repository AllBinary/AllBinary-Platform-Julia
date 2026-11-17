#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.physics.velocity

# extends VelocityBehaviorBase: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoDragVelocityBehavior <: JObject
    NoDragVelocityBehavior() = new()
end

const NoDragVelocityBehavior_instanceValue = Ref{Any}(nothing)
const NoDragVelocityBehavior_instanceSet = Ref(false)
function staticGet_instance(::Type{NoDragVelocityBehavior})
    if !NoDragVelocityBehavior_instanceSet[]
        NoDragVelocityBehavior_instanceSet[] = true
        NoDragVelocityBehavior_instanceValue[] = newNoDragVelocityBehavior()
    end
    NoDragVelocityBehavior_instanceValue[]
end
function staticSet_instance(::Type{NoDragVelocityBehavior}, value)
    NoDragVelocityBehavior_instanceSet[] = true
    NoDragVelocityBehavior_instanceValue[] = value
end

function initFieldsNoDragVelocityBehavior(this::NoDragVelocityBehavior)
    nothing
end

function initNoDragVelocityBehavior(this::NoDragVelocityBehavior)
    initVelocityBehaviorBase(this)
    initFieldsNoDragVelocityBehavior(this)
end

function newNoDragVelocityBehavior()
    this = NoDragVelocityBehavior()
    initNoDragVelocityBehavior(this)
    this
end

