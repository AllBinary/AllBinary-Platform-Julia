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

mutable struct FeaturedResourceFactory <: JObject
    logUtil::Any
    list::Any
    commonStrings::Any
    ANIMATION_FEATURES::Any
    IMAGE_LABEL::Any
    IMAGE_GRAPHICS_ARRAY::Any
    IMAGE_GRAPHICS_ROTATION::Any
    SPRITE_QUARTER::Any
    SPRITE_FULL::Any
    IS_LOADING_LEVEL_LABEL::Any
    IS_FEATURE::Any
    GAME_FEATURE_CONTROLLED::Any
    FeaturedResourceFactory() = new()
end


function initFieldsFeaturedResourceFactory(this::FeaturedResourceFactory)
    this.logUtil = nothing
    this.list = nothing
    this.commonStrings = nothing
    this.ANIMATION_FEATURES = nothing
    this.IMAGE_LABEL = nothing
    this.IMAGE_GRAPHICS_ARRAY = nothing
    this.IMAGE_GRAPHICS_ROTATION = nothing
    this.SPRITE_QUARTER = nothing
    this.SPRITE_FULL = nothing
    this.IS_LOADING_LEVEL_LABEL = nothing
    this.IS_FEATURE = nothing
    this.GAME_FEATURE_CONTROLLED = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.list = newBasicArrayListD()
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.ANIMATION_FEATURES = "Animation Features: Vector: "
    this.IMAGE_LABEL = " Image: "
    this.IMAGE_GRAPHICS_ARRAY = "Image Array: "
    this.IMAGE_GRAPHICS_ROTATION = "Image Rotate: "
    this.SPRITE_QUARTER = " Sprite Quarter: "
    this.SPRITE_FULL = " Sprite Full: "
    this.IS_LOADING_LEVEL_LABEL = " isLoadingLevel "
    this.IS_FEATURE = " isFeature: "
    this.GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: "
    nothing
end


function initFeaturedResourceFactory(this::FeaturedResourceFactory)
        initFieldsFeaturedResourceFactory(this)
        nothing
        nothing
end

function newFeaturedResourceFactory()
    this = FeaturedResourceFactory()
    initFeaturedResourceFactory(this)
    this
end


function init(this::FeaturedResourceFactory, level)
        local size::Int32 = AllBinary.size(this.list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local featureInterface = (this.list.objectArray[index + 1])
            local isLoadingLevel::Bool = AllBinary.isLoadingLevel(featureInterface, level)
            local isFeature::Bool = AllBinary.isFeature(featureInterface)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendboolean(AllBinary.append(AllBinary.appendboolean(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), this.GAME_FEATURE_CONTROLLED), AllBinary.toString(featureInterface)), this.IS_LOADING_LEVEL_LABEL), AllBinary.getLevelString(AllBinary.getInstance(ResourceLoadingLevelFactory), level)), AllBinary.getInstance(CommonSeps).COLON_SEP), isLoadingLevel), this.IS_FEATURE), isFeature)), this, this.commonStrings.INIT)
            if isLoadingLevel && isFeature
                AllBinary.init(featureInterface, level)
            end
            finally
                index += Int32(1)
            end
            end
        end
        local features = AllBinary.getInstance(Features)
        local graphicsFeatureFactory = AllBinary.getInstance(GraphicsFeatureFactory)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, this.ANIMATION_FEATURES)
        AllBinary.appendboolean(stringBuffer, AllBinary.isFeature(features, graphicsFeatureFactory.VECTOR_GRAPHICS))
        AllBinary.append(stringBuffer, this.IMAGE_LABEL)
        AllBinary.appendboolean(stringBuffer, AllBinary.isFeature(features, graphicsFeatureFactory.IMAGE_GRAPHICS))
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, this.commonStrings.INIT)
        if AllBinary.isFeature(features, graphicsFeatureFactory.IMAGE_GRAPHICS)
            AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
            AllBinary.append(stringBuffer, this.IMAGE_GRAPHICS_ARRAY)
            AllBinary.appendboolean(stringBuffer, AllBinary.isFeature(features, graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS))
            AllBinary.append(stringBuffer, this.IMAGE_GRAPHICS_ROTATION)
            AllBinary.appendboolean(stringBuffer, AllBinary.isFeature(features, graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS))
            AllBinary.append(stringBuffer, this.SPRITE_QUARTER)
            AllBinary.appendboolean(stringBuffer, AllBinary.isFeature(features, graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS))
            AllBinary.append(stringBuffer, this.SPRITE_FULL)
            AllBinary.appendboolean(stringBuffer, AllBinary.isFeature(features, graphicsFeatureFactory.SPRITE_FULL_GRAPHICS))
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, this.commonStrings.INIT)
        end
        nothing
end


function clear(this::FeaturedResourceFactory)
        AllBinary.clear(this.list)
        nothing
end


function add(this::FeaturedResourceFactory, featureInterface)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).START_LABEL), AllBinary.toString(AllBinary.getInstance(StringUtil), featureInterface))), this, this.commonStrings.ADD)
        AllBinary.add(this.list, featureInterface)
        nothing
end


function getList(this::FeaturedResourceFactory)
        return this.list
end

