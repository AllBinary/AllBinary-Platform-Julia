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
# package org.allbinary.game.input.event

# extends AllBinaryEventObject: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameKeyEvent <: JObject
    sourceId::Int32
    repeated::Bool
    key::Int32
    gameActionKey::Int32
    originalKey::Int32
    GameKeyEvent() = new()
end

const GameKeyEvent_NONEValue = Ref{Any}(nothing)
const GameKeyEvent_NONESet = Ref(false)
function staticGet_NONE(::Type{GameKeyEvent})
    if !GameKeyEvent_NONESet[]
        GameKeyEvent_NONESet[] = true
        GameKeyEvent_NONEValue[] = newGameKeyEvent(AllBinary.getInstance(NullUtil).NULL_OBJECT, -Int32(1), -Int32(1), -Int32(1), -Int32(1), false)
    end
    GameKeyEvent_NONEValue[]
end
function staticSet_NONE(::Type{GameKeyEvent}, value)
    GameKeyEvent_NONESet[] = true
    GameKeyEvent_NONEValue[] = value
end

function initFieldsGameKeyEvent(this::GameKeyEvent)
    this.sourceId = Int32(0)
    this.repeated = false
    this.key = Int32(0)
    this.gameActionKey = Int32(0)
    this.originalKey = Int32(0)
    
    this.repeated = false
    
    this.gameActionKey = Int32(0)
    this.originalKey = Int32(0)
    nothing
end


function createEvent(::Type{GameKeyEvent}, anyType, sourceId, key)
        return newGameKeyEvent(anyType, sourceId, Int32(0), Int32(0), key, false)
end


function initGameKeyEvent(this::GameKeyEvent, anyType, sourceId, originalKey, gameActionKey, key, repeated)
        initAllBinaryEventObject(this, anyType)
        initFieldsGameKeyEvent(this)
        this.sourceId = sourceId
        AllBinary.setOriginalKey(this, originalKey)
        this.key = key
        AllBinary.setGameActionKey(this, gameActionKey)
        AllBinary.setRepeatEvents(this, repeated)
        nothing
end

function newGameKeyEvent(anyType, sourceId, originalKey, gameActionKey, key, repeated)
    this = GameKeyEvent()
    initGameKeyEvent(this, anyType, sourceId, originalKey, gameActionKey, key, repeated)
    this
end


function init(this::GameKeyEvent, anyType)
        AllBinary.setSource(this, anyType)
        nothing
end


function setRepeatEvents(this::GameKeyEvent, repeated)
        this.repeated = repeated
        nothing
end


function hasRepeatEvents(this::GameKeyEvent)
        return this.repeated
end


function getKey(this::GameKeyEvent)
        return this.key
end


function toString(this::GameKeyEvent)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "\nKey: ")
        AllBinary.appendint(stringBuffer, AllBinary.getKey(this))
        return AllBinary.toString(stringBuffer)
end


function getOriginalKey(this::GameKeyEvent)
        return this.originalKey
end


function setOriginalKey(this::GameKeyEvent, originalKey)
        this.originalKey = originalKey
        nothing
end


function getGameActionKey(this::GameKeyEvent)
        return this.gameActionKey
end


function setGameActionKey(this::GameKeyEvent, gameActionKey)
        this.gameActionKey = gameActionKey
        nothing
end


function getSourceId(this::GameKeyEvent)
        return this.sourceId
end

