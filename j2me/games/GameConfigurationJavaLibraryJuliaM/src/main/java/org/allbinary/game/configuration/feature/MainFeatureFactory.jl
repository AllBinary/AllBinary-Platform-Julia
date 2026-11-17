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
# package org.allbinary.game.configuration.feature

mutable struct MainFeatureFactory <: JObject
    FULL_SCREEN::Any
    TITLE_BAR::Any
    STATIC::Any
    LOAD_ONDEMAND::Any
    LOAD_ALL::Any
    MainFeatureFactory() = new()
end

const MainFeatureFactory_instanceValue = Ref{Any}(nothing)
const MainFeatureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{MainFeatureFactory})
    if !MainFeatureFactory_instanceSet[]
        MainFeatureFactory_instanceSet[] = true
        MainFeatureFactory_instanceValue[] = newMainFeatureFactory()
    end
    MainFeatureFactory_instanceValue[]
end
function staticSet_instance(::Type{MainFeatureFactory}, value)
    MainFeatureFactory_instanceSet[] = true
    MainFeatureFactory_instanceValue[] = value
end

function initFieldsMainFeatureFactory(this::MainFeatureFactory)
    this.FULL_SCREEN = nothing
    this.TITLE_BAR = nothing
    this.STATIC = nothing
    this.LOAD_ONDEMAND = nothing
    this.LOAD_ALL = nothing
    this.FULL_SCREEN = newFeature("Full Screen")
    this.TITLE_BAR = newFeature("Title Bar")
    this.STATIC = newFeature("Static Dependent Feature")
    this.LOAD_ONDEMAND = newFeature("Load OnDemand")
    this.LOAD_ALL = newFeature("Load All")
    nothing
end

function initMainFeatureFactory(this::MainFeatureFactory)
    initFieldsMainFeatureFactory(this)
end

function newMainFeatureFactory()
    this = MainFeatureFactory()
    initMainFeatureFactory(this)
    this
end


function getInstance(::Type{MainFeatureFactory})
        return staticGet_instance(MainFeatureFactory)
end

