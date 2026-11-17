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
# package org.allbinary.game.score

mutable struct Scoreable <: JObject
    points::Int32
    Scoreable() = new()
end

const Scoreable_IDValue = Ref{Any}(nothing)
const Scoreable_IDSet = Ref(false)
function staticGet_ID(::Type{Scoreable})
    if !Scoreable_IDSet[]
        Scoreable_IDSet[] = true
        Scoreable_IDValue[] = AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(3))
    end
    Scoreable_IDValue[]
end
function staticSet_ID(::Type{Scoreable}, value)
    Scoreable_IDSet[] = true
    Scoreable_IDValue[] = value
end

function initFieldsScoreable(this::Scoreable)
    this.points = Int32(0)
    
    nothing
end


function initScoreable(this::Scoreable, points)
        initFieldsScoreable(this)
        this.points = points
        nothing
end

function newScoreable(points)
    this = Scoreable()
    initScoreable(this, points)
    this
end


function addPoints(this::Scoreable, points)
        this.points += points
        nothing
end


function removePoints(this::Scoreable, points)
        this.points -= points
        nothing
end


function setPoints(this::Scoreable, points)
        this.points = points
        nothing
end


function getPoints(this::Scoreable)
        return this.points
end

