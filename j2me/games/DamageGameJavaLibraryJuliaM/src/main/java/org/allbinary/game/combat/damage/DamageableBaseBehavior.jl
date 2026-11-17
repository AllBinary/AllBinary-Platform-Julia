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
# package org.allbinary.game.combat.damage

mutable struct DamageableBaseBehavior <: JObject
    DamageableBaseBehavior() = new()
end

const DamageableBaseBehavior_instanceValue = Ref{Any}(nothing)
const DamageableBaseBehavior_instanceSet = Ref(false)
function staticGet_instance(::Type{DamageableBaseBehavior})
    if !DamageableBaseBehavior_instanceSet[]
        DamageableBaseBehavior_instanceSet[] = true
        DamageableBaseBehavior_instanceValue[] = newDamageableBaseBehavior()
    end
    DamageableBaseBehavior_instanceValue[]
end
function staticSet_instance(::Type{DamageableBaseBehavior}, value)
    DamageableBaseBehavior_instanceSet[] = true
    DamageableBaseBehavior_instanceValue[] = value
end

function initFieldsDamageableBaseBehavior(this::DamageableBaseBehavior)
    nothing
end

function initDamageableBaseBehavior(this::DamageableBaseBehavior)
    initFieldsDamageableBaseBehavior(this)
end

function newDamageableBaseBehavior()
    this = DamageableBaseBehavior()
    initDamageableBaseBehavior(this)
    this
end


function getInstance(::Type{DamageableBaseBehavior})
        return staticGet_instance(DamageableBaseBehavior)
end


function getName(this::DamageableBaseBehavior)
        return jClassName(this)
end


function damage(this::DamageableBaseBehavior, damage, damageType)
        nothing
        nothing
end


function getDamage(this::DamageableBaseBehavior, damageType)
        return Int32(6000)
end

