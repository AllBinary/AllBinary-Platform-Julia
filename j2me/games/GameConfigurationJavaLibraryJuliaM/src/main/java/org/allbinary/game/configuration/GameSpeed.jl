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
# package org.allbinary.game.configuration

mutable struct GameSpeed <: JObject
    GameSpeed() = new()
end

const GameSpeed_instanceValue = Ref{Any}(nothing)
const GameSpeed_instanceSet = Ref(false)
function staticGet_instance(::Type{GameSpeed})
    if !GameSpeed_instanceSet[]
        GameSpeed_instanceSet[] = true
        GameSpeed_instanceValue[] = newGameSpeed()
    end
    GameSpeed_instanceValue[]
end
function staticSet_instance(::Type{GameSpeed}, value)
    GameSpeed_instanceSet[] = true
    GameSpeed_instanceValue[] = value
end

function initFieldsGameSpeed(this::GameSpeed)
    nothing
end

function initGameSpeed(this::GameSpeed)
    initFieldsGameSpeed(this)
end

function newGameSpeed()
    this = GameSpeed()
    initGameSpeed(this)
    this
end


function getSpeed(this::GameSpeed)
        local speedGameConfiguration = AllBinary.getInstance(GameConfigurationCentral).SPEED
        return (AllBinary.intValue(AllBinary.getMaxValue(speedGameConfiguration)) - AllBinary.intValue(AllBinary.getValue(speedGameConfiguration)) + Int32(1))
end


function getDelay(this::GameSpeed)
        local speedGameConfiguration = AllBinary.getInstance(GameConfigurationCentral).SPEED
        return Int32(19) * (AllBinary.intValue(AllBinary.getMaxValue(speedGameConfiguration)) - AllBinary.intValue(AllBinary.getValue(speedGameConfiguration)))
end


function getInstance(::Type{GameSpeed})
        return staticGet_instance(GameSpeed)
end

