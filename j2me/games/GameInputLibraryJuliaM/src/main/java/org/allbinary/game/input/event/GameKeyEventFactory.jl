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

mutable struct GameKeyEventFactory <: JObject
    logUtil::Any
    TOUCH_BUTTON_SOURCE_ID::Int32
    MOTION_GESTURE_SOURCE_ID::Int32
    MAX_SOURCES::Int32
    ARRAY::Any
    GameKeyEventFactory() = new()
end

const GameKeyEventFactory_instanceValue = Ref{Any}(nothing)
const GameKeyEventFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{GameKeyEventFactory})
    if !GameKeyEventFactory_instanceSet[]
        GameKeyEventFactory_instanceSet[] = true
        GameKeyEventFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    GameKeyEventFactory_instanceValue[]
end
function staticSet_instance(::Type{GameKeyEventFactory}, value)
    GameKeyEventFactory_instanceSet[] = true
    GameKeyEventFactory_instanceValue[] = value
end

function initFieldsGameKeyEventFactory(this::GameKeyEventFactory)
    this.logUtil = nothing
    this.TOUCH_BUTTON_SOURCE_ID = Int32(0)
    this.MOTION_GESTURE_SOURCE_ID = Int32(0)
    this.MAX_SOURCES = Int32(0)
    this.ARRAY = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.TOUCH_BUTTON_SOURCE_ID = Int32(2)
    this.MOTION_GESTURE_SOURCE_ID = Int32(3)
    this.MAX_SOURCES = Int32(4)
    this.ARRAY = jNewArrayOf(Vector{Any}, this.MAX_SOURCES, () -> jNewArray(Any, AllBinary.getInstance(InputFactory).MAX, nothing))
    nothing
end


function getInstance(::Type{GameKeyEventFactory})
        if staticGet_instance(GameKeyEventFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(GameKeyEventFactory, newGameKeyEventFactory())
        end
        return (staticGet_instance(GameKeyEventFactory))
end


function initGameKeyEventFactory(this::GameKeyEventFactory)
        initFieldsGameKeyEventFactory(this)
        nothing
        nothing
end

function newGameKeyEventFactory()
    this = GameKeyEventFactory()
    initGameKeyEventFactory(this)
    this
end


function init(this::GameKeyEventFactory)
        local nullUtil = AllBinary.getInstance(NullUtil)
        local size::Int32 = AllBinary.getInstance(InputFactory).MAX
        let
            local index::Int32 = this.MAX_SOURCES
            while (index -= Int32(1)) >= Int32(0)
            try
            let
                local index2::Int32 = size
                while (index2 -= Int32(1)) >= Int32(0)
                try
                this.ARRAY[index + 1][index2 + 1] = AllBinary.createEvent(GameKeyEvent, nullUtil.NULL_OBJECT, index, index2)
                finally
                end
                end
            end
            finally
            end
            end
        end
        nothing
end


function getInstanceForKey(this::GameKeyEventFactory, anyType, key)
        local gameKeyEvent = this.ARRAY[AllBinary.getSourceId(anyType) + 1][key + 1]
        return gameKeyEvent
end


function getInstanceForInput(this::GameKeyEventFactory, anyType, input)
        local gameKeyEvent = this.ARRAY[AllBinary.getSourceId(anyType) + 1][AllBinary.getId(input) + 1]
        return gameKeyEvent
end

