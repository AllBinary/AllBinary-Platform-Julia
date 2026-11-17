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
# package org.allbinary.animation.resource

mutable struct BaseResourceAnimationInterfaceFactoryInterfaceFactory <: JObject
    logUtil::Any
    commonStrings::Any
    hashtable::Any
    rectangleHashtable::Any
    rectangleArrayOfArraysHashtable::Any
    name::Any
    initialized::Bool
    BaseResourceAnimationInterfaceFactoryInterfaceFactory() = new()
end


function initFieldsBaseResourceAnimationInterfaceFactoryInterfaceFactory(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.hashtable = nothing
    this.rectangleHashtable = nothing
    this.rectangleArrayOfArraysHashtable = nothing
    this.name = nothing
    this.initialized = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    
    
    this.initialized = false
    nothing
end


function initBaseResourceAnimationInterfaceFactoryInterfaceFactory(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, name, hashtable, rectangleHashtable, rectangleArrayHashtable)
        initFieldsBaseResourceAnimationInterfaceFactoryInterfaceFactory(this)
        this.hashtable = hashtable
        this.rectangleHashtable = rectangleHashtable
        this.rectangleArrayOfArraysHashtable = rectangleArrayHashtable
        this.name = name
        nothing
end

function newBaseResourceAnimationInterfaceFactoryInterfaceFactory(name, hashtable, rectangleHashtable, rectangleArrayHashtable)
    this = BaseResourceAnimationInterfaceFactoryInterfaceFactory()
    initBaseResourceAnimationInterfaceFactoryInterfaceFactory(this, name, hashtable, rectangleHashtable, rectangleArrayHashtable)
    this
end


function getName(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory)
        return this.name
end


function init(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, level)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Available List of Animations: "), AllBinary.toString(this.hashtable))), this, commonStrings.INIT)
        AllBinary.setInitialized(this, true)
        nothing
end


function initImageCache(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, imageCache, level)
        nothing
        nothing
end


function add(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource, animationInterfaceFactoryInterface)
        if AllBinary.containsKey(this.hashtable, (resource))
            throw(jNewException("Exception", AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Resource Already Created: "), resource))))
        end
        AllBinary.put(this.hashtable, resource, animationInterfaceFactoryInterface)
        nothing
end


function getBasicAnimationInterfaceFactoryInstance(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource)
        local basicAnimationInterfaceFactoryInterfaceCanBeNull = AllBinary.get(this.hashtable, resource)
        if basicAnimationInterfaceFactoryInterfaceCanBeNull === nothing
            return staticGet_NULL_NOT_FOR_USE_ANIMATION_FACTORY(NullAnimationFactory)
        end
        return (basicAnimationInterfaceFactoryInterfaceCanBeNull)
end


function getRectangle(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource)
        local rectangleCanBeNull = AllBinary.get(this.rectangleHashtable, resource)
        if rectangleCanBeNull === nothing
            return staticGet_SINGLETON(RectangleFactory)
        end
        return (rectangleCanBeNull)
end


function addRectangle(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource, rectangle)
        AllBinary.put(this.rectangleHashtable, resource, rectangle)
        nothing
end


function getRectangleArrayOfArrays(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource)
        local valueCanBeNull = AllBinary.get(this.rectangleArrayOfArraysHashtable, resource)
        if valueCanBeNull !== nothing
            local rectangleArrayOfArrays = (valueCanBeNull)
            return rectangleArrayOfArrays
        else
            return staticGet_ARRAY_OF_ARRAYS(RectangleFactory)
        end
end


function addRectangleArrayOfArrays(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, resource, rectangleArrayOfArrays)
        AllBinary.put(this.rectangleArrayOfArraysHashtable, resource, rectangleArrayOfArrays)
        nothing
end


function isFeature(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory)
        return false
end


function isLoadingLevel(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, level)
        local resourceLoadingLevelFactory = AllBinary.getInstance(ResourceLoadingLevelFactory)
        if level == AllBinary.getLevel(resourceLoadingLevelFactory.LOAD_ALL)
            return true
        else
            return false
        end
end


function toString(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory)
        return AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), jClassName(this)), AllBinary.getInstance(CommonSeps).SEMICOLON), AllBinary.getInstance(CommonSeps).SPACE), this.name))
end


function getHashtable(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory)
        return this.hashtable
end


function getRectangleHashtable(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory)
        return this.rectangleHashtable
end


function getRectangleArrayOfArraysHashtable(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory)
        return this.rectangleArrayOfArraysHashtable
end


function setInitialized(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory, initialized)
        this.initialized = initialized
        nothing
end


function isInitialized(this::BaseResourceAnimationInterfaceFactoryInterfaceFactory)
        return this.initialized
end

