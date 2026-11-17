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
mutable struct HorizontalScreenPatrolAI <: JObject
    keyDirection::Int32
    displayInfoSingleton::Any
    firingX::Int32
    firedIndex::Int32
    MAX_FIRE::Int32
    timeDelayHelper::Any
    secondaryPlayerQueue::Any
    sound::Any
    HorizontalScreenPatrolAI() = new()
end

const HorizontalScreenPatrolAI_SOUNDValue = Ref{Any}(nothing)
const HorizontalScreenPatrolAI_SOUNDSet = Ref(false)
function staticGet_SOUND(::Type{HorizontalScreenPatrolAI})
    if !HorizontalScreenPatrolAI_SOUNDSet[]
        HorizontalScreenPatrolAI_SOUNDSet[] = true
        HorizontalScreenPatrolAI_SOUNDValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(433))
    end
    HorizontalScreenPatrolAI_SOUNDValue[]
end
function staticSet_SOUND(::Type{HorizontalScreenPatrolAI}, value)
    HorizontalScreenPatrolAI_SOUNDSet[] = true
    HorizontalScreenPatrolAI_SOUNDValue[] = value
end

function initFieldsHorizontalScreenPatrolAI(this::HorizontalScreenPatrolAI)
    this.keyDirection = Int32(0)
    this.displayInfoSingleton = nothing
    this.firingX = Int32(0)
    this.firedIndex = Int32(0)
    this.MAX_FIRE = Int32(0)
    this.timeDelayHelper = nothing
    this.secondaryPlayerQueue = nothing
    this.sound = nothing
    this.keyDirection = staticGet_LEFT(Canvas)
    this.displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
    this.firingX = AllBinary.getLastHalfWidth(this.displayInfoSingleton)
    this.firedIndex = Int32(0)
    this.MAX_FIRE = Int32(28)
    this.timeDelayHelper = newTimeDelayHelper(Int32(240))
    this.secondaryPlayerQueue = AllBinary.getInstance(SecondaryPlayerQueueFactory)
    
    nothing
end


function initHorizontalScreenPatrolAI(this::HorizontalScreenPatrolAI, hashtable, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsHorizontalScreenPatrolAI(this)
        this.sound = (AllBinary.get(hashtable, staticGet_SOUND(HorizontalScreenPatrolAI)))
        if this.sound === nothing
            throw(jNewException("Exception", "No Sound Provided!!"))
        end
        nothing
end

function newHorizontalScreenPatrolAI(hashtable, ownerLayerInterface, gameInput)
    this = HorizontalScreenPatrolAI()
    initHorizontalScreenPatrolAI(this, hashtable, ownerLayerInterface, gameInput)
    this
end


function processAI(this::HorizontalScreenPatrolAI, allBinaryLayerManager)
        AllBinary.processKeyAI(this, this.keyDirection)
        if AllBinary.isTimeTNT(this.timeDelayHelper)
            local layerInterface = AllBinary.getOwnerLayerInterface(this)
            local currentOwnerLayerX::Int32 = AllBinary.getXP(layerInterface)
            if currentOwnerLayerX < -AllBinary.getWidth(layerInterface)
                local y::Int32 = AllBinary.getAbsoluteNextIntAllowZero(AllBinary.getInstance(MyRandomFactory), Int32(50))
                AllBinary.setPosition(layerInterface, AllBinary.getLastWidth(this.displayInfoSingleton) + AllBinary.getWidth(layerInterface) + Int32(50), y, AllBinary.getZP(layerInterface))
                this.firedIndex = Int32(0)
                this.firingX = AllBinary.getLastHalfWidth(this.displayInfoSingleton) + AllBinary.getNextInt(AllBinary.getInstance(MyRandomFactory), AllBinary.getLastHalfWidth(this.displayInfoSingleton))
                AllBinary.add(this.secondaryPlayerQueue, this.sound)
            end
            if currentOwnerLayerX < this.firingX && currentOwnerLayerX > -AllBinary.getWidth(layerInterface)
                AllBinary.processKeyAI(this, staticGet_KEY_NUM1(Canvas))
                local gameLayerManager = (allBinaryLayerManager)
                local FIRE::Int32 = (AllBinary.getCurrentLevel(AllBinary.getGameInfo(gameLayerManager)) + Int32(12)) >> Int32(2)
                if FIRE > this.MAX_FIRE
                    FIRE = this.MAX_FIRE
                end
                if this.firedIndex > FIRE
                    this.firedIndex = Int32(0)
                    this.firingX = staticGet_MIN_VALUE(Integer)
                end
                this.firedIndex += Int32(1)
            end
        end
        nothing
end


function nextDirection(this::HorizontalScreenPatrolAI)
        nothing
        nothing
end

