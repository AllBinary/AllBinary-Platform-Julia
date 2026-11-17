#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable

mutable struct GameTickDisplayInfoSingleton <: JObject
    displayInfoSingleton::Any
    lastWidth::Int32
    lastHeight::Int32
    lastHalfWidth::Int32
    lastHalfHeight::Int32
    GameTickDisplayInfoSingleton() = new()
end

const GameTickDisplayInfoSingleton_instanceValue = Ref{Any}(nothing)
const GameTickDisplayInfoSingleton_instanceSet = Ref(false)
function staticGet_instance(::Type{GameTickDisplayInfoSingleton})
    if !GameTickDisplayInfoSingleton_instanceSet[]
        GameTickDisplayInfoSingleton_instanceSet[] = true
        GameTickDisplayInfoSingleton_instanceValue[] = newGameTickDisplayInfoSingleton()
    end
    GameTickDisplayInfoSingleton_instanceValue[]
end
function staticSet_instance(::Type{GameTickDisplayInfoSingleton}, value)
    GameTickDisplayInfoSingleton_instanceSet[] = true
    GameTickDisplayInfoSingleton_instanceValue[] = value
end

function initFieldsGameTickDisplayInfoSingleton(this::GameTickDisplayInfoSingleton)
    this.displayInfoSingleton = nothing
    this.lastWidth = Int32(0)
    this.lastHeight = Int32(0)
    this.lastHalfWidth = Int32(0)
    this.lastHalfHeight = Int32(0)
    this.displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
    this.lastWidth = AllBinary.getLastWidth(this.displayInfoSingleton)
    this.lastHeight = AllBinary.getLastHeight(this.displayInfoSingleton)
    this.lastHalfWidth = AllBinary.getLastHalfWidth(this.displayInfoSingleton)
    this.lastHalfHeight = AllBinary.getLastHalfHeight(this.displayInfoSingleton)
    nothing
end

function initGameTickDisplayInfoSingleton(this::GameTickDisplayInfoSingleton)
    initFieldsGameTickDisplayInfoSingleton(this)
end

function newGameTickDisplayInfoSingleton()
    this = GameTickDisplayInfoSingleton()
    initGameTickDisplayInfoSingleton(this)
    this
end


function getInstance(::Type{GameTickDisplayInfoSingleton})
        return staticGet_instance(GameTickDisplayInfoSingleton)
end


function update(this::GameTickDisplayInfoSingleton)
        this.lastWidth = AllBinary.getLastWidth(this.displayInfoSingleton)
        this.lastHeight = AllBinary.getLastHeight(this.displayInfoSingleton)
        this.lastHalfWidth = AllBinary.getLastHalfWidth(this.displayInfoSingleton)
        this.lastHalfHeight = AllBinary.getLastHalfHeight(this.displayInfoSingleton)
        nothing
end


function getLastWidth(this::GameTickDisplayInfoSingleton)
        return this.lastWidth
end


function getLastHeight(this::GameTickDisplayInfoSingleton)
        return this.lastHeight
end


function getLastHalfWidth(this::GameTickDisplayInfoSingleton)
        return this.lastHalfWidth
end


function getLastHalfHeight(this::GameTickDisplayInfoSingleton)
        return this.lastHalfHeight
end

