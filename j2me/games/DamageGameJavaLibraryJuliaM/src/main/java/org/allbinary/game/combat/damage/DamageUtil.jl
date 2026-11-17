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

mutable struct DamageUtil <: JObject
    logUtil::Any
    COLLIDE::Any
    DamageUtil() = new()
end

const DamageUtil_instanceValue = Ref{Any}(nothing)
const DamageUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{DamageUtil})
    if !DamageUtil_instanceSet[]
        DamageUtil_instanceSet[] = true
        DamageUtil_instanceValue[] = newDamageUtil()
    end
    DamageUtil_instanceValue[]
end
function staticSet_instance(::Type{DamageUtil}, value)
    DamageUtil_instanceSet[] = true
    DamageUtil_instanceValue[] = value
end

function initFieldsDamageUtil(this::DamageUtil)
    this.logUtil = nothing
    this.COLLIDE = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.COLLIDE = "collide"
    nothing
end


function getInstance(::Type{DamageUtil})
        return staticGet_instance(DamageUtil)
end


function initDamageUtil(this::DamageUtil)
        initFieldsDamageUtil(this)
        nothing
        nothing
end

function newDamageUtil()
    this = DamageUtil()
    initDamageUtil(this)
    this
end


function process(this::DamageUtil, damageableInterface, damageableInterface2)
        AllBinary.damage(damageableInterface, AllBinary.getDamage(damageableInterface2, Int32(0)), Int32(0))
        nothing
end


function debugDamage(this::DamageUtil, collidableInterfaceCompositeInterface1, collidableInterfaceCompositeInterface)
        local collidableDestroyableDamageableLayer = (collidableInterfaceCompositeInterface)
        local damage::Int32 = AllBinary.getDamage(collidableDestroyableDamageableLayer, Int32(0))
        if damage > Int32(20000)
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, "Collision ")
            AllBinary.append(stringBuffer, AllBinary.toString(collidableInterfaceCompositeInterface1))
            AllBinary.append(stringBuffer, " with: ")
            AllBinary.append(stringBuffer, AllBinary.toString(collidableInterfaceCompositeInterface))
            AllBinary.append(stringBuffer, " damage: ")
            AllBinary.appendint(stringBuffer, damage)
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), collidableInterfaceCompositeInterface1, this.COLLIDE)
        end
        nothing
end

