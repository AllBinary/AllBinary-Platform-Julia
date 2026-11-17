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
# package org.allbinary.game.input.motion.action

mutable struct GameKeyCompleteMotionGestureInputEventFactory <: JObject
    logUtil::Any
    eventList::Any
    GameKeyCompleteMotionGestureInputEventFactory() = new()
end

const GameKeyCompleteMotionGestureInputEventFactory_SINGLETONValue = Ref{Any}(nothing)
const GameKeyCompleteMotionGestureInputEventFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{GameKeyCompleteMotionGestureInputEventFactory})
    if !GameKeyCompleteMotionGestureInputEventFactory_SINGLETONSet[]
        GameKeyCompleteMotionGestureInputEventFactory_SINGLETONSet[] = true
        GameKeyCompleteMotionGestureInputEventFactory_SINGLETONValue[] = newGameKeyCompleteMotionGestureInputEventFactory()
    end
    GameKeyCompleteMotionGestureInputEventFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{GameKeyCompleteMotionGestureInputEventFactory}, value)
    GameKeyCompleteMotionGestureInputEventFactory_SINGLETONSet[] = true
    GameKeyCompleteMotionGestureInputEventFactory_SINGLETONValue[] = value
end

function initFieldsGameKeyCompleteMotionGestureInputEventFactory(this::GameKeyCompleteMotionGestureInputEventFactory)
    this.logUtil = nothing
    this.eventList = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.eventList = newBasicArrayListD()
    nothing
end

function initGameKeyCompleteMotionGestureInputEventFactory(this::GameKeyCompleteMotionGestureInputEventFactory)
    initFieldsGameKeyCompleteMotionGestureInputEventFactory(this)
end

function newGameKeyCompleteMotionGestureInputEventFactory()
    this = GameKeyCompleteMotionGestureInputEventFactory()
    initGameKeyCompleteMotionGestureInputEventFactory(this)
    this
end


function getInstance(::Type{GameKeyCompleteMotionGestureInputEventFactory})
        return staticGet_SINGLETON(GameKeyCompleteMotionGestureInputEventFactory)
end


function add(this::GameKeyCompleteMotionGestureInputEventFactory, gameKeyCompleteMotionGestureInputEvent)
        AllBinary.add(this.eventList, gameKeyCompleteMotionGestureInputEvent)
        nothing
end


function updateAll(this::GameKeyCompleteMotionGestureInputEventFactory)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).START_LABEL), AllBinary.size(this.eventList))), this, "updateAll")
        let
            local index::Int32 = AllBinary.size(this.eventList) - Int32(1)
            while index >= Int32(0)
            try
            local gameKeyCompleteMotionGestureInputEvent = (this.eventList.objectArray[index + 1])
            AllBinary.update(gameKeyCompleteMotionGestureInputEvent)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

