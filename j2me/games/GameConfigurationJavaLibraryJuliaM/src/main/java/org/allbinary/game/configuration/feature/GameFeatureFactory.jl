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

mutable struct GameFeatureFactory <: JObject
    SOUND::Any
    MUSIC::Any
    SCREEN_SHAKE::Any
    POST_IMAGE_LOADING_MODIFICATION::Any
    HEALTH_BARS::Any
    DAMAGE_FLOATERS::Any
    GAME_INPUT_LAYER_PROCESSOR::Any
    ARTIFICIAL_INTELLEGENCE_PROCESSOR::Any
    COLLIDABLE_INTERFACE_LAYER_PROCESSOR::Any
    TICKABLE_LAYER_PROCESSOR::Any
    CHEATING::Any
    DROPPED_ITEMS::Any
    DROPPED_ITEMS_FROM_DEATH::Any
    TEST_DESTROYED_LAYER_PROCESSOR::Any
    COLLISIONS_WITH_SOURCE::Any
    COLLISIONS_FORCED_TWO_DIMENSIONAL::Any
    GameFeatureFactory() = new()
end

const GameFeatureFactory_instanceValue = Ref{Any}(nothing)
const GameFeatureFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameFeatureFactory})
    if !GameFeatureFactory_instanceSet[]
        GameFeatureFactory_instanceSet[] = true
        GameFeatureFactory_instanceValue[] = newGameFeatureFactory()
    end
    GameFeatureFactory_instanceValue[]
end
function staticSet_instance(::Type{GameFeatureFactory}, value)
    GameFeatureFactory_instanceSet[] = true
    GameFeatureFactory_instanceValue[] = value
end

function initFieldsGameFeatureFactory(this::GameFeatureFactory)
    this.SOUND = nothing
    this.MUSIC = nothing
    this.SCREEN_SHAKE = nothing
    this.POST_IMAGE_LOADING_MODIFICATION = nothing
    this.HEALTH_BARS = nothing
    this.DAMAGE_FLOATERS = nothing
    this.GAME_INPUT_LAYER_PROCESSOR = nothing
    this.ARTIFICIAL_INTELLEGENCE_PROCESSOR = nothing
    this.COLLIDABLE_INTERFACE_LAYER_PROCESSOR = nothing
    this.TICKABLE_LAYER_PROCESSOR = nothing
    this.CHEATING = nothing
    this.DROPPED_ITEMS = nothing
    this.DROPPED_ITEMS_FROM_DEATH = nothing
    this.TEST_DESTROYED_LAYER_PROCESSOR = nothing
    this.COLLISIONS_WITH_SOURCE = nothing
    this.COLLISIONS_FORCED_TWO_DIMENSIONAL = nothing
    this.SOUND = newGameFeature("Sound")
    this.MUSIC = newGameFeature("Music")
    this.SCREEN_SHAKE = newFeature("Screen Shake")
    this.POST_IMAGE_LOADING_MODIFICATION = newFeature("Post Image Loading Modification (Scaling, Rotation, or Other)")
    this.HEALTH_BARS = newGameFeature("Health Bars")
    this.DAMAGE_FLOATERS = newGameFeature("Damage Floaters")
    this.GAME_INPUT_LAYER_PROCESSOR = newGameFeature("Game Input Layer Processor")
    this.ARTIFICIAL_INTELLEGENCE_PROCESSOR = newGameFeature("Artificial Intelligence Layer Processor")
    this.COLLIDABLE_INTERFACE_LAYER_PROCESSOR = newGameFeature("Collidable Interface Layer Processor")
    this.TICKABLE_LAYER_PROCESSOR = newGameFeature("Tickable Layer Processor")
    this.CHEATING = newGameFeature("Cheating")
    this.DROPPED_ITEMS = newGameFeature("Drops")
    this.DROPPED_ITEMS_FROM_DEATH = newGameFeature("Drops from Dead")
    this.TEST_DESTROYED_LAYER_PROCESSOR = newGameFeature("Destroyed Layer Processor")
    this.COLLISIONS_WITH_SOURCE = newGameFeature("Allow Collisions With Source")
    this.COLLISIONS_FORCED_TWO_DIMENSIONAL = newGameFeature("Collisions Forced Two Dimensional")
    nothing
end


function getInstance(::Type{GameFeatureFactory})
        return staticGet_instance(GameFeatureFactory)
end


function initGameFeatureFactory(this::GameFeatureFactory)
        initFieldsGameFeatureFactory(this)
        nothing
        nothing
end

function newGameFeatureFactory()
    this = GameFeatureFactory()
    initGameFeatureFactory(this)
    this
end

