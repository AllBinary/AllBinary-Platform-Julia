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

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DamageFloaters <: JObject
    DamageFloaters() = new()
end

const DamageFloaters_SINGLETONValue = Ref{Any}(nothing)
const DamageFloaters_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{DamageFloaters})
    if !DamageFloaters_SINGLETONSet[]
        DamageFloaters_SINGLETONSet[] = true
        DamageFloaters_SINGLETONValue[] = newDamageFloaters()
    end
    DamageFloaters_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{DamageFloaters}, value)
    DamageFloaters_SINGLETONSet[] = true
    DamageFloaters_SINGLETONValue[] = value
end

function initFieldsDamageFloaters(this::DamageFloaters)
    nothing
end

function initDamageFloaters(this::DamageFloaters)
    initPaintable(this)
    initFieldsDamageFloaters(this)
end

function newDamageFloaters()
    this = DamageFloaters()
    initDamageFloaters(this)
    this
end


function getInstance(::Type{DamageFloaters})
        return staticGet_SINGLETON(DamageFloaters)
end


function add(this::DamageFloaters, damage)
        nothing
        nothing
end

