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
# package org.allbinary.game.ag.ai.scroller

# extends BasicAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasePatrolAI <: JObject
    maxDistance::Any
    currentDistance::Int32
    xTotalDistance::Int32
    lastKeyDirection::Int32
    keyDirection::Int32
    BasePatrolAI() = new()
end

const BasePatrolAI_MAX_DISTANCEValue = Ref{Any}(nothing)
const BasePatrolAI_MAX_DISTANCESet = Ref(false)
function staticGet_MAX_DISTANCE(::Type{BasePatrolAI})
    if !BasePatrolAI_MAX_DISTANCESet[]
        BasePatrolAI_MAX_DISTANCESet[] = true
        BasePatrolAI_MAX_DISTANCEValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(2))
    end
    BasePatrolAI_MAX_DISTANCEValue[]
end
function staticSet_MAX_DISTANCE(::Type{BasePatrolAI}, value)
    BasePatrolAI_MAX_DISTANCESet[] = true
    BasePatrolAI_MAX_DISTANCEValue[] = value
end
const BasePatrolAI_DIRECTION_ARRAYValue = Ref{Any}(nothing)
const BasePatrolAI_DIRECTION_ARRAYSet = Ref(false)
function staticGet_DIRECTION_ARRAY(::Type{BasePatrolAI})
    if !BasePatrolAI_DIRECTION_ARRAYSet[]
        BasePatrolAI_DIRECTION_ARRAYSet[] = true
        BasePatrolAI_DIRECTION_ARRAYValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(3))
    end
    BasePatrolAI_DIRECTION_ARRAYValue[]
end
function staticSet_DIRECTION_ARRAY(::Type{BasePatrolAI}, value)
    BasePatrolAI_DIRECTION_ARRAYSet[] = true
    BasePatrolAI_DIRECTION_ARRAYValue[] = value
end
const BasePatrolAI_FIRING_DISTANCEValue = Ref{Any}(nothing)
const BasePatrolAI_FIRING_DISTANCESet = Ref(false)
function staticGet_FIRING_DISTANCE(::Type{BasePatrolAI})
    if !BasePatrolAI_FIRING_DISTANCESet[]
        BasePatrolAI_FIRING_DISTANCESet[] = true
        BasePatrolAI_FIRING_DISTANCEValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(4))
    end
    BasePatrolAI_FIRING_DISTANCEValue[]
end
function staticSet_FIRING_DISTANCE(::Type{BasePatrolAI}, value)
    BasePatrolAI_FIRING_DISTANCESet[] = true
    BasePatrolAI_FIRING_DISTANCEValue[] = value
end
const BasePatrolAI_SPEEDValue = Ref{Any}(nothing)
const BasePatrolAI_SPEEDSet = Ref(false)
function staticGet_SPEED(::Type{BasePatrolAI})
    if !BasePatrolAI_SPEEDSet[]
        BasePatrolAI_SPEEDSet[] = true
        BasePatrolAI_SPEEDValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(5))
    end
    BasePatrolAI_SPEEDValue[]
end
function staticSet_SPEED(::Type{BasePatrolAI}, value)
    BasePatrolAI_SPEEDSet[] = true
    BasePatrolAI_SPEEDValue[] = value
end

function initFieldsBasePatrolAI(this::BasePatrolAI)
    this.maxDistance = nothing
    this.currentDistance = Int32(0)
    this.xTotalDistance = Int32(0)
    this.lastKeyDirection = Int32(0)
    this.keyDirection = Int32(0)
    
    
    this.xTotalDistance = Int32(0)
    this.lastKeyDirection = staticGet_RIGHT(Canvas)
    this.keyDirection = staticGet_RIGHT(Canvas)
    nothing
end


function initBasePatrolAI(this::BasePatrolAI, hashtable, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsBasePatrolAI(this)
        this.maxDistance = (AllBinary.get(hashtable, staticGet_MAX_DISTANCE(BasePatrolAI)))
        this.currentDistance = AllBinary.intValue(this.maxDistance)
        nothing
end

function newBasePatrolAI(hashtable, ownerLayerInterface, gameInput)
    this = BasePatrolAI()
    initBasePatrolAI(this, hashtable, ownerLayerInterface, gameInput)
    this
end


function update(this::BasePatrolAI)
        AllBinary.updateTotalDistance(this)
        AllBinary.changeDirectionIfReachedPacingAreaMax(this)
        nothing
end


function updateTotalDistance(this::BasePatrolAI)
        local velocityInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
        local velocityProperties = AllBinary.getVelocityProperties(velocityInterfaceCompositeInterface)
        this.xTotalDistance += AllBinary.getScaled(AllBinary.getVelocityXBasicDecimalP(velocityProperties))
        nothing
end


function changeDirectionIfReachedPacingAreaMax(this::BasePatrolAI)
        local mathUtil = AllBinary.getInstance(MathUtil)
        local totalDistance::Int32 = AllBinary.abs(mathUtil, this.xTotalDistance)
        if totalDistance > this.currentDistance
            AllBinary.nextDirection(this)
        end
        nothing
end


function nextDirection(this::BasePatrolAI)
        if this.lastKeyDirection == staticGet_LEFT(Canvas)
            this.keyDirection = staticGet_RIGHT(Canvas)
            this.lastKeyDirection = this.keyDirection
            this.xTotalDistance = Int32(0)
        elseif this.lastKeyDirection == staticGet_RIGHT(Canvas)
            this.keyDirection = staticGet_LEFT(Canvas)
            this.lastKeyDirection = this.keyDirection
            this.xTotalDistance = Int32(0)
        end
        nothing
end


function disable(this::BasePatrolAI)
        nothing
        nothing
end

