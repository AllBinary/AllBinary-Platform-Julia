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

mutable struct BaseGameInitialization <: JObject
    resourceInitializationArray::Any
    portion::Int32
    initialized::Bool
    EARLY_RESOURCES::Int32
    GAME_RESOURCES::Int32
    EARLY_CHANGABLE_RESOURCES::Int32
    GAME_CHANGABLE_RESOURCES::Int32
    gameInitialized::Bool
    allLoaded::Bool
    BaseGameInitialization() = new()
end

const BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONValue = Ref{Any}(nothing)
const BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONSet = Ref(false)
function staticGet_NULL_BASE_GAME_INITIALIZATION(::Type{BaseGameInitialization})
    if !BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONSet[]
        BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONSet[] = true
        BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONValue[] = newBaseGameInitialization(jNewArray(Any, Int32(0), nothing), Int32(0))
    end
    BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONValue[]
end
function staticSet_NULL_BASE_GAME_INITIALIZATION(::Type{BaseGameInitialization}, value)
    BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONSet[] = true
    BaseGameInitialization_NULL_BASE_GAME_INITIALIZATIONValue[] = value
end

function initFieldsBaseGameInitialization(this::BaseGameInitialization)
    this.resourceInitializationArray = nothing
    this.portion = Int32(0)
    this.initialized = false
    this.EARLY_RESOURCES = Int32(0)
    this.GAME_RESOURCES = Int32(0)
    this.EARLY_CHANGABLE_RESOURCES = Int32(0)
    this.GAME_CHANGABLE_RESOURCES = Int32(0)
    this.gameInitialized = false
    this.allLoaded = false
    
    
    this.initialized = false
    this.EARLY_RESOURCES = Int32(0)
    this.GAME_RESOURCES = Int32(1)
    this.EARLY_CHANGABLE_RESOURCES = Int32(2)
    this.GAME_CHANGABLE_RESOURCES = Int32(3)
    this.gameInitialized = false
    this.allLoaded = false
    nothing
end


function initBaseGameInitialization(this::BaseGameInitialization, resourceInitializationArray, portion)
        initFieldsBaseGameInitialization(this)
        this.resourceInitializationArray = resourceInitializationArray
        this.portion = portion
        nothing
end

function newBaseGameInitialization(resourceInitializationArray, portion)
    this = BaseGameInitialization()
    initBaseGameInitialization(this, resourceInitializationArray, portion)
    this
end


function initKey(this::BaseGameInitialization, portion)
        nothing
        nothing
end


function initKeyMapping(this::BaseGameInitialization, abeClientInformation, portion)
        if AllBinary.isChangedFeature(AllBinary.getInstance(ChangedGameFeatureListener), AllBinary.getInstance(InputFeatureFactory).INPUT_MAPPING)
            AllBinary.init(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory)), abeClientInformation)
            AllBinary.addNormalPortion(AllBinary.getInstance(ProgressCanvasFactory), Int32(50), "Game Keys")
            AllBinary.remove(AllBinary.getInstance(ChangedGameFeatureListener), AllBinary.getInstance(InputFeatureFactory).INPUT_MAPPING)
        end
        nothing
end


function init(this::BaseGameInitialization, abeClientInformation, commandListener, level)
        local resourceLoadingLevelFactory = AllBinary.getInstance(ResourceLoadingLevelFactory)
        if !AllBinary.isInitialized(this) && (level == AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_ALL) || level == AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_EARLY))
            local localPortion::Int32 = Int32(40)
            if level == AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_EARLY)
                localPortion = Int32(8)
            end
            AllBinary.setInitialized(this, true)
            AllBinary.initKey(this, AllBinary.getPortion(this))
            AllBinary.initKeyMapping(this, abeClientInformation, AllBinary.getPortion(this))
            AllBinary.init(AllBinary.getInstance(GameKeyEventFactory))
            local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
            AllBinary.addNormalPortion(progressCanvas, localPortion, "Game Key Events")
            AllBinary.init(AllBinary.getInstance(BasicTouchInputFactory), AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))))
            AllBinary.getInstance(CancelTouchButtonInputFactory)
            AllBinary.addNormalPortion(progressCanvas, localPortion, "Touch Input")
            AllBinary.init(AllBinary.getInstance(CompleteMotionGestureInputToGameMotionGestureInput))
            AllBinary.addNormalPortion(progressCanvas, localPortion, "Motion Input")
            AllBinary.init(GameFeatureImageCacheFactory)
            AllBinary.addNormalPortion(progressCanvas, localPortion, "Image Cache")
            AllBinary.init(this.resourceInitializationArray[this.EARLY_RESOURCES + 1])
        end
        nothing
end


function resourceInitialization(this::BaseGameInitialization, level)
        local resourceLoadingLevelFactory = AllBinary.getInstance(ResourceLoadingLevelFactory)
        if AllBinary.resourceAnimationChange(this) && level == AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_EARLY)
            AllBinary.clearResources(this)
            AllBinary.init(this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES + 1])
        end
        if AllBinary.resourceAnimationChange(this) && level == AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_ALL)
            if this.allLoaded
                AllBinary.clearResources(this)
            end
            if AllBinary.size(AllBinary.getList(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory))) == Int32(0)
                AllBinary.init(this.resourceInitializationArray[this.EARLY_CHANGABLE_RESOURCES + 1])
            end
            AllBinary.init(this.resourceInitializationArray[this.GAME_CHANGABLE_RESOURCES + 1])
            this.allLoaded = true
        end
        nothing
end


function resourceAnimationChange(this::BaseGameInitialization)
        local changedGameFeatureListener = AllBinary.getInstance(ChangedGameFeatureListener)
        local gameConfigurationCentral = AllBinary.getInstance(GameConfigurationCentral)
        if AllBinary.isChangedGameConfiguration(changedGameFeatureListener, gameConfigurationCentral.SCALE)
            return true
        end
        if AllBinary.isChangedFeature(AllBinary.getInstance(ChangedGameFeatureListener), AllBinary.getInstance(MainFeatureFactory).STATIC)
            return true
        end
        return false
end


function clearResources(this::BaseGameInitialization)
        this.allLoaded = false
        AllBinary.releaseAll(GameFeatureImageCacheFactory)
        local featuredAnimationInterfaceFactoryInterfaceFactory = AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory)
        AllBinary.clear(featuredAnimationInterfaceFactoryInterfaceFactory)
        AllBinary.clear(AllBinary.getInstance(FeaturedResourceRelativeRelationshipFactory))
        nothing
end


function setGameInitialized(this::BaseGameInitialization, gameInitialized)
        this.gameInitialized = gameInitialized
        nothing
end


function isGameInitialized(this::BaseGameInitialization)
        return this.gameInitialized
end


function getPortion(this::BaseGameInitialization)
        return this.portion
end


function setInitialized(this::BaseGameInitialization, initialized)
        this.initialized = initialized
        nothing
end


function isInitialized(this::BaseGameInitialization)
        return this.initialized
end

