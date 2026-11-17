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
mutable struct GameInitializedEvent <: JObject
    resourceLoadingLevel::Any
    level::Int32
    GameInitializedEvent() = new()
end


function initFieldsGameInitializedEvent(this::GameInitializedEvent)
    this.resourceLoadingLevel = nothing
    this.level = Int32(0)
    this.resourceLoadingLevel = AllBinary.getInstance(ResourceLoadingLevelFactory).LEVEL
    this.level = Int32(0)
    nothing
end


function initGameInitializedEvent(this::GameInitializedEvent, anyType)
        initAllBinaryEventObject(this, anyType)
        initFieldsGameInitializedEvent(this)
        nothing
end

function newGameInitializedEvent(anyType)
    this = GameInitializedEvent()
    initGameInitializedEvent(this, anyType)
    this
end


function setLevel(this::GameInitializedEvent, level)
        this.level = level
        this.resourceLoadingLevel = AllBinary.getInstance(ResourceLoadingLevelFactory).LEVEL
        nothing
end


function getLevel(this::GameInitializedEvent)
        return this.level
end


function setResourceLoadingLevel(this::GameInitializedEvent, resourceLoadingLevel)
        this.resourceLoadingLevel = resourceLoadingLevel
        this.level = AllBinary.getLevel(this.resourceLoadingLevel)
        nothing
end


function getResourceLoadingLevel(this::GameInitializedEvent)
        return this.resourceLoadingLevel
end

