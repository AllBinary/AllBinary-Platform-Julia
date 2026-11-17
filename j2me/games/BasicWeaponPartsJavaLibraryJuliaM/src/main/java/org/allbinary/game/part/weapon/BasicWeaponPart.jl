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

mutable struct BasicWeaponPart <: JObject
    animationInterface::Any
    ownerLayerInterface::Any
    weaponProperties::Any
    scoreableInterface::Any
    relativeRelationship::Any
    BasicWeaponPart() = new()
end

const BasicWeaponPart_NULL_BASIC_WEAPON_PARTValue = Ref{Any}(nothing)
const BasicWeaponPart_NULL_BASIC_WEAPON_PARTSet = Ref(false)
function staticGet_NULL_BASIC_WEAPON_PART(::Type{BasicWeaponPart})
    if !BasicWeaponPart_NULL_BASIC_WEAPON_PARTSet[]
        BasicWeaponPart_NULL_BASIC_WEAPON_PARTSet[] = true
        BasicWeaponPart_NULL_BASIC_WEAPON_PARTValue[] = AllBinary.createBasicWeaponPart(BasicWeaponPart, AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0)))
    end
    BasicWeaponPart_NULL_BASIC_WEAPON_PARTValue[]
end
function staticSet_NULL_BASIC_WEAPON_PART(::Type{BasicWeaponPart}, value)
    BasicWeaponPart_NULL_BASIC_WEAPON_PARTSet[] = true
    BasicWeaponPart_NULL_BASIC_WEAPON_PARTValue[] = value
end

function initFieldsBasicWeaponPart(this::BasicWeaponPart)
    this.animationInterface = nothing
    this.ownerLayerInterface = nothing
    this.weaponProperties = nothing
    this.scoreableInterface = nothing
    this.relativeRelationship = nothing
    this.animationInterface = AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
    this.ownerLayerInterface = staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer)
    this.weaponProperties = staticGet_NULL_WEAPON_PROPERTIES(WeaponProperties)
    this.scoreableInterface = AllBinary.getInstance(NoScoreable)
    this.relativeRelationship = staticGet_NULL_RELATIVE_RELATIONSHIP(RelativeRelationship)
    nothing
end


function createBasicWeaponPart(::Type{BasicWeaponPart}, animationInterface)
        return newBasicWeaponPart(animationInterface, staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer), staticGet_NULL_WEAPON_PROPERTIES(WeaponProperties), AllBinary.getInstance(NoScoreable), staticGet_NULL_RELATIVE_RELATIONSHIP(RelativeRelationship))
end


function initBasicWeaponPart(this::BasicWeaponPart, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        initFieldsBasicWeaponPart(this)
        AllBinary.init(this, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        AllBinary.setAnimationInterface(this, animationInterface)
        nothing
end

function newBasicWeaponPart(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
    this = BasicWeaponPart()
    initBasicWeaponPart(this, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
    this
end


function init(this::BasicWeaponPart, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        AllBinary.setOwnerLayerInterface(this, sourceLayerInterface)
        AllBinary.setWeaponProperties(this, weaponProperties)
        this.scoreableInterface = scoreableInterface
        this.relativeRelationship = relativeRelationship
        nothing
end


function process(this::BasicWeaponPart, allbinaryLayerManager, angle, otherAngle)
        AllBinary.processScore(this, allbinaryLayerManager, angle, otherAngle, AllBinary.getWeaponProperties(this), this.scoreableInterface)
        nothing
end


function processScore(this::BasicWeaponPart, allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        throw(jNewException("Exception", AllBinary.getInstance(CommonStrings).NOT_IMPLEMENTED))
        nothing
end


function getOwnerLayerInterface(this::BasicWeaponPart)
        return this.ownerLayerInterface
end


function setOwnerLayerInterface(this::BasicWeaponPart, ownerLayerInterface)
        this.ownerLayerInterface = ownerLayerInterface
        nothing
end


function getAnimationInterface(this::BasicWeaponPart)
        return this.animationInterface
end


function setAnimationInterface(this::BasicWeaponPart, animationInterface)
        this.animationInterface = animationInterface
        nothing
end


function paint(this::BasicWeaponPart, graphics)
        local viewPosition = AllBinary.getViewPosition(AllBinary.getOwnerLayerInterface(this))
        local viewX::Int32 = AllBinary.getX(viewPosition)
        local viewY::Int32 = AllBinary.getY(viewPosition)
        AllBinary.paintXY(this.animationInterface, graphics, viewX, viewY)
        nothing
end


function paintThreed(this::BasicWeaponPart, graphics)
        nothing
        nothing
end


function getWeaponProperties(this::BasicWeaponPart)
        return this.weaponProperties
end


function setWeaponProperties(this::BasicWeaponPart, weaponProperties)
        this.weaponProperties = weaponProperties
        nothing
end

