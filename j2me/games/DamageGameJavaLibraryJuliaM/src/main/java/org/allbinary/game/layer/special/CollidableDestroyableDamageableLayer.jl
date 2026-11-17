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
# package org.allbinary.game.layer.special

# extends CollidableCompositeLayer: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CollidableDestroyableDamageableLayer <: JObject
    groupInterface::Any
    readyForExplosion::Bool
    initWidth::Int32
    initHeight::Int32
    initX::Int32
    initY::Int32
    initZ::Int32
    partInterfaceArrayP::Any
    pickupBehavior::Any
    allBinaryGameLayerManagerP::Any
    isDraggable::Bool
    isDragged::Bool
    isDropped::Bool
    CollidableDestroyableDamageableLayer() = new()
end

const CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue = Ref{Any}(nothing)
const CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet = Ref(false)
function staticGet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(::Type{CollidableDestroyableDamageableLayer})
    if !CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet[]
        CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet[] = true
        CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue[]
end
function staticSet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(::Type{CollidableDestroyableDamageableLayer}, value)
    CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERSet[] = true
    CollidableDestroyableDamageableLayer_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYERValue[] = value
end
const CollidableDestroyableDamageableLayer_READYFOREXPLOSIONValue = Ref{Any}(nothing)
const CollidableDestroyableDamageableLayer_READYFOREXPLOSIONSet = Ref(false)
function staticGet_READYFOREXPLOSION(::Type{CollidableDestroyableDamageableLayer})
    if !CollidableDestroyableDamageableLayer_READYFOREXPLOSIONSet[]
        CollidableDestroyableDamageableLayer_READYFOREXPLOSIONSet[] = true
        CollidableDestroyableDamageableLayer_READYFOREXPLOSIONValue[] = "ReadyForExplosion: "
    end
    CollidableDestroyableDamageableLayer_READYFOREXPLOSIONValue[]
end
function staticSet_READYFOREXPLOSION(::Type{CollidableDestroyableDamageableLayer}, value)
    CollidableDestroyableDamageableLayer_READYFOREXPLOSIONSet[] = true
    CollidableDestroyableDamageableLayer_READYFOREXPLOSIONValue[] = value
end

function initFieldsCollidableDestroyableDamageableLayer(this::CollidableDestroyableDamageableLayer)
    this.groupInterface = nothing
    this.readyForExplosion = false
    this.initWidth = Int32(0)
    this.initHeight = Int32(0)
    this.initX = Int32(0)
    this.initY = Int32(0)
    this.initZ = Int32(0)
    this.partInterfaceArrayP = nothing
    this.pickupBehavior = nothing
    this.allBinaryGameLayerManagerP = nothing
    this.isDraggable = false
    this.isDragged = false
    this.isDropped = false
    
    this.readyForExplosion = false
    
    
    this.initX = Int32(0)
    this.initY = Int32(0)
    this.initZ = Int32(0)
    this.partInterfaceArrayP = AllBinary.getZeroArray(PartInterfaceUtil)
    
    this.allBinaryGameLayerManagerP = AllBinary.getNullInstance(AllBinaryGameLayerManager)
    this.isDraggable = false
    this.isDragged = false
    this.isDropped = false
    nothing
end


function getNullInstance(::Type{CollidableDestroyableDamageableLayer})
        if staticGet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(CollidableDestroyableDamageableLayer) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(CollidableDestroyableDamageableLayer, newCollidableDestroyableDamageableLayer(AllBinary.getInstance(BasicGroupFactory).NONE_ARRAY, AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SINGLETON(RectangleFactory), staticGet_NULL_VIEW_POSITION(ViewPositionBase)))
        end
        return (staticGet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(CollidableDestroyableDamageableLayer))
end


function initCollidableDestroyableDamageableLayer(this::CollidableDestroyableDamageableLayer, groupInterface, name, layerInfo, viewPosition)
        initCollidableCompositeLayer(this, name, layerInfo, viewPosition, AllBinary.getInstance(CollidableNeverCollideBehaviorFactory))
        initFieldsCollidableDestroyableDamageableLayer(this)
        this.initWidth = AllBinary.getWidth(layerInfo)
        this.initHeight = AllBinary.getHeight(layerInfo)
        this.groupInterface = groupInterface
        this.pickupBehavior = AllBinary.getNullInstance(PickupBehavior)
        nothing
end

function newCollidableDestroyableDamageableLayer(groupInterface, name, layerInfo, viewPosition)
    this = CollidableDestroyableDamageableLayer()
    initCollidableDestroyableDamageableLayer(this, groupInterface, name, layerInfo, viewPosition)
    this
end


function initPosition(this::CollidableDestroyableDamageableLayer)
        AllBinary.setPosition(this, this.initX, this.initY, this.initZ)
        nothing
end


function initPositionXYZ(this::CollidableDestroyableDamageableLayer, x, y, z)
        this.initX = x
        this.initY = y
        this.initZ = z
        nothing
end


function paint(this::CollidableDestroyableDamageableLayer, graphics)
        AllBinary.paint(this, graphics)
        nothing
end


function damage(this::CollidableDestroyableDamageableLayer, damage, damageType)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function getDamage(this::CollidableDestroyableDamageableLayer, damageType)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function isDestroyed(this::CollidableDestroyableDamageableLayer)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function getGroupInterface(this::CollidableDestroyableDamageableLayer)
        return this.groupInterface
end


function setGroupInterface(this::CollidableDestroyableDamageableLayer, teamInterface)
        this.groupInterface = teamInterface
        nothing
end


function setAllBinaryGameLayerManager(this::CollidableDestroyableDamageableLayer, allBinaryGameLayerManager)
        this.allBinaryGameLayerManagerP = allBinaryGameLayerManager
        if this.allBinaryGameLayerManagerP === nothing
            throw(jNewException("RuntimeException", ""))
        end
        nothing
end


function isReadyForExplosion(this::CollidableDestroyableDamageableLayer)
        return this.readyForExplosion
end


function setReadyForExplosion(this::CollidableDestroyableDamageableLayer, isReadyForExplosion)
        this.readyForExplosion = isReadyForExplosion
        nothing
end


function getInitWidth(this::CollidableDestroyableDamageableLayer)
        return this.initWidth
end


function getInitHeight(this::CollidableDestroyableDamageableLayer)
        return this.initHeight
end


function getInitX(this::CollidableDestroyableDamageableLayer)
        return this.initX
end


function getInitY(this::CollidableDestroyableDamageableLayer)
        return this.initY
end


function up(this::CollidableDestroyableDamageableLayer)
        nothing
        nothing
end


function down(this::CollidableDestroyableDamageableLayer)
        nothing
        nothing
end


function right(this::CollidableDestroyableDamageableLayer)
        nothing
        nothing
end


function left(this::CollidableDestroyableDamageableLayer)
        nothing
        nothing
end


function strafeLeft(this::CollidableDestroyableDamageableLayer)
        nothing
        nothing
end


function strafeRight(this::CollidableDestroyableDamageableLayer)
        nothing
        nothing
end


function fire(this::CollidableDestroyableDamageableLayer, layerManager, gameKeyEvent)
        nothing
        nothing
end


function special1(this::CollidableDestroyableDamageableLayer, layerManager, gameKeyEvent)
        nothing
        nothing
end


function special2(this::CollidableDestroyableDamageableLayer, layerManager, gameKeyEvent)
        nothing
        nothing
end


function special3(this::CollidableDestroyableDamageableLayer, layerManager, gameKeyEvent)
        nothing
        nothing
end


function special4(this::CollidableDestroyableDamageableLayer, layerManager, gameKeyEvent)
        nothing
        nothing
end


function special5(this::CollidableDestroyableDamageableLayer, layerManager, gameKeyEvent)
        nothing
        nothing
end


function upAnalog(this::CollidableDestroyableDamageableLayer, yAnalogValue)
        nothing
        nothing
end


function downAnalog(this::CollidableDestroyableDamageableLayer, yAnalogValue)
        nothing
        nothing
end


function rightAnalog(this::CollidableDestroyableDamageableLayer, xAnalogValue)
        nothing
        nothing
end


function leftAnalog(this::CollidableDestroyableDamageableLayer, xAnalogValue)
        nothing
        nothing
end


function rightTrigger(this::CollidableDestroyableDamageableLayer, layerManager, gameKeyEvent, xAnalogValue)
        nothing
        nothing
end


function leftTrigger(this::CollidableDestroyableDamageableLayer, layerManager, gameKeyEvent, xAnalogValue)
        nothing
        nothing
end


function onDestroyed(this::CollidableDestroyableDamageableLayer, destroyedEvent)
        nothing
        nothing
end


function getPickupBehavior(this::CollidableDestroyableDamageableLayer)
        return this.pickupBehavior
end


function setPickupBehavior(this::CollidableDestroyableDamageableLayer, pickupBehavior)
        this.pickupBehavior = pickupBehavior
        nothing
end


function addPart(this::CollidableDestroyableDamageableLayer, pickedUpLayerInterfaceFactoryInterface)
        nothing
        nothing
end


function setPartInterfaceArray(this::CollidableDestroyableDamageableLayer, partInterfaceArray)
        this.partInterfaceArrayP = partInterfaceArray
        nothing
end


function getPartInterfaceArray(this::CollidableDestroyableDamageableLayer)
        return this.partInterfaceArrayP
end


function toStringAppend(this::CollidableDestroyableDamageableLayer, stringBuffer)
        local commonSeps = AllBinary.getInstance(CommonSeps)
        local positionStrings = AllBinary.getInstance(PositionStrings)
        AllBinary.toStringAppend(this, stringBuffer)
        AllBinary.append(stringBuffer, commonSeps.NEW_LINE)
        local groupInterfaceArray = AllBinary.getGroupInterface(this)
        local size::Int32 = Int32(Base.length(groupInterfaceArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.append(stringBuffer, AllBinary.toString(groupInterfaceArray[index + 1]))
            AllBinary.append(stringBuffer, commonSeps.COMMA)
            finally
                index += Int32(1)
            end
            end
        end
        local pickupBehavior = AllBinary.getPickupBehavior(this)
        if pickupBehavior !== nothing
            AllBinary.append(stringBuffer, commonSeps.NEW_LINE)
            AllBinary.append(stringBuffer, AllBinary.toString(pickupBehavior))
        end
        AllBinary.append(stringBuffer, commonSeps.NEW_LINE)
        AllBinary.append(stringBuffer, staticGet_READYFOREXPLOSION(CollidableDestroyableDamageableLayer))
        AllBinary.appendboolean(stringBuffer, this.readyForExplosion)
        AllBinary.append(stringBuffer, commonSeps.NEW_LINE)
        AllBinary.append(stringBuffer, this.commonStrings.INIT)
        AllBinary.append(stringBuffer, commonSeps.SPACE)
        AllBinary.append(stringBuffer, positionStrings.X_LABEL)
        AllBinary.appendint(stringBuffer, this.initX)
        AllBinary.append(stringBuffer, positionStrings.Y_LABEL)
        AllBinary.appendint(stringBuffer, this.initX)
        AllBinary.append(stringBuffer, positionStrings.Z_LABEL)
        AllBinary.appendint(stringBuffer, this.initZ)
        nothing
end


function toString(this::CollidableDestroyableDamageableLayer)
        local stringBuffer = newStringMaker()
        AllBinary.toStringAppend(this, stringBuffer)
        return AllBinary.toString(stringBuffer)
end

