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

# extends AllBinaryLayerCircularPool: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct WeaponLayerCircularPool <: JObject
    WeaponLayerCircularPool() = new()
end


function initFieldsWeaponLayerCircularPool(this::WeaponLayerCircularPool)
    nothing
end


function initWeaponLayerCircularPool(this::WeaponLayerCircularPool)
        initAllBinaryLayerCircularPool(this)
        initFieldsWeaponLayerCircularPool(this)
        nothing
        nothing
end

function newWeaponLayerCircularPool()
    this = WeaponLayerCircularPool()
    initWeaponLayerCircularPool(this)
    this
end


function getInstanceWeaponLayer(this::WeaponLayerCircularPool, sourceLayerInterface, x, y, z, angle, otherAngle, weaponProperties, scoreable)
        local weaponLayer = (AllBinary.getNextInstance(this))
        AllBinary.initXYZ(weaponLayer, x, y, z)
        AllBinary.init(weaponLayer, sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable)
        return weaponLayer
end

