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

mutable struct NumberInSameGroupSequence <: JObject
    NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO::Any
    NUMBER_ON_SAME_TEAM_SEQUENCE_ONE::Any
    NUMBER_ON_SAME_TEAM_SEQUENCE_TWO::Any
    NUMBER_ON_SAME_TEAM_SEQUENCE_THREE::Any
    NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR::Any
    NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE::Any
    NUMBER_ON_SAME_TEAM_SEQUENCE_SIX::Any
    NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN::Any
    NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT::Any
    NUMBER_ON_SAME_TEAM_SEQUENCE_NINE::Any
    NUMBER_ON_SAME_TEAM_SEQUENCE::Any
    NumberInSameGroupSequence() = new()
end


function initFieldsNumberInSameGroupSequence(this::NumberInSameGroupSequence)
    this.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = nothing
    this.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = nothing
    this.NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = nothing
    this.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = nothing
    this.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = nothing
    this.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = nothing
    this.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = nothing
    this.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = nothing
    this.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = nothing
    this.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = nothing
    this.NUMBER_ON_SAME_TEAM_SEQUENCE = nothing
    
    
    
    
    
    
    
    
    
    
    
    nothing
end


function getInstance(::Type{NumberInSameGroupSequence})
        return newNumberInSameGroupSequence()
end


function initNumberInSameGroupSequence(this::NumberInSameGroupSequence)
        initFieldsNumberInSameGroupSequence(this)
        local smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = AllBinary.getAt(smallIntegerSingletonFactory, Int32(100))
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = AllBinary.getAt(smallIntegerSingletonFactory, Int32(101))
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = AllBinary.getAt(smallIntegerSingletonFactory, Int32(102))
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = AllBinary.getAt(smallIntegerSingletonFactory, Int32(103))
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = AllBinary.getAt(smallIntegerSingletonFactory, Int32(104))
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = AllBinary.getAt(smallIntegerSingletonFactory, Int32(105))
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = AllBinary.getAt(smallIntegerSingletonFactory, Int32(106))
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = AllBinary.getAt(smallIntegerSingletonFactory, Int32(107))
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = AllBinary.getAt(smallIntegerSingletonFactory, Int32(108))
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = AllBinary.getAt(smallIntegerSingletonFactory, Int32(109))
        this.NUMBER_ON_SAME_TEAM_SEQUENCE = Int32[this.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, this.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, this.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, this.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, this.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, this.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE]
        nothing
end

function newNumberInSameGroupSequence()
    this = NumberInSameGroupSequence()
    initNumberInSameGroupSequence(this)
    this
end

