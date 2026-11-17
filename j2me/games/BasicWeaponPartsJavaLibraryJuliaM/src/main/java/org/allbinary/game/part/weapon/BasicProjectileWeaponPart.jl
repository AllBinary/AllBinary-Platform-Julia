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
mutable struct BasicProjectileWeaponPart <: JObject
    weaponLayerCircularStaticPool::Any
    BasicProjectileWeaponPart() = new()
end


function initFieldsBasicProjectileWeaponPart(this::BasicProjectileWeaponPart)
    this.weaponLayerCircularStaticPool = nothing
    
    nothing
end


function createBasicProjectileWeaponPart(::Type{BasicProjectileWeaponPart}, animationInterface, weaponLayerCircularStaticPool)
        return newBasicProjectileWeaponPart(animationInterface, staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer), weaponLayerCircularStaticPool, staticGet_NULL_WEAPON_PROPERTIES(WeaponProperties), AllBinary.getInstance(NoScoreable), staticGet_NULL_RELATIVE_RELATIONSHIP(RelativeRelationship))
end


function initBasicProjectileWeaponPart(this::BasicProjectileWeaponPart, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, weaponProperties, scoreableInterface, relativeRelationship)
        initBasicWeaponPart(this, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initFieldsBasicProjectileWeaponPart(this)
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
        nothing
end

function newBasicProjectileWeaponPart(animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, weaponProperties, scoreableInterface, relativeRelationship)
    this = BasicProjectileWeaponPart()
    initBasicProjectileWeaponPart(this, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, weaponProperties, scoreableInterface, relativeRelationship)
    this
end


function processScore(this::BasicProjectileWeaponPart, allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        local weaponLayer = AllBinary.getInstanceWeaponLayer(this.weaponLayerCircularStaticPool, AllBinary.getOwnerLayerInterface(this), AllBinary.getX(this.relativeRelationship), AllBinary.getY(this.relativeRelationship), AllBinary.getZ(this.relativeRelationship), ((angle) % Int32), ((otherAngle) % Int32), weaponProperties, scoreableInterface)
        AllBinary.append(allbinaryLayerManager, weaponLayer)
        nothing
end

