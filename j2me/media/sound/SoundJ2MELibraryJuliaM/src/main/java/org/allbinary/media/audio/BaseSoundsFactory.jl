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
# package org.allbinary.media.audio

mutable struct BaseSoundsFactory <: JObject
    initialized::Bool
    BaseSoundsFactory() = new()
end


function initFieldsBaseSoundsFactory(this::BaseSoundsFactory)
    this.initialized = false
    this.initialized = false
    nothing
end

function initBaseSoundsFactory(this::BaseSoundsFactory)
    initFieldsBaseSoundsFactory(this)
end

function newBaseSoundsFactory()
    this = BaseSoundsFactory()
    initBaseSoundsFactory(this)
    this
end


function init(this::BaseSoundsFactory)
        nothing
        nothing
end


function getSoundInterfaceArray(this::BaseSoundsFactory)
        return jNewArray(Any, Int32(0), nothing)
end


function setInitialized(this::BaseSoundsFactory, initialized)
        this.initialized = initialized
        nothing
end


function isInitialized(this::BaseSoundsFactory)
        return this.initialized
end

