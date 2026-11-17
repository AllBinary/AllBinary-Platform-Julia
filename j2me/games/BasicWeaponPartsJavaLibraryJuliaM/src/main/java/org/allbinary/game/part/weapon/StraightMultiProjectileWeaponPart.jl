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
mutable struct StraightMultiProjectileWeaponPart <: JObject
    weaponLayerCircularStaticPool::Any
    total::Int32
    noDecimalTrigTable::Any
    StraightMultiProjectileWeaponPart() = new()
end


function initFieldsStraightMultiProjectileWeaponPart(this::StraightMultiProjectileWeaponPart)
    this.weaponLayerCircularStaticPool = nothing
    this.total = Int32(0)
    this.noDecimalTrigTable = nothing
    
    
    this.noDecimalTrigTable = AllBinary.getInstance(NoDecimalTrigTable)
    nothing
end


function createStraightMultiProjectileWeaponPart(::Type{StraightMultiProjectileWeaponPart}, animationInterface, weaponLayerCircularStaticPool)
        return newStraightMultiProjectileWeaponPart(animationInterface, staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer), weaponLayerCircularStaticPool, Int32(2), staticGet_NULL_WEAPON_PROPERTIES(WeaponProperties), AllBinary.getInstance(NoScoreable), staticGet_NULL_RELATIVE_RELATIONSHIP(RelativeRelationship))
end


function initStraightMultiProjectileWeaponPart(this::StraightMultiProjectileWeaponPart, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)
        initBasicWeaponPart(this, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initFieldsStraightMultiProjectileWeaponPart(this)
        this.total = total
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
        nothing
end

function newStraightMultiProjectileWeaponPart(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)
    this = StraightMultiProjectileWeaponPart()
    initStraightMultiProjectileWeaponPart(this, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship)
    this
end


function processScore(this::StraightMultiProjectileWeaponPart, allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        local sourceLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local reducedWidth::Int32 = (AllBinary.getWidth(sourceLayerInterface) * Int32(8) ÷ Int32(10))
        local halfWidth::Int32 = (reducedWidth >> Int32(1))
        local x::Int32 = AllBinary.getX(this.relativeRelationship)
        local y::Int32 = AllBinary.getY(this.relativeRelationship)
        local sine::Int64 = Int64(0)
        local beamX::Int32 = Int32(0)
        local cosine::Int64 = Int64(0)
        local beamY::Int32 = Int32(0)
        local weaponLayer = nothing
        local increment::Int32 = reducedWidth ÷ (this.total - Int32(1))
        local next::Int32 = -halfWidth
        let
            local index::Int32 = Int32(0)
            while index < this.total
            try
            sine = (((next * AllBinary.sin(this.noDecimalTrigTable, ((angle) % Int32)))) % Int64)
            beamX = (((sine ÷ this.noDecimalTrigTable.SCALE)) % Int32)
            cosine = (((next * AllBinary.cos(this.noDecimalTrigTable, ((angle) % Int32)))) % Int64)
            beamY = -(((cosine ÷ this.noDecimalTrigTable.SCALE)) % Int32)
            weaponLayer = AllBinary.getInstanceWeaponLayer(this.weaponLayerCircularStaticPool, sourceLayerInterface, x + beamX, y + beamY, Int32(0), ((angle) % Int32), ((otherAngle) % Int32), weaponProperties, scoreableInterface)
            AllBinary.append(allbinaryLayerManager, weaponLayer)
            next += increment
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

