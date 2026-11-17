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

mutable struct GameFeatureChoiceGroups <: JObject
    hashtable::Any
    GameFeatureChoiceGroups() = new()
end

const GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue = Ref{Any}(nothing)
const GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet = Ref(false)
function staticGet_gameFeatureChoiceGroupsExclusive(::Type{GameFeatureChoiceGroups})
    if !GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet[]
        GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet[] = true
        GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue[] = newGameFeatureChoiceGroups()
    end
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue[]
end
function staticSet_gameFeatureChoiceGroupsExclusive(::Type{GameFeatureChoiceGroups}, value)
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveSet[] = true
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusiveValue[] = value
end
const GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue = Ref{Any}(nothing)
const GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet = Ref(false)
function staticGet_gameFeatureChoiceGroupsMultiple(::Type{GameFeatureChoiceGroups})
    if !GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet[]
        GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet[] = true
        GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue[] = newGameFeatureChoiceGroups()
    end
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue[]
end
function staticSet_gameFeatureChoiceGroupsMultiple(::Type{GameFeatureChoiceGroups}, value)
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleSet[] = true
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultipleValue[] = value
end

function initFieldsGameFeatureChoiceGroups(this::GameFeatureChoiceGroups)
    this.hashtable = nothing
    this.hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    nothing
end


function initGameFeatureChoiceGroups(this::GameFeatureChoiceGroups)
        initFieldsGameFeatureChoiceGroups(this)
        nothing
        nothing
end

function newGameFeatureChoiceGroups()
    this = GameFeatureChoiceGroups()
    initGameFeatureChoiceGroups(this)
    this
end


function getExclusiveInstance(::Type{GameFeatureChoiceGroups})
        return staticGet_gameFeatureChoiceGroupsExclusive(GameFeatureChoiceGroups)
end


function getMultipleInstance(::Type{GameFeatureChoiceGroups})
        return staticGet_gameFeatureChoiceGroupsMultiple(GameFeatureChoiceGroups)
end


function get(this::GameFeatureChoiceGroups)
        return this.hashtable
end


function add(this::GameFeatureChoiceGroups, name, list)
        AllBinary.put(this.hashtable, name, list)
        nothing
end

