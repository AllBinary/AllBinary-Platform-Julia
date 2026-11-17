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
# package org.allbinary.game.ag.layer.weapon.mine

# extends SimpleWeaponLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MineLayer <: JObject
    viewPositionEventHandler::Any
    MineLayer() = new()
end

const MineLayer_NAMEValue = Ref{Any}(nothing)
const MineLayer_NAMESet = Ref(false)
function staticGet_NAME(::Type{MineLayer})
    if !MineLayer_NAMESet[]
        MineLayer_NAMESet[] = true
        MineLayer_NAMEValue[] = "MineLayer"
    end
    MineLayer_NAMEValue[]
end
function staticSet_NAME(::Type{MineLayer}, value)
    MineLayer_NAMESet[] = true
    MineLayer_NAMEValue[] = value
end

function initFieldsMineLayer(this::MineLayer)
    this.viewPositionEventHandler = nothing
    this.viewPositionEventHandler = AllBinary.getInstance(ViewPositionEventHandler)
    nothing
end


function initMineLayer(this::MineLayer, viewPosition)
        initSimpleWeaponLayer(this, staticGet_NAME(MineLayer), staticGet_REMOTE_INFO(RemoteInfo), -Int32(1), AllBinary.getMovmentInstance(AllBinary.getInstance(NoMovementFactory)), AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), AllBinary.getInstance(MineWeaponResources).RESOURCE), Int32(0)), AllBinary.createDestroyed(SimpleWeaponLayer), newRectangle(AllBinary.getInstance(PointFactory).ZERO_ZERO, Int32(10), Int32(10)), viewPosition)
        initFieldsMineLayer(this)
        nothing
end

function newMineLayer(viewPosition)
    this = MineLayer()
    initMineLayer(this, viewPosition)
    this
end


function initXYZ(this::MineLayer, x, y, z)
        AllBinary.setPosition(this, x + Int32(5), y + Int32(5), z)
        AllBinary.addListener(this.viewPositionEventHandler, (this))
        AllBinary.add(AllBinary.getInstance(SecondaryPlayerQueueFactory), AllBinary.getInstance(DropWeaponSound))
        nothing
end


function damage(this::MineLayer, damage, damageType)
        this.totalDamage = AllBinary.getInitDamage(this) + Int32(1)
        nothing
end


function getDamage(this::MineLayer, damageType)
        AllBinary.getDamage(this, damageType)
        return AllBinary.getInitDamage(this)
end


function setDestroyed(this::MineLayer, destroyed)
        AllBinary.setDestroyed(this, destroyed)
        if AllBinary.isDestroyed(this)
            AllBinary.removeListener(this.viewPositionEventHandler, this)
        end
        nothing
end

