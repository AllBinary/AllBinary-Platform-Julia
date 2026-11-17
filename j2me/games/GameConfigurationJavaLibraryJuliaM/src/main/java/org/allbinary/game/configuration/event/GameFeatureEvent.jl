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
# package org.allbinary.game.configuration.event

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameFeatureEvent <: JObject
    whatChanged::Any
    GameFeatureEvent() = new()
end


function initFieldsGameFeatureEvent(this::GameFeatureEvent)
    this.whatChanged = nothing
    
    nothing
end


function initGameFeatureEvent(this::GameFeatureEvent, anyType, whatChanged)
        initAllBinaryEventObject(this, anyType)
        initFieldsGameFeatureEvent(this)
        this.whatChanged = whatChanged
        nothing
end

function newGameFeatureEvent(anyType, whatChanged)
    this = GameFeatureEvent()
    initGameFeatureEvent(this, anyType, whatChanged)
    this
end


function getWhatChanged(this::GameFeatureEvent)
        return this.whatChanged
end


function getGameOption(this::GameFeatureEvent)
        return AllBinary.getSource(this)
end

