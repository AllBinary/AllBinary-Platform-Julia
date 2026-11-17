# Generated Code Do Not Modify
# package org.allbinary.game.midlet

mutable struct GameMidletStateFactory <: JObject
    logUtil::Any
    currentGameState::Any
    GameMidletStateFactory() = new()
end

const GameMidletStateFactory_INSTANCEValue = Ref{Any}(nothing)
const GameMidletStateFactory_INSTANCESet = Ref(false)
function staticGet_INSTANCE(::Type{GameMidletStateFactory})
    if !GameMidletStateFactory_INSTANCESet[]
        GameMidletStateFactory_INSTANCESet[] = true
        GameMidletStateFactory_INSTANCEValue[] = newGameMidletStateFactory()
    end
    GameMidletStateFactory_INSTANCEValue[]
end
function staticSet_INSTANCE(::Type{GameMidletStateFactory}, value)
    GameMidletStateFactory_INSTANCESet[] = true
    GameMidletStateFactory_INSTANCEValue[] = value
end

function initFieldsGameMidletStateFactory(this::GameMidletStateFactory)
    this.logUtil = nothing
    this.currentGameState = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.currentGameState = AllBinary.getInstance(GameStateFactory).NO_GAME_STATE
    nothing
end


function initGameMidletStateFactory(this::GameMidletStateFactory)
        initFieldsGameMidletStateFactory(this)
        nothing
        nothing
end

function newGameMidletStateFactory()
    this = GameMidletStateFactory()
    initGameMidletStateFactory(this)
    this
end


function getInstance(::Type{GameMidletStateFactory})
        return staticGet_INSTANCE(GameMidletStateFactory)
end


function getCurrentGameState(this::GameMidletStateFactory)
        return this.currentGameState
end


function setCurrentGameState(this::GameMidletStateFactory, currentGameState)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).CURRENT), " GameState: "), AllBinary.toString(AllBinary.getInstance(StringUtil), currentGameState))), this, "setCurrentGameState")
        this.currentGameState = currentGameState
        nothing
end

