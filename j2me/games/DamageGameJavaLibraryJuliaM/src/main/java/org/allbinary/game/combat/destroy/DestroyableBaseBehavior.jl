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
# package org.allbinary.game.combat.destroy

mutable struct DestroyableBaseBehavior <: JObject
    DestroyableBaseBehavior() = new()
end

const DestroyableBaseBehavior_instanceValue = Ref{Any}(nothing)
const DestroyableBaseBehavior_instanceSet = Ref(false)
function staticGet_instance(::Type{DestroyableBaseBehavior})
    if !DestroyableBaseBehavior_instanceSet[]
        DestroyableBaseBehavior_instanceSet[] = true
        DestroyableBaseBehavior_instanceValue[] = newDestroyableBaseBehavior()
    end
    DestroyableBaseBehavior_instanceValue[]
end
function staticSet_instance(::Type{DestroyableBaseBehavior}, value)
    DestroyableBaseBehavior_instanceSet[] = true
    DestroyableBaseBehavior_instanceValue[] = value
end

function initFieldsDestroyableBaseBehavior(this::DestroyableBaseBehavior)
    nothing
end

function initDestroyableBaseBehavior(this::DestroyableBaseBehavior)
    initFieldsDestroyableBaseBehavior(this)
end

function newDestroyableBaseBehavior()
    this = DestroyableBaseBehavior()
    initDestroyableBaseBehavior(this)
    this
end


function getInstance(::Type{DestroyableBaseBehavior})
        return staticGet_instance(DestroyableBaseBehavior)
end


function getName(this::DestroyableBaseBehavior)
        return jClassName(this)
end


function isDestroyed(this::DestroyableBaseBehavior)
        throw(jNewException("Exception", AllBinary.getInstance(CommonStrings).NOT_IMPLEMENTED))
end


function setDestroyed(this::DestroyableBaseBehavior, destroyed)
        nothing
        nothing
end

