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
# package org.allbinary.game.configuration

mutable struct GameConfigurationSingleton <: JObject
    list::Any
    hashtable::Any
    GameConfigurationSingleton() = new()
end

const GameConfigurationSingleton_SINGLETONValue = Ref{Any}(nothing)
const GameConfigurationSingleton_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{GameConfigurationSingleton})
    if !GameConfigurationSingleton_SINGLETONSet[]
        GameConfigurationSingleton_SINGLETONSet[] = true
        GameConfigurationSingleton_SINGLETONValue[] = newGameConfigurationSingleton()
    end
    GameConfigurationSingleton_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{GameConfigurationSingleton}, value)
    GameConfigurationSingleton_SINGLETONSet[] = true
    GameConfigurationSingleton_SINGLETONValue[] = value
end

function initFieldsGameConfigurationSingleton(this::GameConfigurationSingleton)
    this.list = nothing
    this.hashtable = nothing
    
    
    nothing
end


function getInstance(::Type{GameConfigurationSingleton})
        return staticGet_SINGLETON(GameConfigurationSingleton)
end


function initGameConfigurationSingleton(this::GameConfigurationSingleton)
        initFieldsGameConfigurationSingleton(this)
        this.list = newBasicArrayListD()
        this.hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
        nothing
end

function newGameConfigurationSingleton()
    this = GameConfigurationSingleton()
    initGameConfigurationSingleton(this)
    this
end


function getInstanceByName(this::GameConfigurationSingleton, name)
        return (AllBinary.get(this.hashtable, name))
end


function getOptionsBasicArrayList(this::GameConfigurationSingleton)
        return this.list
end


function add(this::GameConfigurationSingleton, gameConfiguration)
        AllBinary.add(this.list, gameConfiguration)
        nothing
end


function getHashtable(this::GameConfigurationSingleton)
        return this.hashtable
end

