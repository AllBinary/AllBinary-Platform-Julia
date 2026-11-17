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
# package org.allbinary.canvas

mutable struct GameGlobalsFactory <: JObject
    newCanvas::Bool
    newDisplaybleTime::Int64
    point::Any
    GameGlobalsFactory() = new()
end

const GameGlobalsFactory_instanceValue = Ref{Any}(nothing)
const GameGlobalsFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameGlobalsFactory})
    if !GameGlobalsFactory_instanceSet[]
        GameGlobalsFactory_instanceSet[] = true
        GameGlobalsFactory_instanceValue[] = newGameGlobalsFactory()
    end
    GameGlobalsFactory_instanceValue[]
end
function staticSet_instance(::Type{GameGlobalsFactory}, value)
    GameGlobalsFactory_instanceSet[] = true
    GameGlobalsFactory_instanceValue[] = value
end

function initFieldsGameGlobalsFactory(this::GameGlobalsFactory)
    this.newCanvas = false
    this.newDisplaybleTime = Int64(0)
    this.point = nothing
    this.newCanvas = true
    this.newDisplaybleTime = ((staticGet_MIN_VALUE(Integer)) % Int64)
    this.point = AllBinary.getInstance(PointFactory).ZERO_ZERO
    nothing
end

function initGameGlobalsFactory(this::GameGlobalsFactory)
    initFieldsGameGlobalsFactory(this)
end

function newGameGlobalsFactory()
    this = GameGlobalsFactory()
    initGameGlobalsFactory(this)
    this
end


function getInstance(::Type{GameGlobalsFactory})
        return staticGet_instance(GameGlobalsFactory)
end

