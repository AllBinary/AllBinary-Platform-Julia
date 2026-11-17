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
# package org.allbinary.game.configuration.feature

# extends Feature: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameFeature <: JObject
    GameFeature() = new()
end


function initFieldsGameFeature(this::GameFeature)
    nothing
end


function initGameFeature(this::GameFeature, name)
        initFeature(this, name)
        nothing
end

function newGameFeature(name)
    this = GameFeature()
    initGameFeature(this, name)
    this
end

