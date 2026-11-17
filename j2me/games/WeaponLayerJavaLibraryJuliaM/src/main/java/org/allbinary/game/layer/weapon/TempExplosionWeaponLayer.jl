# Generated Code Do Not Modify
# package org.allbinary.game.layer.weapon

# extends SimpleWeaponLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TempExplosionWeaponLayer <: JObject
    weaponProperties::Any
    timeDelayHelper::Any
    TempExplosionWeaponLayer() = new()
end


function initFieldsTempExplosionWeaponLayer(this::TempExplosionWeaponLayer)
    this.weaponProperties = nothing
    this.timeDelayHelper = nothing
    this.weaponProperties = newWeaponProperties(-Int64(1), -Int64(1), Int32(0), Int32(1000), ((Int32(0)) % Int16))
    this.timeDelayHelper = newTimeDelayHelper(Int32(0))
    nothing
end


function initTempExplosionWeaponLayer(this::TempExplosionWeaponLayer, name, movement, animationInterface, rectangle, viewPosition, timeDelay)
        initSimpleWeaponLayer(this, name, staticGet_REMOTE_INFO(RemoteInfo), -Int32(1), movement, animationInterface, AllBinary.createDestroyed(SimpleWeaponLayer), rectangle, viewPosition)
        initFieldsTempExplosionWeaponLayer(this)
        this.timeDelayHelper.delay = timeDelay
        nothing
end

function newTempExplosionWeaponLayer(name, movement, animationInterface, rectangle, viewPosition, timeDelay)
    this = TempExplosionWeaponLayer()
    initTempExplosionWeaponLayer(this, name, movement, animationInterface, rectangle, viewPosition, timeDelay)
    this
end


function processTick(this::TempExplosionWeaponLayer, allBinaryLayerManager)
        if AllBinary.isTime(this.timeDelayHelper, AllBinary.getInstance(GameTickTimeDelayHelperFactory).startTime)
            AllBinary.collide(AllBinary.getCollidableInferface(this), this, this)
            this.totalDamage = AllBinary.getInitDamage(this) + Int32(1)
        end
        AllBinary.processTick(this, allBinaryLayerManager)
        nothing
end

