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
# package org.allbinary.game.combat

mutable struct CombatBaseBehavior <: JObject
    damageableBaseBehavior::Any
    destroyableBaseBehavior::Any
    readyForExplosion::Bool
    CombatBaseBehavior() = new()
end

const CombatBaseBehavior_NULL_COMBAT_BEHAVIORValue = Ref{Any}(nothing)
const CombatBaseBehavior_NULL_COMBAT_BEHAVIORSet = Ref(false)
function staticGet_NULL_COMBAT_BEHAVIOR(::Type{CombatBaseBehavior})
    if !CombatBaseBehavior_NULL_COMBAT_BEHAVIORSet[]
        CombatBaseBehavior_NULL_COMBAT_BEHAVIORSet[] = true
        CombatBaseBehavior_NULL_COMBAT_BEHAVIORValue[] = newCombatBaseBehavior(AllBinary.getInstance(DamageableBaseBehavior), AllBinary.getInstance(DestroyableBaseBehavior))
    end
    CombatBaseBehavior_NULL_COMBAT_BEHAVIORValue[]
end
function staticSet_NULL_COMBAT_BEHAVIOR(::Type{CombatBaseBehavior}, value)
    CombatBaseBehavior_NULL_COMBAT_BEHAVIORSet[] = true
    CombatBaseBehavior_NULL_COMBAT_BEHAVIORValue[] = value
end

function initFieldsCombatBaseBehavior(this::CombatBaseBehavior)
    this.damageableBaseBehavior = nothing
    this.destroyableBaseBehavior = nothing
    this.readyForExplosion = false
    
    
    this.readyForExplosion = false
    nothing
end


function initCombatBaseBehavior(this::CombatBaseBehavior, damageableBaseBehavior, destroyableBaseBehavior)
        initFieldsCombatBaseBehavior(this)
        this.damageableBaseBehavior = damageableBaseBehavior
        this.destroyableBaseBehavior = destroyableBaseBehavior
        nothing
end

function newCombatBaseBehavior(damageableBaseBehavior, destroyableBaseBehavior)
    this = CombatBaseBehavior()
    initCombatBaseBehavior(this, damageableBaseBehavior, destroyableBaseBehavior)
    this
end


function getDamageableBaseBehavior(this::CombatBaseBehavior)
        return this.damageableBaseBehavior
end


function getDestroyableBaseBehavior(this::CombatBaseBehavior)
        return this.destroyableBaseBehavior
end


function isReadyForExplosion(this::CombatBaseBehavior)
        return this.readyForExplosion
end


function setReadyForExplosion(this::CombatBaseBehavior, readyForExplosion)
        this.readyForExplosion = readyForExplosion
        nothing
end

