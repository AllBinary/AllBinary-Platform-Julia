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
# package org.allbinary.game.layer.resources

mutable struct OnDemandLoader <: JObject
    onDemandResourcesFactory::Any
    gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory::Any
    resourceAnimationInterfaceFactoryInterfaceFactory::Any
    OnDemandLoader() = new()
end


function initFieldsOnDemandLoader(this::OnDemandLoader)
    this.onDemandResourcesFactory = nothing
    this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = nothing
    this.resourceAnimationInterfaceFactoryInterfaceFactory = nothing
    
    
    
    nothing
end


function initOnDemandLoader(this::OnDemandLoader, onDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory)
        initFieldsOnDemandLoader(this)
        this.onDemandResourcesFactory = onDemandResourcesFactory
        this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
        this.resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory
        nothing
end

function newOnDemandLoader(onDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory)
    this = OnDemandLoader()
    initOnDemandLoader(this, onDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory)
    this
end


function init(this::OnDemandLoader, imageCache, level, loadingString)
        local resourceLoadingLevelFactory = AllBinary.getInstance(ResourceLoadingLevelFactory)
        if AllBinary.isFeature(AllBinary.getInstance(Features), AllBinary.getInstance(MainFeatureFactory).LOAD_ALL)
            if AllBinary.isInitialized(this.resourceAnimationInterfaceFactoryInterfaceFactory)
                return
            end
            AllBinary.initAll(this, imageCache, loadingString)
        elseif level != AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_ALL)
            local layerPlacementInterfaceBasicArrayListFactoryInterface = AllBinary.getInstance(this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, level)
            AllBinary.initLevel(this, layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString)
        end
        nothing
end


function initAll(this::OnDemandLoader, imageCache, loadingString)
        local index::Int32 = Int32(0)
        local portion::Int32 = Int32(120)
        local onDemandResources = nothing
        let
            local onDemandIndex::Int32 = AllBinary.size(this.onDemandResourcesFactory)
            while (onDemandIndex -= Int32(1)) >= Int32(0)
            try
            onDemandResources = AllBinary.remove(this.onDemandResourcesFactory, onDemandIndex)
            if onDemandResources !== staticGet_NULL_ON_DEMAND_RESOURCES(OnDemandResources)
                index = AllBinary.initAt(onDemandResources, imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
            end
            finally
            end
            end
        end
        nothing
end


function initLevel(this::OnDemandLoader, layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        local portion::Int32 = Int32(120)
        local index::Int32 = Int32(0)
        local onDemandArray = AllBinary.getOnDemandResources(layerPlacementInterfaceBasicArrayListFactoryInterface)
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), commonStrings.START), Int32(Base.length(onDemandArray)))), this, "initLevel")
        local onDemandResources = nothing
        let
            local onDemandIndex::Int32 = Int32(Base.length(onDemandArray))
            while (onDemandIndex -= Int32(1)) >= Int32(0)
            try
            onDemandResources = AllBinary.remove(this.onDemandResourcesFactory, onDemandArray[onDemandIndex + 1])
            if onDemandResources !== staticGet_NULL_ON_DEMAND_RESOURCES(OnDemandResources)
                index = AllBinary.initAt(onDemandResources, imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
            end
            finally
            end
            end
        end
        nothing
end

