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
# package org.allbinary.game.input

mutable struct GameKeyUtil <: JObject
    GameKeyUtil() = new()
end

const GameKeyUtil_instanceValue = Ref{Any}(nothing)
const GameKeyUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{GameKeyUtil})
    if !GameKeyUtil_instanceSet[]
        GameKeyUtil_instanceSet[] = true
        GameKeyUtil_instanceValue[] = newGameKeyUtil()
    end
    GameKeyUtil_instanceValue[]
end
function staticSet_instance(::Type{GameKeyUtil}, value)
    GameKeyUtil_instanceSet[] = true
    GameKeyUtil_instanceValue[] = value
end

function initFieldsGameKeyUtil(this::GameKeyUtil)
    nothing
end

function initGameKeyUtil(this::GameKeyUtil)
    initFieldsGameKeyUtil(this)
end

function newGameKeyUtil()
    this = GameKeyUtil()
    initGameKeyUtil(this)
    this
end


function isDirectionKey(this::GameKeyUtil, key)
        if key == staticGet_UP(Canvas) || key == staticGet_DOWN(Canvas) || key == staticGet_LEFT(Canvas) || key == staticGet_RIGHT(Canvas)
            return true
        else
            return false
        end
end


function getInstance(::Type{GameKeyUtil})
        return staticGet_instance(GameKeyUtil)
end

