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

mutable struct ResourceRelativeRelationshipFactory <: JObject
    basicArrayListUtil::Any
    hashtable::Any
    initialized::Bool
    ResourceRelativeRelationshipFactory() = new()
end


function initFieldsResourceRelativeRelationshipFactory(this::ResourceRelativeRelationshipFactory)
    this.basicArrayListUtil = nothing
    this.hashtable = nothing
    this.initialized = false
    this.basicArrayListUtil = AllBinary.getInstance(BasicArrayListUtil)
    this.hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    this.initialized = false
    nothing
end

function initResourceRelativeRelationshipFactory(this::ResourceRelativeRelationshipFactory)
    initFieldsResourceRelativeRelationshipFactory(this)
end

function newResourceRelativeRelationshipFactory()
    this = ResourceRelativeRelationshipFactory()
    initResourceRelativeRelationshipFactory(this)
    this
end


function init(this::ResourceRelativeRelationshipFactory, level)
        AllBinary.setInitialized(this, true)
        nothing
end


function getResourceRelativeRelationshipList(this::ResourceRelativeRelationshipFactory, resource)
        local listCanBeNull = AllBinary.get(this.hashtable, resource)
        if listCanBeNull === nothing
            return AllBinary.getImmutableInstance(this.basicArrayListUtil)
        end
        return (listCanBeNull)
end


function addResourceRelativeRelationship(this::ResourceRelativeRelationshipFactory, resource, hardPoint)
        local list = AllBinary.getResourceRelativeRelationshipList(this, resource)
        if list === AllBinary.getImmutableInstance(this.basicArrayListUtil)
            list = newBasicArrayListD()
        end
        AllBinary.add(list, hardPoint)
        AllBinary.put(this.hashtable, resource, list)
        nothing
end


function isLoadingLevel(this::ResourceRelativeRelationshipFactory, level)
        return false
end


function isFeature(this::ResourceRelativeRelationshipFactory)
        return false
end


function setInitialized(this::ResourceRelativeRelationshipFactory, initialized)
        this.initialized = initialized
        nothing
end


function isInitialized(this::ResourceRelativeRelationshipFactory)
        return this.initialized
end

