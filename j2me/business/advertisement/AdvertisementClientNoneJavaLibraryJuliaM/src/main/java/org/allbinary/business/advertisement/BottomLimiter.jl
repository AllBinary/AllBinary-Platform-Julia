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
# package org.allbinary.business.advertisement

mutable struct BottomLimiter <: JObject
    bottom::Int32
    deltaY::Int32
    lower::Int32
    higher::Int32
    BottomLimiter() = new()
end

const BottomLimiter_instanceValue = Ref{Any}(nothing)
const BottomLimiter_instanceSet = Ref(false)
function staticGet_instance(::Type{BottomLimiter})
    if !BottomLimiter_instanceSet[]
        BottomLimiter_instanceSet[] = true
        BottomLimiter_instanceValue[] = newBottomLimiter()
    end
    BottomLimiter_instanceValue[]
end
function staticSet_instance(::Type{BottomLimiter}, value)
    BottomLimiter_instanceSet[] = true
    BottomLimiter_instanceValue[] = value
end

function initFieldsBottomLimiter(this::BottomLimiter)
    this.bottom = Int32(0)
    this.deltaY = Int32(0)
    this.lower = Int32(0)
    this.higher = Int32(0)
    this.bottom = Int32(0)
    this.deltaY = Int32(0)
    this.lower = Int32(0)
    this.higher = Int32(0)
    nothing
end


function getInstance(::Type{BottomLimiter})
        return staticGet_instance(BottomLimiter)
end


function initBottomLimiter(this::BottomLimiter)
        initFieldsBottomLimiter(this)
        nothing
        nothing
end

function newBottomLimiter()
    this = BottomLimiter()
    initBottomLimiter(this)
    this
end


function init(this::BottomLimiter, lower, higher)
        this.lower = lower
        this.higher = higher
        nothing
end


function update(this::BottomLimiter)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        local gameAdState = AllBinary.getCurrentInstance(AllBinary.getInstance(GameAdStateFactory))
        if AllBinary.isShowingAt(gameAdState)
            this.deltaY = this.higher
        else
            this.deltaY = this.lower
        end
        this.bottom = AllBinary.getLastHeight(displayInfo) - this.deltaY
        nothing
end


function getDeltaY(this::BottomLimiter)
        return this.deltaY
end


function getBottom(this::BottomLimiter)
        return this.bottom
end

