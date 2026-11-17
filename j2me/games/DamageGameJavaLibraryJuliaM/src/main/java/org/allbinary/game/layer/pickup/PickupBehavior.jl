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
# package org.allbinary.game.layer.pickup

mutable struct PickupBehavior <: JObject
    logUtil::Any
    countedIndex::Int32
    ownerLayerInterface::Any
    PickupBehavior() = new()
end

const PickupBehavior_NULL_PICKUP_BEHAVIORValue = Ref{Any}(nothing)
const PickupBehavior_NULL_PICKUP_BEHAVIORSet = Ref(false)
function staticGet_NULL_PICKUP_BEHAVIOR(::Type{PickupBehavior})
    if !PickupBehavior_NULL_PICKUP_BEHAVIORSet[]
        PickupBehavior_NULL_PICKUP_BEHAVIORSet[] = true
        PickupBehavior_NULL_PICKUP_BEHAVIORValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    PickupBehavior_NULL_PICKUP_BEHAVIORValue[]
end
function staticSet_NULL_PICKUP_BEHAVIOR(::Type{PickupBehavior}, value)
    PickupBehavior_NULL_PICKUP_BEHAVIORSet[] = true
    PickupBehavior_NULL_PICKUP_BEHAVIORValue[] = value
end

function initFieldsPickupBehavior(this::PickupBehavior)
    this.logUtil = nothing
    this.countedIndex = Int32(0)
    this.ownerLayerInterface = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    
    nothing
end


function getNullInstance(::Type{PickupBehavior})
        if staticGet_NULL_PICKUP_BEHAVIOR(PickupBehavior) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_PICKUP_BEHAVIOR(PickupBehavior, newPickupBehavior(AllBinary.getNullInstance(CollidableCompositeLayer), Int32(0)))
        end
        return (staticGet_NULL_PICKUP_BEHAVIOR(PickupBehavior))
end


function initPickupBehavior(this::PickupBehavior, ownerLayerInterface, countedIndex)
        initFieldsPickupBehavior(this)
        this.ownerLayerInterface = ownerLayerInterface
        this.countedIndex = countedIndex
        nothing
end

function newPickupBehavior(ownerLayerInterface, countedIndex)
    this = PickupBehavior()
    initPickupBehavior(this, ownerLayerInterface, countedIndex)
    this
end


function doPickup(this::PickupBehavior, pickupProcessorInterface)
        try
            local healthInterfaceCompositeInterface = (this.ownerLayerInterface)
            if AllBinary.isAlive(AllBinary.getHealthInterface(healthInterfaceCompositeInterface))
                AllBinary.process(pickupProcessorInterface, this.ownerLayerInterface)
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, "doPickup", e)
        end
        nothing
end


function doPickupLayer(this::PickupBehavior, pickupLayerInterface)
        try
            local pickedUpLayerInterfaceFactoryInterface = AllBinary.getPickedUpLayerInterfaceFactoryInterface(pickupLayerInterface)
            local pickedUpLayerType = AllBinary.getPickedUpLayerType(pickedUpLayerInterfaceFactoryInterface)
            local pickedUpLayerTypeFactory = AllBinary.getInstance(PickedUpLayerTypeFactory)
            if pickedUpLayerType === pickedUpLayerTypeFactory.BEAM || pickedUpLayerType === pickedUpLayerTypeFactory.MINE || pickedUpLayerType === pickedUpLayerTypeFactory.PROJECTILE || pickedUpLayerType === pickedUpLayerTypeFactory.ENHANCEMENT
                AllBinary.add(this, (pickedUpLayerInterfaceFactoryInterface))
            elseif AllBinary.getPickedUpLayerType(pickedUpLayerInterfaceFactoryInterface) == pickedUpLayerTypeFactory.PART
                local collidableDestroyableDamageableLayer = (this.ownerLayerInterface)
                AllBinary.addPart(collidableDestroyableDamageableLayer, pickedUpLayerInterfaceFactoryInterface)
            elseif pickedUpLayerType === pickedUpLayerTypeFactory.NONE
                nothing
            else
                local pickupProcessorInterface = (pickedUpLayerInterfaceFactoryInterface)
                AllBinary.doPickup(this, pickupProcessorInterface)
            end
            AllBinary.setPickedUp(pickupLayerInterface)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.putOE(PreLogUtil, commonStrings.EXCEPTION, this, "doPickup", e)
        end
        nothing
end


function add(this::PickupBehavior, countedPickedUpLayerInterfaceFactoryInterface)
        local partIndex::Int32 = AllBinary.getId(countedPickedUpLayerInterfaceFactoryInterface) + this.countedIndex
        AllBinary.addAt(this, countedPickedUpLayerInterfaceFactoryInterface, partIndex)
        nothing
end


function addAt(this::PickupBehavior, countedPickedUpLayerInterfaceFactoryInterface, partIndex)
        local collidableDestroyableDamageableLayer = (this.ownerLayerInterface)
        local countedLayerInterfaceFactory = (AllBinary.getPartInterfaceArray(collidableDestroyableDamageableLayer)[partIndex + 1])
        AllBinary.setTotal(countedLayerInterfaceFactory, AllBinary.getTotal(countedLayerInterfaceFactory) + AllBinary.getTotal(countedPickedUpLayerInterfaceFactoryInterface))
        nothing
end


function getFirstAvailableCountedLayerInterfaceFactory(this::PickupBehavior, pickedUpLayerTypeArray)
        local collidableDestroyableDamageableLayer = (this.ownerLayerInterface)
        local partInterfaceArray = AllBinary.getPartInterfaceArray(collidableDestroyableDamageableLayer)
        local size::Int32 = Int32(Base.length(partInterfaceArray))
        local nextCountedLayerInterfaceFactory = nothing
        local countedPickedUpLayerInterfaceFactory = nothing
        let
            local index::Int32 = this.countedIndex
            while index < size
            try
            nextCountedLayerInterfaceFactory = (AllBinary.getPartInterfaceArray(collidableDestroyableDamageableLayer)[index + 1])
            countedPickedUpLayerInterfaceFactory = AllBinary.getCountedPickedUpLayerInterfaceFactory(nextCountedLayerInterfaceFactory)
            let
                local index2::Int32 = Int32(Base.length(pickedUpLayerTypeArray))
                while (index2 -= Int32(1)) >= Int32(0)
                try
                if AllBinary.getPickedUpLayerType(countedPickedUpLayerInterfaceFactory) == pickedUpLayerTypeArray[index2 + 1]
                    if AllBinary.getTotal(nextCountedLayerInterfaceFactory) > Int32(0)
                        return nextCountedLayerInterfaceFactory
                    end
                end
                finally
                end
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        return staticGet_NULL_COUNTED_LAYER_INTERFACE_FACTORY(CountedLayerInterfaceFactoryPart)
end


function getCountedLayerInterfaceFactoryForSlot(this::PickupBehavior, slotIndex)
        local currentSlot::Int32 = Int32(0)
        local collidableDestroyableDamageableLayer = (this.ownerLayerInterface)
        local partInterfaceArray = AllBinary.getPartInterfaceArray(collidableDestroyableDamageableLayer)
        local size::Int32 = Int32(Base.length(partInterfaceArray))
        local nextCountedLayerInterfaceFactory = nothing
        let
            local index::Int32 = this.countedIndex
            while index < size
            try
            nextCountedLayerInterfaceFactory = (AllBinary.getPartInterfaceArray(collidableDestroyableDamageableLayer)[index + 1])
            if AllBinary.getTotal(nextCountedLayerInterfaceFactory) > Int32(0)
                if currentSlot == slotIndex
                    return nextCountedLayerInterfaceFactory
                else
                    currentSlot += Int32(1)
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        return staticGet_NULL_COUNTED_LAYER_INTERFACE_FACTORY(CountedLayerInterfaceFactoryPart)
end


function getCountedIndex(this::PickupBehavior)
        return this.countedIndex
end

