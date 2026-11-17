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

mutable struct DemoGameMidletStateFactory <: JObject
    NONE::Any
    START_DEMO::Any
    START_GAME::Any
    START_INPUT_MAPPING::Any
    DemoGameMidletStateFactory() = new()
end

const DemoGameMidletStateFactory_STATEValue = Ref{Any}(nothing)
const DemoGameMidletStateFactory_STATESet = Ref(false)
function staticGet_STATE(::Type{DemoGameMidletStateFactory})
    if !DemoGameMidletStateFactory_STATESet[]
        DemoGameMidletStateFactory_STATESet[] = true
        DemoGameMidletStateFactory_STATEValue[] = newDemoGameMidletStateFactory()
    end
    DemoGameMidletStateFactory_STATEValue[]
end
function staticSet_STATE(::Type{DemoGameMidletStateFactory}, value)
    DemoGameMidletStateFactory_STATESet[] = true
    DemoGameMidletStateFactory_STATEValue[] = value
end

function initFieldsDemoGameMidletStateFactory(this::DemoGameMidletStateFactory)
    this.NONE = nothing
    this.START_DEMO = nothing
    this.START_GAME = nothing
    this.START_INPUT_MAPPING = nothing
    this.NONE = newDemoGameMidletState()
    this.START_DEMO = newDemoGameMidletState()
    this.START_GAME = newDemoGameMidletState()
    this.START_INPUT_MAPPING = newDemoGameMidletState()
    nothing
end


function initDemoGameMidletStateFactory(this::DemoGameMidletStateFactory)
        initFieldsDemoGameMidletStateFactory(this)
        nothing
        nothing
end

function newDemoGameMidletStateFactory()
    this = DemoGameMidletStateFactory()
    initDemoGameMidletStateFactory(this)
    this
end


function getInstance(::Type{DemoGameMidletStateFactory})
        return staticGet_STATE(DemoGameMidletStateFactory)
end

