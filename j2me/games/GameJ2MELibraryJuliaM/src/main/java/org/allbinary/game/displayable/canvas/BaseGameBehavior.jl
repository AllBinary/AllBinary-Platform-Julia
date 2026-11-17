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

# extends DemoGameBehavior: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BaseGameBehavior <: JObject
    BaseGameBehavior() = new()
end

const BaseGameBehavior_instanceCValue = Ref{Any}(nothing)
const BaseGameBehavior_instanceCSet = Ref(false)
function staticGet_instanceC(::Type{BaseGameBehavior})
    if !BaseGameBehavior_instanceCSet[]
        BaseGameBehavior_instanceCSet[] = true
        BaseGameBehavior_instanceCValue[] = newBaseGameBehavior()
    end
    BaseGameBehavior_instanceCValue[]
end
function staticSet_instanceC(::Type{BaseGameBehavior}, value)
    BaseGameBehavior_instanceCSet[] = true
    BaseGameBehavior_instanceCValue[] = value
end

function initFieldsBaseGameBehavior(this::BaseGameBehavior)
    nothing
end

function initBaseGameBehavior(this::BaseGameBehavior)
    initDemoGameBehavior(this)
    initFieldsBaseGameBehavior(this)
end

function newBaseGameBehavior()
    this = BaseGameBehavior()
    initBaseGameBehavior(this)
    this
end


function getInstance(::Type{BaseGameBehavior})
        return staticGet_instanceC(BaseGameBehavior)
end


function init(this::BaseGameBehavior)
        local gameAdState = AllBinary.getCurrentInstance(AllBinary.getInstance(GameAdStateFactory))
        AllBinary.playingAdState(gameAdState)
        nothing
end


function pause(this::BaseGameBehavior, allBinaryGameCanvas)
        local features = AllBinary.getInstance(Features)
        if AllBinary.isDefault(features, AllBinary.getInstance(OpenGLFeatureFactory).OPENGL_AS_GAME_THREAD)
            local currentDisplayableFactory = AllBinary.getInstance(CurrentDisplayableFactory)
            AllBinary.setRunnable(currentDisplayableFactory, allBinaryGameCanvas.gamePauseRunnable)
        end
        nothing
end


function unPause(this::BaseGameBehavior, allBinaryGameCanvas)
        if AllBinary.isDefault(AllBinary.getInstance(Features), AllBinary.getInstance(OpenGLFeatureFactory).OPENGL_AS_GAME_THREAD)
            local currentDisplayableFactory = AllBinary.getInstance(CurrentDisplayableFactory)
            AllBinary.setRunnable(currentDisplayableFactory, allBinaryGameCanvas.gameRunnable)
            AllBinary.setDisplayable(currentDisplayableFactory, allBinaryGameCanvas)
        end
        nothing
end


function updateTouch(this::BaseGameBehavior, allBinaryGameCanvas)
        AllBinary.updateTouch2(allBinaryGameCanvas)
        nothing
end


function updateScreenButtonPaintable(this::BaseGameBehavior, allBinaryGameCanvas)
        AllBinary.updateScreenButtonPaintable2(allBinaryGameCanvas)
        nothing
end


function setGameState(this::BaseGameBehavior, allBinaryGameCanvas)
        AllBinary.updateGameState(allBinaryGameCanvas)
        nothing
end


function removeAllGameKeyInputListeners(this::BaseGameBehavior, allBinaryGameCanvas)
        AllBinary.removeAllGameKeyInputListeners2(allBinaryGameCanvas)
        nothing
end


function updateEndGameProcessor(this::BaseGameBehavior, allBinaryGameCanvas)
        AllBinary.updateEndGameProcessor2(allBinaryGameCanvas)
        nothing
end


function buildGame(this::BaseGameBehavior, allBinaryGameCanvas)
        AllBinary.buildGame2(allBinaryGameCanvas)
        nothing
end


function run(this::BaseGameBehavior, allBinaryGameCanvas)
        AllBinary.run2(allBinaryGameCanvas)
        nothing
end


function setHighScore(this::BaseGameBehavior, abeClientInformation, allBinaryGameCanvas, name, score, autoSubmit, isLast)
        AllBinary.setHighScore2(allBinaryGameCanvas, abeClientInformation, name, score, autoSubmit, isLast)
        nothing
end

