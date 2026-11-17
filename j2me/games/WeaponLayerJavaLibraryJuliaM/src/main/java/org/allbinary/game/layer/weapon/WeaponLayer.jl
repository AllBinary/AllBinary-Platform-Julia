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
# package org.allbinary.game.layer.weapon

# extends MultiPlayerGameLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct WeaponLayer <: JObject
    animationInterface::Any
    initAnimationInterface::Any
    destroyedAnimationInterface::Any
    sourceLayerInterface::Any
    totalDamage::Int32
    initDamage::Int32
    destroyed::Bool
    scoreableInterface::Any
    movement::Any
    weaponProperties::Any
    multiPlayerType::Int32
    collidableWeaponBehavior::Any
    WeaponLayer() = new()
end


function initFieldsWeaponLayer(this::WeaponLayer)
    this.animationInterface = nothing
    this.initAnimationInterface = nothing
    this.destroyedAnimationInterface = nothing
    this.sourceLayerInterface = nothing
    this.totalDamage = Int32(0)
    this.initDamage = Int32(0)
    this.destroyed = false
    this.scoreableInterface = nothing
    this.movement = nothing
    this.weaponProperties = nothing
    this.multiPlayerType = Int32(0)
    this.collidableWeaponBehavior = nothing
    this.animationInterface = AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
    
    
    this.sourceLayerInterface = staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer)
    this.totalDamage = Int32(0)
    this.initDamage = Int32(0)
    this.destroyed = true
    this.scoreableInterface = AllBinary.getInstance(NoScoreable)
    
    this.weaponProperties = staticGet_NULL_WEAPON_PROPERTIES(WeaponProperties)
    
    this.collidableWeaponBehavior = AllBinary.getNullInstance(CollidableWeaponBehavior)
    nothing
end


function initWeaponLayer(this::WeaponLayer, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        initMultiPlayerGameLayer(this, remoteInfo, AllBinary.getInstance(BasicGroupFactory).NONE_ARRAY, name, rectangle, viewPosition)
        initFieldsWeaponLayer(this)
        this.initAnimationInterface = animationInterface
        AllBinary.setAnimationInterface(this, animationInterface)
        this.destroyedAnimationInterface = destroyedAnimationInterface
        this.movement = movement
        this.multiPlayerType = multiPlayerType
        nothing
end

function newWeaponLayer(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
    this = WeaponLayer()
    initWeaponLayer(this, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
    this
end


function setCollidableInferface(this::WeaponLayer, collidableInferface)
        AllBinary.setCollidableInferface(this, collidableInferface)
        this.collidableWeaponBehavior = (AllBinary.getCollidableInferface(this))
        nothing
end


function initXYZ(this::WeaponLayer, x, y, z)
        this.x = x
        this.y = y
        this.z = z
        nothing
end


function init(this::WeaponLayer, sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable)
        AllBinary.setWeaponPropertiesP(this, weaponProperties)
        AllBinary.setReadyForExplosion(this, false)
        AllBinary.setAnimationInterface(this, AllBinary.getInitAnimationInterfaceP(this))
        AllBinary.setOwnerLayerInterface(this, sourceLayerInterface)
        AllBinary.init(this.collidableWeaponBehavior, sourceLayerInterface)
        AllBinary.setGroupInterfaces(this)
        if scoreable !== nothing
            this.scoreableInterface = scoreable
        end
        this.totalDamage = Int32(0)
        this.initDamage = AllBinary.getDamage(weaponProperties)
        AllBinary.setDestroyed(this, false)
        AllBinary.init(this.movement, AllBinary.getSpeed(weaponProperties), angle, otherAngle)
        nothing
end


function setGroupInterfaces(this::WeaponLayer)
        local basicGroupFactory = AllBinary.getInstance(BasicGroupFactory)
        if AllBinary.getGroupInterface(this.sourceLayerInterface)[Int32(0) + 1] == basicGroupFactory.ENEMY
            AllBinary.setGroupInterface(this, basicGroupFactory.ENEMY_ARRAY)
        else
            AllBinary.setGroupInterface(this, AllBinary.getGroupInterface(this.sourceLayerInterface))
        end
        nothing
end


function processTick(this::WeaponLayer, allBinaryLayerManager)
        if AllBinary.isExhausted(this) && !AllBinary.isDestroyed(this)
            if AllBinary.isReadyForExplosion(this)
                local indexedAnimationInterface = (AllBinary.getAnimationInterface(this))
                local currentFrame::Int32 = AllBinary.getFrame(indexedAnimationInterface)
                if currentFrame < AllBinary.getAnimationSize(indexedAnimationInterface) - Int32(1)
                    AllBinary.nextFrame(indexedAnimationInterface)
                else
                    AllBinary.setDestroyed(this, true)
                end
            else
                local collidableWeaponBehavior = (AllBinary.getCollidableInferface(this))
                if AllBinary.isCollided(collidableWeaponBehavior)
                    AllBinary.setAnimationInterface(this, this.destroyedAnimationInterface)
                    AllBinary.stop(AllBinary.getMovement(this))
                    AllBinary.setReadyForExplosion(this, true)
                else
                    AllBinary.setDestroyed(this, true)
                end
            end
        end
        AllBinary.process(this.movement, this)
        this.totalDamage += AllBinary.getDissipation(this.weaponProperties)
        nothing
end


function isDestroyed(this::WeaponLayer)
        return this.destroyed
end


function damage(this::WeaponLayer, damage, damageType)
        this.totalDamage += damage * damage
        nothing
end


function givePoints(this::WeaponLayer, total)
        AllBinary.addPoints(this.scoreableInterface, AllBinary.getCompetitionValue(AllBinary.getInstance(GameConfigurationUtil)) * total)
        nothing
end


function isExhausted(this::WeaponLayer)
        if this.totalDamage > AllBinary.getInitDamage(this) || this.totalDamage < Int32(0)
            return true
        else
            return false
        end
end


function getDamage(this::WeaponLayer, damageType)
        if !AllBinary.isExhausted(this)
            local total::Int32 = AllBinary.getInitDamage(this) - this.totalDamage
            AllBinary.givePoints(this, total)
            return total
        end
        return Int32(0)
end


function setDestroyed(this::WeaponLayer, destroyed)
        this.destroyed = destroyed
        if AllBinary.isDestroyed(this)
            this.scoreableInterface = AllBinary.getInstance(NoScoreable)
            AllBinary.add(AllBinary.getInstance(DestroyedLayerProcessor), this)
        end
        nothing
end


function getInitDamage(this::WeaponLayer)
        return this.initDamage
end


function setAnimationInterface(this::WeaponLayer, animationInterface)
        this.animationInterface = animationInterface
        nothing
end


function getAnimationInterface(this::WeaponLayer)
        return this.animationInterface
end


function getInitAnimationInterfaceP(this::WeaponLayer)
        return this.initAnimationInterface
end


function setInitAnimationInterfaceP(this::WeaponLayer, initAnimationInterface)
        this.initAnimationInterface = initAnimationInterface
        nothing
end


function getDestroyedAnimationInterface(this::WeaponLayer)
        return this.destroyedAnimationInterface
end


function getOwnerLayerInterface(this::WeaponLayer)
        return this.sourceLayerInterface
end


function setOwnerLayerInterface(this::WeaponLayer, sourceLayerInterface)
        this.sourceLayerInterface = sourceLayerInterface
        nothing
end


function paint(this::WeaponLayer, graphics)
        local viewPosition = AllBinary.getViewPosition(this)
        AllBinary.paintXY(this.animationInterface, graphics, AllBinary.getX(viewPosition) - AllBinary.getHalfWidth(this), AllBinary.getY(viewPosition) - AllBinary.getHalfHeight(this))
        nothing
end


function paintThreed(this::WeaponLayer, graphics)
        local viewPosition = AllBinary.getViewPosition(this)
        AllBinary.paintThreedXYZ(this.animationInterface, graphics, AllBinary.getX(viewPosition) - AllBinary.getHalfWidth(this), AllBinary.getY(viewPosition) - AllBinary.getHalfHeight(this), AllBinary.getZ(viewPosition) - AllBinary.getHalfDepth(this))
        nothing
end


function getMovement(this::WeaponLayer)
        return this.movement
end


function setMovement(this::WeaponLayer, movement)
        this.movement = movement
        nothing
end


function getType(this::WeaponLayer)
        return AllBinary.getStaticType(WeaponLayer)
end


function getStaticType(::Type{WeaponLayer})
        return Int32(0)
end


function getMultiPlayerType(this::WeaponLayer)
        return this.multiPlayerType
end


function setWeaponPropertiesP(this::WeaponLayer, weaponProperties)
        this.weaponProperties = weaponProperties
        nothing
end


function getWeaponPropertiesP(this::WeaponLayer)
        return this.weaponProperties
end


function implmentsTickableInterface(this::WeaponLayer)
        return true
end


function set(this::WeaponLayer, gl)
        AllBinary.set(this.initAnimationInterface, gl)
        nothing
end

