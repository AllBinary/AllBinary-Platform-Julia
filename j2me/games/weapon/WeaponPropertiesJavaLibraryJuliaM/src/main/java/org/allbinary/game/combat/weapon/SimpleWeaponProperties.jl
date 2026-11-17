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
# package org.allbinary.game.combat.weapon

mutable struct SimpleWeaponProperties <: JObject
    damage::Int32
    dissipation::Int16
    range::Int32
    SimpleWeaponProperties() = new()
end


function initFieldsSimpleWeaponProperties(this::SimpleWeaponProperties)
    this.damage = Int32(0)
    this.dissipation = Int16(0)
    this.range = Int32(0)
    this.damage = Int32(0)
    this.dissipation = Int16(0)
    this.range = Int32(0)
    nothing
end

function initSimpleWeaponProperties(this::SimpleWeaponProperties)
    initFieldsSimpleWeaponProperties(this)
end

function newSimpleWeaponProperties()
    this = SimpleWeaponProperties()
    initSimpleWeaponProperties(this)
    this
end


function set(this::SimpleWeaponProperties, simpleWeaponProperties)
        AllBinary.setDamage(this, AllBinary.getDamage(simpleWeaponProperties))
        AllBinary.setDissipation(this, AllBinary.getDissipation(simpleWeaponProperties))
        AllBinary.setRange(this, AllBinary.getRange(simpleWeaponProperties))
        nothing
end


function setDamage(this::SimpleWeaponProperties, damage)
        this.damage = damage
        nothing
end


function getDamage(this::SimpleWeaponProperties)
        return this.damage
end


function setDissipation(this::SimpleWeaponProperties, dissipation)
        this.dissipation = dissipation
        nothing
end


function getDissipation(this::SimpleWeaponProperties)
        return this.dissipation
end


function getRange(this::SimpleWeaponProperties)
        return this.range
end


function setRange(this::SimpleWeaponProperties, range)
        this.range = range
        nothing
end

