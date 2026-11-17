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
# package org.allbinary.game.configuration.event

# extends BaseChangedGameFeatureListener: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ChangedGameFeatureListener <: JObject
    ChangedGameFeatureListener() = new()
end

const ChangedGameFeatureListener_gameFeatureListenerValue = Ref{Any}(nothing)
const ChangedGameFeatureListener_gameFeatureListenerSet = Ref(false)
function staticGet_gameFeatureListener(::Type{ChangedGameFeatureListener})
    if !ChangedGameFeatureListener_gameFeatureListenerSet[]
        ChangedGameFeatureListener_gameFeatureListenerSet[] = true
        ChangedGameFeatureListener_gameFeatureListenerValue[] = newChangedGameFeatureListener()
    end
    ChangedGameFeatureListener_gameFeatureListenerValue[]
end
function staticSet_gameFeatureListener(::Type{ChangedGameFeatureListener}, value)
    ChangedGameFeatureListener_gameFeatureListenerSet[] = true
    ChangedGameFeatureListener_gameFeatureListenerValue[] = value
end

function initFieldsChangedGameFeatureListener(this::ChangedGameFeatureListener)
    nothing
end

function initChangedGameFeatureListener(this::ChangedGameFeatureListener)
    initBaseChangedGameFeatureListener(this)
    initFieldsChangedGameFeatureListener(this)
end

function newChangedGameFeatureListener()
    this = ChangedGameFeatureListener()
    initChangedGameFeatureListener(this)
    this
end


function getInstance(::Type{ChangedGameFeatureListener})
        return staticGet_gameFeatureListener(ChangedGameFeatureListener)
end


function isChangedGameConfiguration(this::ChangedGameFeatureListener, gameConfiguration)
        return AllBinary.contains(this.list, gameConfiguration)
end

