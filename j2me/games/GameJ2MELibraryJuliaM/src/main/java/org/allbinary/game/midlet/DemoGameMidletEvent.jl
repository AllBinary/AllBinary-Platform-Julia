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
# package org.allbinary.game.midlet

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DemoGameMidletEvent <: JObject
    demoGameMidletState::Any
    DemoGameMidletEvent() = new()
end


function initFieldsDemoGameMidletEvent(this::DemoGameMidletEvent)
    this.demoGameMidletState = nothing
    
    nothing
end


function initDemoGameMidletEvent(this::DemoGameMidletEvent, anyType, demoGameMidletState)
        initAllBinaryEventObject(this, anyType)
        initFieldsDemoGameMidletEvent(this)
        this.demoGameMidletState = demoGameMidletState
        nothing
end

function newDemoGameMidletEvent(anyType, demoGameMidletState)
    this = DemoGameMidletEvent()
    initDemoGameMidletEvent(this, anyType, demoGameMidletState)
    this
end


function init(this::DemoGameMidletEvent, anyType)
        AllBinary.setSource(this, anyType)
        nothing
end


function setDemoGameMidletState(this::DemoGameMidletEvent, demoGameMidletState)
        this.demoGameMidletState = demoGameMidletState
        nothing
end


function getDemoGameMidletState(this::DemoGameMidletEvent)
        return this.demoGameMidletState
end

