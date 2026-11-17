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

mutable struct GameInitializationUtil <: JObject
    EVENT::Any
    GameInitializationUtil() = new()
end

const GameInitializationUtil_instanceValue = Ref{Any}(nothing)
const GameInitializationUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{GameInitializationUtil})
    if !GameInitializationUtil_instanceSet[]
        GameInitializationUtil_instanceSet[] = true
        GameInitializationUtil_instanceValue[] = newGameInitializationUtil()
    end
    GameInitializationUtil_instanceValue[]
end
function staticSet_instance(::Type{GameInitializationUtil}, value)
    GameInitializationUtil_instanceSet[] = true
    GameInitializationUtil_instanceValue[] = value
end

function initFieldsGameInitializationUtil(this::GameInitializationUtil)
    this.EVENT = nothing
    this.EVENT = newGameInitializedEvent(this)
    nothing
end

function initGameInitializationUtil(this::GameInitializationUtil)
    initFieldsGameInitializationUtil(this)
end

function newGameInitializationUtil()
    this = GameInitializationUtil()
    initGameInitializationUtil(this)
    this
end


function initDemo(this::GameInitializationUtil, abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
        local mainFeatureFactory = AllBinary.getInstance(MainFeatureFactory)
        if AllBinary.isChangedFeature(AllBinary.getInstance(ChangedGameFeatureListener), mainFeatureFactory.STATIC)
            local gameInitializationInterface = AllBinary.getInstance(gameInitializationInterfaceFactoryInterface)
            local features = AllBinary.getInstance(Features)
            if AllBinary.isFeature(features, mainFeatureFactory.LOAD_ALL)
                AllBinary.initGame(this, abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
            elseif AllBinary.isFeature(features, mainFeatureFactory.LOAD_ONDEMAND)
                local resourceLoadingLevelFactory = AllBinary.getInstance(ResourceLoadingLevelFactory)
                AllBinary.init(gameInitializationInterface, abeClientInformation, AllBinary.getCustomCommandListener(canvas), AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_EARLY))
                AllBinary.setResourceLoadingLevel(this.EVENT, resourceLoadingLevelFactory.LOAD_EARLY)
            else
                throw(jNewException("Exception", "No Loading Feature Available"))
            end
            AllBinary.fireEvent(AllBinary.getInstance(GameInitializedEventHandler), this.EVENT)
        end
        nothing
end


function initGame(this::GameInitializationUtil, abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
        if AllBinary.isChangedFeature(AllBinary.getInstance(ChangedGameFeatureListener), AllBinary.getInstance(MainFeatureFactory).STATIC)
            local gameInitializationInterface = AllBinary.getInstance(gameInitializationInterfaceFactoryInterface)
            local resourceLoadingLevelFactory = AllBinary.getInstance(ResourceLoadingLevelFactory)
            AllBinary.init(gameInitializationInterface, abeClientInformation, AllBinary.getCustomCommandListener(canvas), AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_ALL))
            AllBinary.setResourceLoadingLevel(this.EVENT, resourceLoadingLevelFactory.LOAD_ALL)
            AllBinary.fireEvent(AllBinary.getInstance(GameInitializedEventHandler), this.EVENT)
            AllBinary.remove(AllBinary.getInstance(ChangedGameFeatureListener), AllBinary.getInstance(MainFeatureFactory).STATIC)
        end
        nothing
end


function getInstance(::Type{GameInitializationUtil})
        return staticGet_instance(GameInitializationUtil)
end

