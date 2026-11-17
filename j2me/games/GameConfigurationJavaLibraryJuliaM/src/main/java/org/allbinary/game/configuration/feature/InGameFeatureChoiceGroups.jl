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

mutable struct InGameFeatureChoiceGroups <: JObject
    hashtable::Any
    InGameFeatureChoiceGroups() = new()
end

const InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue = Ref{Any}(nothing)
const InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet = Ref(false)
function staticGet_gameFeatureChoiceGroupsExclusive(::Type{InGameFeatureChoiceGroups})
    if !InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet[]
        InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet[] = true
        InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue[] = newInGameFeatureChoiceGroups()
    end
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue[]
end
function staticSet_gameFeatureChoiceGroupsExclusive(::Type{InGameFeatureChoiceGroups}, value)
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet[] = true
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue[] = value
end
const InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue = Ref{Any}(nothing)
const InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet = Ref(false)
function staticGet_gameFeatureChoiceGroupsMultiple(::Type{InGameFeatureChoiceGroups})
    if !InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet[]
        InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet[] = true
        InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue[] = newInGameFeatureChoiceGroups()
    end
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue[]
end
function staticSet_gameFeatureChoiceGroupsMultiple(::Type{InGameFeatureChoiceGroups}, value)
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet[] = true
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue[] = value
end

function initFieldsInGameFeatureChoiceGroups(this::InGameFeatureChoiceGroups)
    this.hashtable = nothing
    this.hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    nothing
end


function initInGameFeatureChoiceGroups(this::InGameFeatureChoiceGroups)
        initFieldsInGameFeatureChoiceGroups(this)
        nothing
        nothing
end

function newInGameFeatureChoiceGroups()
    this = InGameFeatureChoiceGroups()
    initInGameFeatureChoiceGroups(this)
    this
end


function getExclusiveInstance(::Type{InGameFeatureChoiceGroups})
        return staticGet_gameFeatureChoiceGroupsExclusive(InGameFeatureChoiceGroups)
end


function getMultipleInstance(::Type{InGameFeatureChoiceGroups})
        return staticGet_gameFeatureChoiceGroupsMultiple(InGameFeatureChoiceGroups)
end


function get(this::InGameFeatureChoiceGroups)
        return this.hashtable
end


function add(this::InGameFeatureChoiceGroups, name, list)
        AllBinary.put(this.hashtable, name, list)
        nothing
end

