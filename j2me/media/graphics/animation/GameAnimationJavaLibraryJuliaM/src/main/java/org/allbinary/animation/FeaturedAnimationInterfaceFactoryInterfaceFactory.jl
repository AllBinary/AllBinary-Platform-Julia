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
# package org.allbinary.animation

# extends FeaturedResourceFactory: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct FeaturedAnimationInterfaceFactoryInterfaceFactory <: JObject
    FeaturedAnimationInterfaceFactoryInterfaceFactory() = new()
end

const FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCEValue = Ref{Any}(nothing)
const FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCESet = Ref(false)
function staticGet_INSTANCE(::Type{FeaturedAnimationInterfaceFactoryInterfaceFactory})
    if !FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCESet[]
        FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCESet[] = true
        FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCEValue[] = newFeaturedAnimationInterfaceFactoryInterfaceFactory()
    end
    FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCEValue[]
end
function staticSet_INSTANCE(::Type{FeaturedAnimationInterfaceFactoryInterfaceFactory}, value)
    FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCESet[] = true
    FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCEValue[] = value
end

function initFieldsFeaturedAnimationInterfaceFactoryInterfaceFactory(this::FeaturedAnimationInterfaceFactoryInterfaceFactory)
    nothing
end


function initFeaturedAnimationInterfaceFactoryInterfaceFactory(this::FeaturedAnimationInterfaceFactoryInterfaceFactory)
        initFeaturedResourceFactory(this)
        initFieldsFeaturedAnimationInterfaceFactoryInterfaceFactory(this)
        nothing
        nothing
end

function newFeaturedAnimationInterfaceFactoryInterfaceFactory()
    this = FeaturedAnimationInterfaceFactoryInterfaceFactory()
    initFeaturedAnimationInterfaceFactoryInterfaceFactory(this)
    this
end


function getInstance(::Type{FeaturedAnimationInterfaceFactoryInterfaceFactory})
        return staticGet_INSTANCE(FeaturedAnimationInterfaceFactoryInterfaceFactory)
end


function getRectangle(this::FeaturedAnimationInterfaceFactoryInterfaceFactory, resource)
        return AllBinary.getRectangleXY(this, resource, Int32(0), Int32(0))
end


function getRectangleXY(this::FeaturedAnimationInterfaceFactoryInterfaceFactory, resource, x, y)
        local pointFactory = AllBinary.getInstance(PointFactory)
        local list = AllBinary.getList(this)
        local scale::Int32 = AllBinary.intValue(AllBinary.getValue(AllBinary.getInstance(GameConfigurationCentral).SCALE))
        local size::Int32 = AllBinary.size(AllBinary.getList(this))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local featureInterface = (list.objectArray[index + 1])
            if AllBinary.isFeature(featureInterface)
                local rectangle = AllBinary.getRectangle(featureInterface, resource)
                if rectangle !== staticGet_SINGLETON(RectangleFactory)
                    return newRectangle(AllBinary.createXY(pointFactory, x, y), ((AllBinary.getWidth(rectangle) * scale) >> Int32(1)), ((AllBinary.getHeight(rectangle) * scale) >> Int32(1)))
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        throw(jNewException("Exception", AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "No rectangle available for current feature selection or Resource: "), resource))))
end


function getProcedural(this::FeaturedAnimationInterfaceFactoryInterfaceFactory, resource)
        return (AllBinary.getBasicAnimationInterfaceFactoryInstance(this, resource))
end


function get(this::FeaturedAnimationInterfaceFactoryInterfaceFactory, resource)
        return (AllBinary.getBasicAnimationInterfaceFactoryInstance(this, resource))
end


function getBasicAnimationInterfaceFactoryInstance(this::FeaturedAnimationInterfaceFactoryInterfaceFactory, resource)
        local list = AllBinary.getList(this)
        local resourceTypeAvailableList = newBasicArrayListD()
        local size::Int32 = AllBinary.size(AllBinary.getList(this))
        local featureInterface = nothing
        local animationInterfaceFactoryInterface = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            featureInterface = (list.objectArray[index + 1])
            if AllBinary.isFeature(featureInterface)
                AllBinary.add(resourceTypeAvailableList, featureInterface)
                animationInterfaceFactoryInterface = AllBinary.getBasicAnimationInterfaceFactoryInstance(featureInterface, resource)
                if animationInterfaceFactoryInterface !== staticGet_NULL_NOT_FOR_USE_ANIMATION_FACTORY(NullAnimationFactory)
                    return animationInterfaceFactoryInterface
                end
            end
            finally
                index += Int32(1)
            end
            end
        end
        if AllBinary.size(resourceTypeAvailableList) > Int32(0)
            local NO_ANIMATION_AVAILABLE_FROM = "No animation available from: "
            local FOR_FACTORIES = " factories: "
            local FOR_RESOURCE = " for Resource: "
            local HAS_KEY = " has: "
            local RESOURCES_LABEL = " resources "
            stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, NO_ANIMATION_AVAILABLE_FROM)
            AllBinary.appendint(stringBuffer, AllBinary.size(resourceTypeAvailableList))
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).FORWARD_SLASH)
            AllBinary.appendint(stringBuffer, size)
            AllBinary.append(stringBuffer, FOR_FACTORIES)
            local size2::Int32 = AllBinary.size(resourceTypeAvailableList)
            let
                index = Int32(0)
                while index < size2
                try
                AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.get(resourceTypeAvailableList, index)))
                AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).COMMA_SEP)
                finally
                    index += Int32(1)
                end
                end
            end
            AllBinary.append(stringBuffer, FOR_RESOURCE)
            AllBinary.append(stringBuffer, resource)
            let
                index = Int32(0)
                while index < size
                try
                AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).NEW_LINE)
                featureInterface = (list.objectArray[index + 1])
                if AllBinary.isFeature(featureInterface)
                    AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), featureInterface))
                    AllBinary.append(stringBuffer, HAS_KEY)
                    AllBinary.appendint(stringBuffer, AllBinary.size(AllBinary.getHashtable(featureInterface)))
                    AllBinary.append(stringBuffer, RESOURCES_LABEL)
                end
                finally
                    index += Int32(1)
                end
                end
            end
            throw(jNewException("Exception", AllBinary.toString(stringBuffer)))
        else
            local stringBuffer = newStringMaker()
            let
                index = Int32(0)
                while index < size
                try
                featureInterface = (list.objectArray[index + 1])
                AllBinary.append(stringBuffer, AllBinary.toString(featureInterface))
                AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
                finally
                    index += Int32(1)
                end
                end
            end
            local result = AllBinary.toString(stringBuffer)
            AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
            throw(jNewException("Exception", AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(stringBuffer, "No feature resource type available for Resource: "), resource), " Resource Factories Available: "), result))))
        end
end

