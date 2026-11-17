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

# extends SimpleWeaponProperties: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct WeaponProperties <: JObject
    reloadTime::Int64
    targetingTime::Int64
    speed::Any
    MAX::Int64
    ZERO::Int16
    WeaponProperties() = new()
end

const WeaponProperties_NULL_WEAPON_PROPERTIESValue = Ref{Any}(nothing)
const WeaponProperties_NULL_WEAPON_PROPERTIESSet = Ref(false)
function staticGet_NULL_WEAPON_PROPERTIES(::Type{WeaponProperties})
    if !WeaponProperties_NULL_WEAPON_PROPERTIESSet[]
        WeaponProperties_NULL_WEAPON_PROPERTIESSet[] = true
        WeaponProperties_NULL_WEAPON_PROPERTIESValue[] = newWeaponProperties(Int64(0), Int64(0), Int64(0), Int32(0), ((Int32(0)) % Int16))
    end
    WeaponProperties_NULL_WEAPON_PROPERTIESValue[]
end
function staticSet_NULL_WEAPON_PROPERTIES(::Type{WeaponProperties}, value)
    WeaponProperties_NULL_WEAPON_PROPERTIESSet[] = true
    WeaponProperties_NULL_WEAPON_PROPERTIESValue[] = value
end
const WeaponProperties_messageSentValue = Ref{Any}(nothing)
const WeaponProperties_messageSentSet = Ref(false)
function staticGet_messageSent(::Type{WeaponProperties})
    if !WeaponProperties_messageSentSet[]
        WeaponProperties_messageSentSet[] = true
        WeaponProperties_messageSentValue[] = false
    end
    WeaponProperties_messageSentValue[]
end
function staticSet_messageSent(::Type{WeaponProperties}, value)
    WeaponProperties_messageSentSet[] = true
    WeaponProperties_messageSentValue[] = value
end
const WeaponProperties_DAMAGEValue = Ref{Any}(nothing)
const WeaponProperties_DAMAGESet = Ref(false)
function staticGet_DAMAGE(::Type{WeaponProperties})
    if !WeaponProperties_DAMAGESet[]
        WeaponProperties_DAMAGESet[] = true
        WeaponProperties_DAMAGEValue[] = "Damage: "
    end
    WeaponProperties_DAMAGEValue[]
end
function staticSet_DAMAGE(::Type{WeaponProperties}, value)
    WeaponProperties_DAMAGESet[] = true
    WeaponProperties_DAMAGEValue[] = value
end
const WeaponProperties_RANGEValue = Ref{Any}(nothing)
const WeaponProperties_RANGESet = Ref(false)
function staticGet_RANGE(::Type{WeaponProperties})
    if !WeaponProperties_RANGESet[]
        WeaponProperties_RANGESet[] = true
        WeaponProperties_RANGEValue[] = "Range: "
    end
    WeaponProperties_RANGEValue[]
end
function staticSet_RANGE(::Type{WeaponProperties}, value)
    WeaponProperties_RANGESet[] = true
    WeaponProperties_RANGEValue[] = value
end
const WeaponProperties_RELOADValue = Ref{Any}(nothing)
const WeaponProperties_RELOADSet = Ref(false)
function staticGet_RELOAD(::Type{WeaponProperties})
    if !WeaponProperties_RELOADSet[]
        WeaponProperties_RELOADSet[] = true
        WeaponProperties_RELOADValue[] = "Reload: "
    end
    WeaponProperties_RELOADValue[]
end
function staticSet_RELOAD(::Type{WeaponProperties}, value)
    WeaponProperties_RELOADSet[] = true
    WeaponProperties_RELOADValue[] = value
end

function initFieldsWeaponProperties(this::WeaponProperties)
    this.reloadTime = Int64(0)
    this.targetingTime = Int64(0)
    this.speed = nothing
    this.MAX = Int64(0)
    this.ZERO = Int16(0)
    this.reloadTime = Int64(0)
    this.targetingTime = Int64(0)
    this.speed = staticGet_ZERO_BIGDECIMAL(BasicDecimal)
    this.MAX = Int64(10240)
    this.ZERO = Int32(0)
    nothing
end


function initWeaponProperties(this::WeaponProperties, reloadTime, targetingTime, speed, damage, dissipation)
        initSimpleWeaponProperties(this)
        initFieldsWeaponProperties(this)
        if speed < this.MAX && speed != Int64(0) && (let old = staticGet_messageSent(WeaponProperties); staticSet_messageSent(WeaponProperties, old + 1); old end)
            local MESSAGE = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: "
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(newStringMaker(), MESSAGE), speed)), this, commonStrings.CONSTRUCTOR)
            staticSet_messageSent(WeaponProperties, true)
        end
        AllBinary.setReloadTime(this, reloadTime)
        AllBinary.setTargetingTime(this, targetingTime)
        AllBinary.setDamage(this, damage)
        AllBinary.setDissipation(this, dissipation)
        AllBinary.setSpeed(this, newBasicDecimal(speed))
        if dissipation != this.ZERO
            local unscaledDamage::Int64 = AllBinary.getUnscaled(this.speed) * damage
            local scaledDissipation::Int32 = dissipation * AllBinary.getScaledFactorValue(this.speed)
            local value::Int64 = (unscaledDamage ÷ ((scaledDissipation) % Int64))
            AllBinary.setRange(this, (((value * Int64(9))) % Int32) ÷ Int32(10))
        end
        nothing
end

function newWeaponProperties(reloadTime, targetingTime, speed, damage, dissipation)
    this = WeaponProperties()
    initWeaponProperties(this, reloadTime, targetingTime, speed, damage, dissipation)
    this
end


function setReloadTime(this::WeaponProperties, reloadTime)
        this.reloadTime = reloadTime
        nothing
end


function getReloadTime(this::WeaponProperties)
        return this.reloadTime
end


function setTargetingTime(this::WeaponProperties, targetingTime)
        this.targetingTime = targetingTime
        nothing
end


function getTargetingTime(this::WeaponProperties)
        return this.targetingTime
end


function getSpeed(this::WeaponProperties)
        return this.speed
end


function setSpeed(this::WeaponProperties, speed)
        this.speed = speed
        nothing
end


function getDamageI(this::WeaponProperties, range)
        return AllBinary.getDamage(this) - ((AllBinary.getDissipation(this) * range) / AllBinary.getScaled(this.speed))
end


function toStringArray(this::WeaponProperties)
        local index::Int32 = Int32(0)
        local stringArray = jNewArray(Any, Int32(3), nothing)
        local stringBuffer = newStringMaker()
        stringArray[(let old = index; index += Int32(1); old end) + 1] = AllBinary.toString(AllBinary.appendint(AllBinary.append(stringBuffer, staticGet_DAMAGE(WeaponProperties)), ((AllBinary.getDamage(this)) % Int32)))
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        stringArray[(let old = index; index += Int32(1); old end) + 1] = AllBinary.toString(AllBinary.appendint(AllBinary.append(stringBuffer, staticGet_RANGE(WeaponProperties)), ((AllBinary.getRange(this)) % Int32)))
        AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
        stringArray[(let old = index; index += Int32(1); old end) + 1] = AllBinary.toString(AllBinary.appendlong(AllBinary.append(stringBuffer, staticGet_RELOAD(WeaponProperties)), AllBinary.getReloadTime(this)))
        return stringArray
end


function toString(this::WeaponProperties)
        local stringBuffer = newStringMaker()
        AllBinary.appendint(AllBinary.append(stringBuffer, staticGet_DAMAGE(WeaponProperties)), ((AllBinary.getDamage(this)) % Int32))
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.appendint(AllBinary.append(stringBuffer, staticGet_RANGE(WeaponProperties)), ((AllBinary.getRange(this)) % Int32))
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.appendlong(AllBinary.append(stringBuffer, staticGet_RELOAD(WeaponProperties)), AllBinary.getReloadTime(this))
        return AllBinary.toString(stringBuffer)
end

