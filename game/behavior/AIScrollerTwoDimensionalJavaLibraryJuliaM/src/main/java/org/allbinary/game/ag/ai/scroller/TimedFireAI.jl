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
mutable struct TimedFireAI <: JObject
    maxFireDelayTimeHelper::Any
    delay::Int32
    TimedFireAI() = new()
end

const TimedFireAI_TIMEValue = Ref{Any}(nothing)
const TimedFireAI_TIMESet = Ref(false)
function staticGet_TIME(::Type{TimedFireAI})
    if !TimedFireAI_TIMESet[]
        TimedFireAI_TIMESet[] = true
        TimedFireAI_TIMEValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(1))
    end
    TimedFireAI_TIMEValue[]
end
function staticSet_TIME(::Type{TimedFireAI}, value)
    TimedFireAI_TIMESet[] = true
    TimedFireAI_TIMEValue[] = value
end

function initFieldsTimedFireAI(this::TimedFireAI)
    this.maxFireDelayTimeHelper = nothing
    this.delay = Int32(0)
    this.maxFireDelayTimeHelper = newTimeDelayHelper(Int32(0))
    
    nothing
end


function initTimedFireAI(this::TimedFireAI, delay, ownerLayerInterface, gameInput)
        initBasicAI(this, ownerLayerInterface, gameInput)
        initFieldsTimedFireAI(this)
        this.delay = delay
        nothing
end

function newTimedFireAI(delay, ownerLayerInterface, gameInput)
    this = TimedFireAI()
    initTimedFireAI(this, delay, ownerLayerInterface, gameInput)
    this
end


function processAI(this::TimedFireAI, allBinaryLayerManager)
        local timeFiredInterface = (AllBinary.getOwnerLayerInterface(this))
        if AllBinary.isTime(this.maxFireDelayTimeHelper, AllBinary.getInstance(GameTickTimeDelayHelperFactory).startTime) && AllBinary.getLastFireTime(timeFiredInterface) + this.maxFireDelayTimeHelper.delay < AllBinary.getStartTime(this.maxFireDelayTimeHelper)
            AllBinary.processKeyAI(this, staticGet_KEY_NUM1(Canvas))
            this.maxFireDelayTimeHelper.delay = this.delay
        end
        nothing
end

