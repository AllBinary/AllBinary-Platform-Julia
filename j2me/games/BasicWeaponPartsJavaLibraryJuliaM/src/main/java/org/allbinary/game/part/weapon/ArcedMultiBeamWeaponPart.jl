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
# package org.allbinary.game.part.weapon

# extends BasicWeaponPart: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ArcedMultiBeamWeaponPart <: JObject
    weaponLayerCircularStaticPool::Any
    total::Int32
    TOTAL_ANGLE::Int32
    ArcedMultiBeamWeaponPart() = new()
end


function initFieldsArcedMultiBeamWeaponPart(this::ArcedMultiBeamWeaponPart)
    this.weaponLayerCircularStaticPool = nothing
    this.total = Int32(0)
    this.TOTAL_ANGLE = Int32(0)
    
    
    this.TOTAL_ANGLE = ((AllBinary.getInstance(AngleFactory).TOTAL_ANGLE) % Int32)
    nothing
end


function initArcedMultiBeamWeaponPart(this::ArcedMultiBeamWeaponPart, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)
        initBasicWeaponPart(this, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initFieldsArcedMultiBeamWeaponPart(this)
        this.total = total
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
        nothing
end

function newArcedMultiBeamWeaponPart(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)
    this = ArcedMultiBeamWeaponPart()
    initArcedMultiBeamWeaponPart(this, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)
    this
end


function processScore(this::ArcedMultiBeamWeaponPart, allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        local increment::Int16 = ((((this.total - Int32(1)) ÷ this.TOTAL_ANGLE)) % Int16)
        local minAngle::Int16 = (((((angle) % Int32) - ((((increment) % Int32) * this.total) >> Int32(1)))) % Int16)
        local next::Int32 = Int32(0)
        local weaponLayer = nothing
        let
            local index::Int32 = Int32(0)
            while index < this.total
            try
            weaponLayer = AllBinary.getInstanceWeaponLayer(this.weaponLayerCircularStaticPool, AllBinary.getOwnerLayerInterface(this), AllBinary.getX(this.relativeRelationship), AllBinary.getY(this.relativeRelationship), Int32(0), (minAngle + increment), ((otherAngle) % Int32), weaponProperties, scoreableInterface)
            AllBinary.append(allbinaryLayerManager, weaponLayer)
            next += ((increment) % Int32)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

