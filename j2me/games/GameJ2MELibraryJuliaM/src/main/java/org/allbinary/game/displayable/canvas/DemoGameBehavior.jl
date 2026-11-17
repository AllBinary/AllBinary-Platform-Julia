#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

mutable struct DemoGameBehavior <: JObject
    logUtil::Any
    DemoGameBehavior() = new()
end

const DemoGameBehavior_instanceValue = Ref{Any}(nothing)
const DemoGameBehavior_instanceSet = Ref(false)
function staticGet_instance(::Type{DemoGameBehavior})
    if !DemoGameBehavior_instanceSet[]
        DemoGameBehavior_instanceSet[] = true
        DemoGameBehavior_instanceValue[] = newDemoGameBehavior()
    end
    DemoGameBehavior_instanceValue[]
end
function staticSet_instance(::Type{DemoGameBehavior}, value)
    DemoGameBehavior_instanceSet[] = true
    DemoGameBehavior_instanceValue[] = value
end

function initFieldsDemoGameBehavior(this::DemoGameBehavior)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initDemoGameBehavior(this::DemoGameBehavior)
    initFieldsDemoGameBehavior(this)
end

function newDemoGameBehavior()
    this = DemoGameBehavior()
    initDemoGameBehavior(this)
    this
end


function getInstance(::Type{DemoGameBehavior})
        return staticGet_instance(DemoGameBehavior)
end


function init(this::DemoGameBehavior)
        nothing
        nothing
end


function pause(this::DemoGameBehavior, allBinaryGameCanvas)
        nothing
        nothing
end


function unPause(this::DemoGameBehavior, allBinaryGameCanvas)
        nothing
        nothing
end


function updateTouch(this::DemoGameBehavior, allBinaryGameCanvas)
        nothing
        nothing
end


function updateScreenButtonPaintable(this::DemoGameBehavior, allBinaryGameCanvas)
        AllBinary.setTouchPaintableP(allBinaryGameCanvas, AllBinary.getInstance(NullPaintable))
        nothing
end


function setGameState(this::DemoGameBehavior, allBinaryGameCanvas)
        nothing
        nothing
end


function removeAllGameKeyInputListeners(this::DemoGameBehavior, allBinaryGameCanvas)
        nothing
        nothing
end


function updateEndGameProcessor(this::DemoGameBehavior, allBinaryGameCanvas)
        nothing
        nothing
end


function buildGame(this::DemoGameBehavior, allBinaryGameCanvas)
        nothing
        nothing
end


function run(this::DemoGameBehavior, allBinaryGameCanvas)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.getInstance(GameTypeFactory).BOT), this, commonStrings.RUN)
        nothing
end


function setHighScore(this::DemoGameBehavior, abeClientInformation, allBinaryGameCanvas, name, score, autoSubmit, isLast)
        nothing
        nothing
end

