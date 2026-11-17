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

# extends Gauge: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameConfigurationGauge <: JObject
    GameConfigurationGauge() = new()
end


function initFieldsGameConfigurationGauge(this::GameConfigurationGauge)
    nothing
end


function initGameConfigurationGauge(this::GameConfigurationGauge, gameConfiguration)
        initGauge(this, AllBinary.getName(gameConfiguration), AllBinary.booleanValue(AllBinary.isModifiable(gameConfiguration)), AllBinary.intValue(AllBinary.getMaxValue(gameConfiguration)) - AllBinary.intValue(AllBinary.getMinValue(gameConfiguration)), AllBinary.intValue(AllBinary.getValue(gameConfiguration)) - AllBinary.intValue(AllBinary.getMinValue(gameConfiguration)))
        nothing
end

function newGameConfigurationGauge(gameConfiguration)
    this = GameConfigurationGauge()
    initGameConfigurationGauge(this, gameConfiguration)
    this
end

