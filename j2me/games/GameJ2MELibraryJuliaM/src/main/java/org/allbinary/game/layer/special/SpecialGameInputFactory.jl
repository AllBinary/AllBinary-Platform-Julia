#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.game.layer.special

mutable struct SpecialGameInputFactory <: JObject
    SpecialGameInputFactory() = new()
end

const SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTValue = Ref{Any}(nothing)
const SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTSet = Ref(false)
function staticGet_NO_SPECIAL_GAME_INPUT(::Type{SpecialGameInputFactory})
    if !SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTSet[]
        SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTSet[] = true
        SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTValue[] = newSpecialGameInput()
    end
    SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTValue[]
end
function staticSet_NO_SPECIAL_GAME_INPUT(::Type{SpecialGameInputFactory}, value)
    SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTSet[] = true
    SpecialGameInputFactory_NO_SPECIAL_GAME_INPUTValue[] = value
end

function initFieldsSpecialGameInputFactory(this::SpecialGameInputFactory)
    nothing
end

function initSpecialGameInputFactory(this::SpecialGameInputFactory)
    initFieldsSpecialGameInputFactory(this)
end

function newSpecialGameInputFactory()
    this = SpecialGameInputFactory()
    initSpecialGameInputFactory(this)
    this
end

