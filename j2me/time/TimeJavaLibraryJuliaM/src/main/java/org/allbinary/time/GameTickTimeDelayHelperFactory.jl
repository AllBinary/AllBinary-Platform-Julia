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
# package org.allbinary.time

mutable struct GameTickTimeDelayHelperFactory <: JObject
    GameTickTimeDelayHelperFactory() = new()
end

const GameTickTimeDelayHelperFactory_instanceValue = Ref{Any}(nothing)
const GameTickTimeDelayHelperFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameTickTimeDelayHelperFactory})
    if !GameTickTimeDelayHelperFactory_instanceSet[]
        GameTickTimeDelayHelperFactory_instanceSet[] = true
        GameTickTimeDelayHelperFactory_instanceValue[] = newGameTickTimeDelayHelper(-Int32(1))
    end
    GameTickTimeDelayHelperFactory_instanceValue[]
end
function staticSet_instance(::Type{GameTickTimeDelayHelperFactory}, value)
    GameTickTimeDelayHelperFactory_instanceSet[] = true
    GameTickTimeDelayHelperFactory_instanceValue[] = value
end

function initFieldsGameTickTimeDelayHelperFactory(this::GameTickTimeDelayHelperFactory)
    nothing
end


function getInstance(::Type{GameTickTimeDelayHelperFactory})
        return staticGet_instance(GameTickTimeDelayHelperFactory)
end


function initGameTickTimeDelayHelperFactory(this::GameTickTimeDelayHelperFactory)
        initFieldsGameTickTimeDelayHelperFactory(this)
        nothing
        nothing
end

function newGameTickTimeDelayHelperFactory()
    this = GameTickTimeDelayHelperFactory()
    initGameTickTimeDelayHelperFactory(this)
    this
end

