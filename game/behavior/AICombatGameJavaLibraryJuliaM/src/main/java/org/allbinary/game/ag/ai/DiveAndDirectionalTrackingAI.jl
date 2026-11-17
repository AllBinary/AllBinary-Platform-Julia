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
# package org.allbinary.game.ag.ai

# extends BasicAI: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DiveAndDirectionalTrackingAI <: JObject
    mathUtil::Any
    directionFactory::Any
    gameTickTimeDelayHelper::Any
    timeDelayHelper::Any
    list::Any
    directionalInterface::Any
    velocityInterface::Any
    directionToKeyMap::Any
    initialDropped::Bool
    diveP::Bool
    directionOfTarget::Any
    MIN_DISTANCE::Int32
    lastTrackingLayerInterface::Any
    artificialIntelligenceInterface::Any
    aiVistor::Any
    lastDirection::Any
    DiveAndDirectionalTrackingAI() = new()
end


function initFieldsDiveAndDirectionalTrackingAI(this::DiveAndDirectionalTrackingAI)
    this.mathUtil = nothing
    this.directionFactory = nothing
    this.gameTickTimeDelayHelper = nothing
    this.timeDelayHelper = nothing
    this.list = nothing
    this.directionalInterface = nothing
    this.velocityInterface = nothing
    this.directionToKeyMap = nothing
    this.initialDropped = false
    this.diveP = false
    this.directionOfTarget = nothing
    this.MIN_DISTANCE = Int32(0)
    this.lastTrackingLayerInterface = nothing
    this.artificialIntelligenceInterface = nothing
    this.aiVistor = nothing
    this.lastDirection = nothing
    this.mathUtil = AllBinary.getInstance(MathUtil)
    this.directionFactory = AllBinary.getInstance(DirectionFactory)
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    this.timeDelayHelper = newTimeDelayHelper(Int32(500))
    this.list = newBasicArrayListD()
    
    
    this.directionToKeyMap = Int32[staticGet_LEFT(Canvas), staticGet_DOWN(Canvas), staticGet_UP(Canvas), staticGet_RIGHT(Canvas)]
    this.initialDropped = false
    this.diveP = false
    this.directionOfTarget = AllBinary.getInstance(Direction, Int32(0))
    this.MIN_DISTANCE = Int32(40)
    this.lastTrackingLayerInterface = staticGet_NULL_ALLBINARY_LAYER(AllBinaryLayer)
    
    
    this.lastDirection = AllBinary.getInstance(DirectionFactory).NO_DIRECTION
    nothing
end


function initDiveAndDirectionalTrackingAI(this::DiveAndDirectionalTrackingAI, ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitor)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsDiveAndDirectionalTrackingAI(this)
        this.aiVistor = visitor
        this.artificialIntelligenceInterface = artificialIntelligenceInterface
        local directionalCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
        this.directionalInterface = AllBinary.getDirectionalInterface(directionalCompositeInterface)
        local velocityInterfaceCompositeInterface = (AllBinary.getOwnerLayerInterface(this))
        this.velocityInterface = AllBinary.getVelocityProperties(velocityInterfaceCompositeInterface)
        AllBinary.addListenerInterface(AllBinary.getInstance(DestroyedEventHandler), this)
        AllBinary.init(this)
        nothing
end

function newDiveAndDirectionalTrackingAI(ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitor)
    this = DiveAndDirectionalTrackingAI()
    initDiveAndDirectionalTrackingAI(this, ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitor)
    this
end


function processAI(this::DiveAndDirectionalTrackingAI, allBinaryLayerManager)
        if AllBinary.isBeyondTarget(this)
            AllBinary.init(this)
            AllBinary.zero(this.velocityInterface)
        end
        if !this.diveP
            AllBinary.target(this, allBinaryLayerManager)
        else
            AllBinary.dive(this)
            AllBinary.attack(this)
        end
        AllBinary.clear(this.list)
        nothing
end


function init(this::DiveAndDirectionalTrackingAI)
        this.diveP = false
        this.directionOfTarget = AllBinary.getInstance(DirectionFactory).NOT_BORDERED_WITH
        AllBinary.addListenerInterface(AllBinary.getInstance(TrackingEventHandler), this)
        nothing
end


function target(this::DiveAndDirectionalTrackingAI, allBinaryLayerManager)
        if AllBinary.size(this.list) == Int32(0)
            return
        end
        local lastTrackingEvent = (AllBinary.removeAt(this.list, Int32(0)))
        this.lastTrackingLayerInterface = AllBinary.getLayerInterface(lastTrackingEvent)
        local layerInterface = this.lastTrackingLayerInterface
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        local groupArray = AllBinary.getGroupInterface(layerInterface)
        local ownerGroupArray = AllBinary.getGroupInterface(ownerLayerInterface)
        if groupArray === ownerGroupArray
            return
        end
        local x::Int32 = AllBinary.getXP(this.lastTrackingLayerInterface)
        local y::Int32 = AllBinary.getYP(this.lastTrackingLayerInterface)
        local yDistance::Int32 = AllBinary.getYP(ownerLayerInterface) - y - AllBinary.getHeight(ownerLayerInterface)
        local xDistance::Int32 = AllBinary.getXP(ownerLayerInterface) - x - AllBinary.getWidth(ownerLayerInterface)
        local directionFactory = AllBinary.getInstance(DirectionFactory)
        if AllBinary.abs(this.mathUtil, yDistance) > AllBinary.abs(this.mathUtil, xDistance)
            if yDistance > this.MIN_DISTANCE
                this.directionOfTarget = directionFactory.UP
            elseif yDistance < -this.MIN_DISTANCE
                this.directionOfTarget = directionFactory.DOWN
            end
        else
            if xDistance > this.MIN_DISTANCE
                this.directionOfTarget = directionFactory.LEFT
            elseif xDistance < -this.MIN_DISTANCE
                this.directionOfTarget = directionFactory.RIGHT
            end
        end
        if !this.initialDropped && this.directionOfTarget !== directionFactory.NOT_BORDERED_WITH
            AllBinary.drop(this)
        end
        if this.initialDropped
            if this.directionOfTarget === directionFactory.UP || this.directionOfTarget === directionFactory.DOWN
                AllBinary.verticalTargeting(this, x)
            elseif this.directionOfTarget === directionFactory.LEFT || this.directionOfTarget === directionFactory.RIGHT
                AllBinary.horizontalTargeting(this, y)
            else
                AllBinary.processAI(this.artificialIntelligenceInterface, allBinaryLayerManager)
            end
        end
        nothing
end


function verticalTargeting(this::DiveAndDirectionalTrackingAI, x)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        if AllBinary.getXP(ownerLayerInterface) < x
            AllBinary.moveRight(this)
        end
        if AllBinary.getXP(ownerLayerInterface) > x
            AllBinary.moveLeft(this)
        end
        if AllBinary.getXP(ownerLayerInterface) > x - Int32(3) && AllBinary.getXP(ownerLayerInterface) < x + Int32(3)
            AllBinary.setDive(this)
        end
        nothing
end


function horizontalTargeting(this::DiveAndDirectionalTrackingAI, y)
        local ownerLayerInterface = AllBinary.getOwnerLayerInterface(this)
        if AllBinary.getYP(ownerLayerInterface) < y
            AllBinary.moveDown(this)
        end
        if AllBinary.getYP(ownerLayerInterface) > y
            AllBinary.moveUp(this)
        end
        if AllBinary.getYP(ownerLayerInterface) > y - Int32(3) && AllBinary.getYP(ownerLayerInterface) < y + Int32(3)
            AllBinary.setDive(this)
        end
        nothing
end


function setDive(this::DiveAndDirectionalTrackingAI)
        this.diveP = true
        AllBinary.zero(this.velocityInterface)
        AllBinary.removeListener(AllBinary.getInstance(TrackingEventHandler), this)
        nothing
end


function moveRight(this::DiveAndDirectionalTrackingAI)
        AllBinary.setLastDirection(this, this.directionFactory.RIGHT)
        AllBinary.setFrameByDirection(this.directionalInterface, this.lastDirection)
        AllBinary.visit(this.aiVistor, this)
        nothing
end


function moveLeft(this::DiveAndDirectionalTrackingAI)
        AllBinary.setLastDirection(this, this.directionFactory.LEFT)
        AllBinary.setFrameByDirection(this.directionalInterface, this.lastDirection)
        AllBinary.visit(this.aiVistor, this)
        nothing
end


function moveDown(this::DiveAndDirectionalTrackingAI)
        AllBinary.setLastDirection(this, this.directionFactory.DOWN)
        AllBinary.setFrameByDirection(this.directionalInterface, this.lastDirection)
        AllBinary.visit(this.aiVistor, this)
        nothing
end


function moveUp(this::DiveAndDirectionalTrackingAI)
        AllBinary.setLastDirection(this, this.directionFactory.UP)
        AllBinary.setFrameByDirection(this.directionalInterface, this.lastDirection)
        AllBinary.visit(this.aiVistor, this)
        nothing
end


function dive(this::DiveAndDirectionalTrackingAI)
        AllBinary.setFrameByDirection(this.directionalInterface, this.directionOfTarget)
        AllBinary.visit(this.aiVistor, this)
        nothing
end


function attack(this::DiveAndDirectionalTrackingAI)
        AllBinary.processKeyAI(this, staticGet_KEY_NUM1(Canvas))
        nothing
end


function drop(this::DiveAndDirectionalTrackingAI)
        if AllBinary.isTime(this.timeDelayHelper, this.gameTickTimeDelayHelper.startTime)
            this.initialDropped = true
            AllBinary.visit(this.aiVistor, this)
        end
        nothing
end


function isBeyondTarget(this::DiveAndDirectionalTrackingAI)
        if this.directionOfTarget === this.directionFactory.DOWN
            if AllBinary.getYP(AllBinary.getOwnerLayerInterface(this)) > AllBinary.getYP(this.lastTrackingLayerInterface) + this.MIN_DISTANCE
                return true
            else
                return false
            end
        elseif this.directionOfTarget === this.directionFactory.UP
            if AllBinary.getYP(AllBinary.getOwnerLayerInterface(this)) < AllBinary.getYP(this.lastTrackingLayerInterface) + this.MIN_DISTANCE
                return true
            else
                return false
            end
        elseif this.directionOfTarget === this.directionFactory.RIGHT
            if AllBinary.getXP(AllBinary.getOwnerLayerInterface(this)) > AllBinary.getXP(this.lastTrackingLayerInterface) + this.MIN_DISTANCE
                return true
            else
                return false
            end
        elseif this.directionOfTarget === this.directionFactory.LEFT
            if AllBinary.getXP(AllBinary.getOwnerLayerInterface(this)) < AllBinary.getXP(this.lastTrackingLayerInterface) + this.MIN_DISTANCE
                return true
            else
                return false
            end
        else
            return false
        end
end


function onEvent(this::DiveAndDirectionalTrackingAI, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onMovement(this::DiveAndDirectionalTrackingAI, trackingEvent)
        AllBinary.add(this.list, trackingEvent)
        nothing
end


function onDestroyed(this::DiveAndDirectionalTrackingAI, destroyedEvent)
        if AllBinary.getOwnerLayerInterface(this) == AllBinary.getLayerInterface(destroyedEvent)
            AllBinary.removeListener(AllBinary.getInstance(TrackingEventHandler), this)
            AllBinary.removeListener(AllBinary.getInstance(DestroyedEventHandler), this)
        end
        nothing
end


function setLastDirection(this::DiveAndDirectionalTrackingAI, lastDirection)
        this.lastDirection = lastDirection
        local value::Int32 = AllBinary.getValue(AllBinary.getLastDirection(this))
        if value < Int32(4)
            AllBinary.setLastKey(this, this.directionToKeyMap[value + 1])
        end
        nothing
end


function setLastKey(this::DiveAndDirectionalTrackingAI, lastKey)
        AllBinary.setLastKey(this, lastKey)
        if AllBinary.getLastKey(this) == staticGet_LEFT(Canvas)
            this.lastDirection = AllBinary.getInstance(DirectionFactory).LEFT
        elseif AllBinary.getLastKey(this) == staticGet_DOWN(Canvas)
            this.lastDirection = AllBinary.getInstance(DirectionFactory).DOWN
        elseif AllBinary.getLastKey(this) == staticGet_UP(Canvas)
            this.lastDirection = AllBinary.getInstance(DirectionFactory).UP
        elseif AllBinary.getLastKey(this) == staticGet_RIGHT(Canvas)
            this.lastDirection = AllBinary.getInstance(DirectionFactory).RIGHT
        end
        nothing
end


function getLastDirection(this::DiveAndDirectionalTrackingAI)
        return this.lastDirection
end


function toString(this::DiveAndDirectionalTrackingAI)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.toString(this))
        AllBinary.append(stringBuffer, " LastDirection: ")
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), AllBinary.getLastDirection(this)))
        return AllBinary.toString(stringBuffer)
end

