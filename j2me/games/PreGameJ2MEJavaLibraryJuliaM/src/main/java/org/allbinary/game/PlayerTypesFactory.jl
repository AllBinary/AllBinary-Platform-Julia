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

mutable struct PlayerTypesFactory <: JObject
    PLAYER_TYPE_ONE::Any
    PLAYER_TYPE_TWO::Any
    PLAYER_TYPE_THREE::Any
    PlayerTypesFactory() = new()
end

const PlayerTypesFactory_SINGLETONValue = Ref{Any}(nothing)
const PlayerTypesFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{PlayerTypesFactory})
    if !PlayerTypesFactory_SINGLETONSet[]
        PlayerTypesFactory_SINGLETONSet[] = true
        PlayerTypesFactory_SINGLETONValue[] = newPlayerTypesFactory()
    end
    PlayerTypesFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{PlayerTypesFactory}, value)
    PlayerTypesFactory_SINGLETONSet[] = true
    PlayerTypesFactory_SINGLETONValue[] = value
end

function initFieldsPlayerTypesFactory(this::PlayerTypesFactory)
    this.PLAYER_TYPE_ONE = nothing
    this.PLAYER_TYPE_TWO = nothing
    this.PLAYER_TYPE_THREE = nothing
    this.PLAYER_TYPE_ONE = newPlayerType("Player Type One", Int32(0))
    this.PLAYER_TYPE_TWO = newPlayerType("Player Type Two", Int32(1))
    this.PLAYER_TYPE_THREE = newPlayerType("Player Type Three", Int32(2))
    nothing
end

function initPlayerTypesFactory(this::PlayerTypesFactory)
    initFieldsPlayerTypesFactory(this)
end

function newPlayerTypesFactory()
    this = PlayerTypesFactory()
    initPlayerTypesFactory(this)
    this
end


function getInstance(::Type{PlayerTypesFactory})
        return staticGet_SINGLETON(PlayerTypesFactory)
end

