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
# package org.allbinary.string

mutable struct CommonPhoneStrings <: JObject
    UP::Any
    DOWN::Any
    LEFT::Any
    RIGHT::Any
    ZERO::Any
    ONE::Any
    TWO::Any
    THREE::Any
    FOUR::Any
    FIVE::Any
    SIX::Any
    SEVEN::Any
    EIGHT::Any
    NINE::Any
    POUND::Any
    STAR::Any
    FIRE::Any
    CommonPhoneStrings() = new()
end

const CommonPhoneStrings_instanceValue = Ref{Any}(nothing)
const CommonPhoneStrings_instanceSet = Ref(false)
function staticGet_instance(::Type{CommonPhoneStrings})
    if !CommonPhoneStrings_instanceSet[]
        CommonPhoneStrings_instanceSet[] = true
        CommonPhoneStrings_instanceValue[] = newCommonPhoneStrings()
    end
    CommonPhoneStrings_instanceValue[]
end
function staticSet_instance(::Type{CommonPhoneStrings}, value)
    CommonPhoneStrings_instanceSet[] = true
    CommonPhoneStrings_instanceValue[] = value
end

function initFieldsCommonPhoneStrings(this::CommonPhoneStrings)
    this.UP = nothing
    this.DOWN = nothing
    this.LEFT = nothing
    this.RIGHT = nothing
    this.ZERO = nothing
    this.ONE = nothing
    this.TWO = nothing
    this.THREE = nothing
    this.FOUR = nothing
    this.FIVE = nothing
    this.SIX = nothing
    this.SEVEN = nothing
    this.EIGHT = nothing
    this.NINE = nothing
    this.POUND = nothing
    this.STAR = nothing
    this.FIRE = nothing
    this.UP = "UP"
    this.DOWN = "DOWN"
    this.LEFT = "LEFT"
    this.RIGHT = "RIGHT"
    this.ZERO = "0"
    this.ONE = "1"
    this.TWO = "2"
    this.THREE = "3"
    this.FOUR = "4"
    this.FIVE = "5"
    this.SIX = "6"
    this.SEVEN = "7"
    this.EIGHT = "8"
    this.NINE = "9"
    this.POUND = "#"
    this.STAR = "*"
    this.FIRE = "FIRE"
    nothing
end

function initCommonPhoneStrings(this::CommonPhoneStrings)
    initFieldsCommonPhoneStrings(this)
end

function newCommonPhoneStrings()
    this = CommonPhoneStrings()
    initCommonPhoneStrings(this)
    this
end


function getInstance(::Type{CommonPhoneStrings})
        return staticGet_instance(CommonPhoneStrings)
end

