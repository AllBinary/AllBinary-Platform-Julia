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
# package org.allbinary.game.resource

mutable struct ResourceLoadingLevelFactory <: JObject
    LOAD_EARLY::Any
    LOAD_TOUCH::Any
    LOAD_GAME::Any
    LEVEL::Any
    MAX_LEVEL::Any
    LOAD_ALL::Any
    RESOURCE_LOADING_LEVEL_ARRAY::Any
    ResourceLoadingLevelFactory() = new()
end

const ResourceLoadingLevelFactory_instanceValue = Ref{Any}(nothing)
const ResourceLoadingLevelFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ResourceLoadingLevelFactory})
    if !ResourceLoadingLevelFactory_instanceSet[]
        ResourceLoadingLevelFactory_instanceSet[] = true
        ResourceLoadingLevelFactory_instanceValue[] = newResourceLoadingLevelFactory()
    end
    ResourceLoadingLevelFactory_instanceValue[]
end
function staticSet_instance(::Type{ResourceLoadingLevelFactory}, value)
    ResourceLoadingLevelFactory_instanceSet[] = true
    ResourceLoadingLevelFactory_instanceValue[] = value
end

function initFieldsResourceLoadingLevelFactory(this::ResourceLoadingLevelFactory)
    this.LOAD_EARLY = nothing
    this.LOAD_TOUCH = nothing
    this.LOAD_GAME = nothing
    this.LEVEL = nothing
    this.MAX_LEVEL = nothing
    this.LOAD_ALL = nothing
    this.RESOURCE_LOADING_LEVEL_ARRAY = nothing
    this.LOAD_EARLY = newResourceLoadingLevel("Load Early", staticGet_MAX_VALUE(Integer))
    this.LOAD_TOUCH = newResourceLoadingLevel("Load Touch", staticGet_MAX_VALUE(Integer) - Int32(1))
    this.LOAD_GAME = newResourceLoadingLevel("Load Game", staticGet_MAX_VALUE(Integer) - Int32(2))
    this.LEVEL = newResourceLoadingLevel("Level", staticGet_MAX_VALUE(Integer) - Int32(99))
    this.MAX_LEVEL = newResourceLoadingLevel("Max Level", staticGet_MAX_VALUE(Integer) - Int32(100))
    this.LOAD_ALL = newResourceLoadingLevel("Load All", -Int32(1))
    this.RESOURCE_LOADING_LEVEL_ARRAY = Any[this.LOAD_ALL, this.MAX_LEVEL, this.LEVEL, this.LOAD_GAME, this.LOAD_TOUCH, this.LOAD_EARLY]
    nothing
end

function initResourceLoadingLevelFactory(this::ResourceLoadingLevelFactory)
    initFieldsResourceLoadingLevelFactory(this)
end

function newResourceLoadingLevelFactory()
    this = ResourceLoadingLevelFactory()
    initResourceLoadingLevelFactory(this)
    this
end


function getInstance(::Type{ResourceLoadingLevelFactory})
        return staticGet_instance(ResourceLoadingLevelFactory)
end


function getLevelString(this::ResourceLoadingLevelFactory, level)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(this.RESOURCE_LOADING_LEVEL_ARRAY))
            try
            if level == AllBinary.getLevel(this.RESOURCE_LOADING_LEVEL_ARRAY[index + 1])
                return AllBinary.getName(this.RESOURCE_LOADING_LEVEL_ARRAY[index + 1])
            end
            finally
                index += Int32(1)
            end
            end
        end
        return jstr(level)
end

