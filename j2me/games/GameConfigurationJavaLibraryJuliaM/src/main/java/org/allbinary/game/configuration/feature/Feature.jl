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

mutable struct Feature <: JObject
    name::Any
    Feature() = new()
end

const Feature_hashtableValue = Ref{Any}(nothing)
const Feature_hashtableSet = Ref(false)
function staticGet_hashtable(::Type{Feature})
    if !Feature_hashtableSet[]
        Feature_hashtableSet[] = true
        Feature_hashtableValue[] = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
    end
    Feature_hashtableValue[]
end
function staticSet_hashtable(::Type{Feature}, value)
    Feature_hashtableSet[] = true
    Feature_hashtableValue[] = value
end

function initFieldsFeature(this::Feature)
    this.name = nothing
    
    nothing
end


function initFeature(this::Feature, name)
        initFieldsFeature(this)
        this.name = name
        AllBinary.add(Feature, name, this)
        AllBinary.add(AllBinary.getInstance(ChangedGameFeatureListener), this)
        nothing
end

function newFeature(name)
    this = Feature()
    initFeature(this, name)
    this
end


function getInstance(::Type{Feature}, name)
        return (AllBinary.get(staticGet_hashtable(Feature), name))
end


function add(::Type{Feature}, name, gameFeature)
        AllBinary.put(staticGet_hashtable(Feature), name, gameFeature)
        nothing
end


function toString(this::Feature)
        return AllBinary.getName(this)
end


function getName(this::Feature)
        return this.name
end

