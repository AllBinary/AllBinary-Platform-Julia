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
# package org.allbinary.game.ag.layer.hud.basic.time

mutable struct HudTimer <: JObject
    startTime::Int64
    hundredthTime::Int64
    maxTime::Int64
    modifier::Int64
    hundrethsString::Any
    totalDigits::Int32
    primitiveLongUtil::Any
    MAX::Any
    gameTickTimeDelayHelper::Any
    HudTimer() = new()
end


function initFieldsHudTimer(this::HudTimer)
    this.startTime = Int64(0)
    this.hundredthTime = Int64(0)
    this.maxTime = Int64(0)
    this.modifier = Int64(0)
    this.hundrethsString = nothing
    this.totalDigits = Int32(0)
    this.primitiveLongUtil = nothing
    this.MAX = nothing
    this.gameTickTimeDelayHelper = nothing
    this.startTime = ((-Int32(1)) % Int64)
    this.hundredthTime = Int64(0)
    
    this.modifier = Int64(0)
    this.hundrethsString = AllBinary.getInstance(PrimitiveLongSingleton).ZERO
    this.totalDigits = Int32(1)
    
    this.MAX = UInt16[UInt16('L'), UInt16('O'), UInt16('L')]
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    nothing
end


function initHudTimer(this::HudTimer, maxTime)
        initFieldsHudTimer(this)
        this.primitiveLongUtil = AllBinary.createPowerOfTen(PrimitiveLongUtil, maxTime)
        this.maxTime = ((maxTime) % Int64)
        nothing
end

function newHudTimer(maxTime)
    this = HudTimer()
    initHudTimer(this, maxTime)
    this
end


function start(this::HudTimer)
        this.hundredthTime = Int64(0)
        this.startTime = this.gameTickTimeDelayHelper.startTime
        nothing
end


function get(this::HudTimer)
        return this.hundredthTime
end


function update(this::HudTimer)
        local lastLowerTime::Int64 = this.hundredthTime
        local currentTime::Int64 = ((this.modifier + this.gameTickTimeDelayHelper.startTime) - this.startTime)
        if currentTime < Int64(0)
            currentTime = Int64(0)
        end
        this.hundredthTime = currentTime ÷ Int64(100)
        if this.hundredthTime >= this.maxTime
            if this.startTime > Int64(0)
                this.hundrethsString = this.MAX
            end
        elseif lastLowerTime != this.hundredthTime
            this.hundrethsString = AllBinary.getCharArray(this.primitiveLongUtil, ((this.hundredthTime) % Int32))
            this.totalDigits = AllBinary.getCurrentTotalDigits(this.primitiveLongUtil)
        end
        nothing
end


function reduce(this::HudTimer, value)
        this.modifier -= ((value) % Int64)
        nothing
end


function add(this::HudTimer, value)
        this.modifier += ((value) % Int64)
        nothing
end


function getTimeChars(this::HudTimer)
        return this.hundrethsString
end


function getCurrentTotalDigits(this::HudTimer)
        return this.totalDigits
end

