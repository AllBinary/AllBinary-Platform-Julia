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
# package org.allbinary.game.health

mutable struct Health <: JObject
    health::Int32
    maxHealth::Int32
    healthListenerInterface::Any
    Health() = new()
end

const Health_NULL_HEALTHValue = Ref{Any}(nothing)
const Health_NULL_HEALTHSet = Ref(false)
function staticGet_NULL_HEALTH(::Type{Health})
    if !Health_NULL_HEALTHSet[]
        Health_NULL_HEALTHSet[] = true
        Health_NULL_HEALTHValue[] = newHealth(Int32(0))
    end
    Health_NULL_HEALTHValue[]
end
function staticSet_NULL_HEALTH(::Type{Health}, value)
    Health_NULL_HEALTHSet[] = true
    Health_NULL_HEALTHValue[] = value
end
const Health_NAMEValue = Ref{Any}(nothing)
const Health_NAMESet = Ref(false)
function staticGet_NAME(::Type{Health})
    if !Health_NAMESet[]
        Health_NAMESet[] = true
        Health_NAMEValue[] = "Health Resource"
    end
    Health_NAMEValue[]
end
function staticSet_NAME(::Type{Health}, value)
    Health_NAMESet[] = true
    Health_NAMEValue[] = value
end
const Health_HEALTH_LABELValue = Ref{Any}(nothing)
const Health_HEALTH_LABELSet = Ref(false)
function staticGet_HEALTH_LABEL(::Type{Health})
    if !Health_HEALTH_LABELSet[]
        Health_HEALTH_LABELSet[] = true
        Health_HEALTH_LABELValue[] = "Health: "
    end
    Health_HEALTH_LABELValue[]
end
function staticSet_HEALTH_LABEL(::Type{Health}, value)
    Health_HEALTH_LABELSet[] = true
    Health_HEALTH_LABELValue[] = value
end
const Health_MAX_HEALTH_LABELValue = Ref{Any}(nothing)
const Health_MAX_HEALTH_LABELSet = Ref(false)
function staticGet_MAX_HEALTH_LABEL(::Type{Health})
    if !Health_MAX_HEALTH_LABELSet[]
        Health_MAX_HEALTH_LABELSet[] = true
        Health_MAX_HEALTH_LABELValue[] = " Max: "
    end
    Health_MAX_HEALTH_LABELValue[]
end
function staticSet_MAX_HEALTH_LABEL(::Type{Health}, value)
    Health_MAX_HEALTH_LABELSet[] = true
    Health_MAX_HEALTH_LABELValue[] = value
end

function initFieldsHealth(this::Health)
    this.health = Int32(0)
    this.maxHealth = Int32(0)
    this.healthListenerInterface = nothing
    this.health = Int32(0)
    this.maxHealth = Int32(0)
    this.healthListenerInterface = staticGet_NULL_HEALTH_LISTENER(NullHealthListener)
    nothing
end


function initHealth(this::Health, maxHealth)
        initFieldsHealth(this)
        AllBinary.setMaxHealth(this, maxHealth)
        AllBinary.setHealth(this, maxHealth)
        nothing
end

function newHealth(maxHealth)
    this = Health()
    initHealth(this, maxHealth)
    this
end


function heal(this::Health, ahealth)
        local newHealth::Int32 = AllBinary.getHealth(this) + ahealth
        if newHealth > AllBinary.getMaxHealth(this)
            AllBinary.setHealth(this, AllBinary.getMaxHealth(this))
        else
            AllBinary.setHealth(this, newHealth)
        end
        nothing
end


function healMax(this::Health)
        AllBinary.setHealth(this, AllBinary.getMaxHealth(this))
        nothing
end


function isDamaged(this::Health)
        if AllBinary.getHealth(this) != AllBinary.getMaxHealth(this)
            return true
        else
            return false
        end
end


function damage(this::Health, ahealth)
        if ahealth < Int32(0)
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, "******* Trying to heal when damaging. Damage: ")
            AllBinary.appendint(stringBuffer, ahealth)
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
            AllBinary.append(stringBuffer, AllBinary.toString(this))
            AllBinary.log(ForcedLogUtil, AllBinary.toString(stringBuffer), this)
            return
        end
        local health::Int32 = AllBinary.getHealth(this) - ahealth
        AllBinary.setHealth(this, health)
        nothing
end


function isAlive(this::Health)
        if AllBinary.getHealth(this) <= Int32(0)
            return false
        else
            return true
        end
end


function getMaxHealth(this::Health)
        return this.maxHealth
end


function setMaxHealth(this::Health, maxHealth)
        this.maxHealth = maxHealth
        nothing
end


function setHealth(this::Health, health)
        if health > AllBinary.getMaxHealth(this)
            this.health = AllBinary.getMaxHealth(this)
        elseif health < Int32(0)
            this.health = Int32(0)
        else
            this.health = health
        end
        if this.healthListenerInterface !== nothing
            AllBinary.onHealthChange(this.healthListenerInterface)
        end
        nothing
end


function getHealth(this::Health)
        return this.health
end


function addListener(this::Health, healthGraphic)
        this.healthListenerInterface = healthGraphic
        nothing
end


function toString(this::Health)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, staticGet_HEALTH_LABEL(Health))
        AllBinary.appendint(stringBuffer, this.health)
        AllBinary.append(stringBuffer, staticGet_MAX_HEALTH_LABEL(Health))
        AllBinary.appendint(stringBuffer, this.maxHealth)
        return AllBinary.toString(stringBuffer)
end

