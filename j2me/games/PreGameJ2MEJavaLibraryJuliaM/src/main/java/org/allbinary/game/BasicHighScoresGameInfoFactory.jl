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
# package org.allbinary.game

mutable struct BasicHighScoresGameInfoFactory <: JObject
    MULTI_PLAYER_SERVER::Any
    SINGLE_PLAYER_SERVER::Any
    BasicHighScoresGameInfoFactory() = new()
end

const BasicHighScoresGameInfoFactory_SINGLETONValue = Ref{Any}(nothing)
const BasicHighScoresGameInfoFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{BasicHighScoresGameInfoFactory})
    if !BasicHighScoresGameInfoFactory_SINGLETONSet[]
        BasicHighScoresGameInfoFactory_SINGLETONSet[] = true
        BasicHighScoresGameInfoFactory_SINGLETONValue[] = newBasicHighScoresGameInfoFactory()
    end
    BasicHighScoresGameInfoFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{BasicHighScoresGameInfoFactory}, value)
    BasicHighScoresGameInfoFactory_SINGLETONSet[] = true
    BasicHighScoresGameInfoFactory_SINGLETONValue[] = value
end

function initFieldsBasicHighScoresGameInfoFactory(this::BasicHighScoresGameInfoFactory)
    this.MULTI_PLAYER_SERVER = nothing
    this.SINGLE_PLAYER_SERVER = nothing
    this.MULTI_PLAYER_SERVER = newGameInfo(AllBinary.getInstance(GameTypeFactory).MULTI_PLAYER, staticGet_SERVER(GameMode), AllBinary.getInstance(PlayerTypesFactory).PLAYER_TYPE_ONE, Int32(0), Int32(0))
    this.SINGLE_PLAYER_SERVER = newGameInfo(AllBinary.getInstance(GameTypeFactory).SINGLE_PLAYER, staticGet_SERVER(GameMode), AllBinary.getInstance(PlayerTypesFactory).PLAYER_TYPE_ONE, Int32(0), Int32(0))
    nothing
end

function initBasicHighScoresGameInfoFactory(this::BasicHighScoresGameInfoFactory)
    initFieldsBasicHighScoresGameInfoFactory(this)
end

function newBasicHighScoresGameInfoFactory()
    this = BasicHighScoresGameInfoFactory()
    initBasicHighScoresGameInfoFactory(this)
    this
end


function getInstance(::Type{BasicHighScoresGameInfoFactory})
        return staticGet_SINGLETON(BasicHighScoresGameInfoFactory)
end

