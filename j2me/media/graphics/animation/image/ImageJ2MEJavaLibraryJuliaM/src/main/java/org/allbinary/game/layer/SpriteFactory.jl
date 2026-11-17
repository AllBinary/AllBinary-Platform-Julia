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
# package org.allbinary.game.layer

mutable struct SpriteFactory <: JObject
    logUtil::Any
    SpriteFactory() = new()
end

const SpriteFactory_instanceValue = Ref{Any}(nothing)
const SpriteFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{SpriteFactory})
    if !SpriteFactory_instanceSet[]
        SpriteFactory_instanceSet[] = true
        SpriteFactory_instanceValue[] = newSpriteFactory()
    end
    SpriteFactory_instanceValue[]
end
function staticSet_instance(::Type{SpriteFactory}, value)
    SpriteFactory_instanceSet[] = true
    SpriteFactory_instanceValue[] = value
end

function initFieldsSpriteFactory(this::SpriteFactory)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initSpriteFactory(this::SpriteFactory)
    initFieldsSpriteFactory(this)
end

function newSpriteFactory()
    this = SpriteFactory()
    initSpriteFactory(this)
    this
end


function getInstance(::Type{SpriteFactory})
        return staticGet_instance(SpriteFactory)
end


function createSprite(this::SpriteFactory, image, frameWidth, frameHeight)
        return newSprite(image, frameWidth, frameHeight)
end

