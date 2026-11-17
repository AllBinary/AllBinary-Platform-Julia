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
# package org.allbinary.game.init

mutable struct BasicBuildGameInitializerFactory <: JObject
    BasicBuildGameInitializerFactory() = new()
end

const BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue = Ref{Any}(nothing)
const BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet = Ref(false)
function staticGet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY(::Type{BasicBuildGameInitializerFactory})
    if !BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet[]
        BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet[] = true
        BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue[] = newBasicBuildGameInitializerFactory()
    end
    BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue[]
end
function staticSet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY(::Type{BasicBuildGameInitializerFactory}, value)
    BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet[] = true
    BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue[] = value
end

function initFieldsBasicBuildGameInitializerFactory(this::BasicBuildGameInitializerFactory)
    nothing
end

function initBasicBuildGameInitializerFactory(this::BasicBuildGameInitializerFactory)
    initFieldsBasicBuildGameInitializerFactory(this)
end

function newBasicBuildGameInitializerFactory()
    this = BasicBuildGameInitializerFactory()
    initBasicBuildGameInitializerFactory(this)
    this
end


function getInstance(this::BasicBuildGameInitializerFactory)
        return staticGet_NULL_BASE_GAME_INITIALIZATION(BaseGameInitialization)
end

