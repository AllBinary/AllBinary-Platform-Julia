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
# package org.allbinary.game.displayable.canvas

# extends PlayerGameInput: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicMenuInputProcessor <: JObject
    motionGestureEventList::Any
    canvas::Any
    BasicMenuInputProcessor() = new()
end


function initFieldsBasicMenuInputProcessor(this::BasicMenuInputProcessor)
    this.motionGestureEventList = nothing
    this.canvas = nothing
    this.motionGestureEventList = newBasicArrayListD()
    this.canvas = staticGet_NULL_CANVAS(NullCanvas)
    nothing
end


function initBasicMenuInputProcessor(this::BasicMenuInputProcessor, gameKeyEventList, playerInputId, gameCanvas)
        initPlayerGameInput(this, gameKeyEventList, newBasicArrayListD(), playerInputId)
        initFieldsBasicMenuInputProcessor(this)
        this.canvas = gameCanvas
        nothing
end

function newBasicMenuInputProcessor(gameKeyEventList, playerInputId, gameCanvas)
    this = BasicMenuInputProcessor()
    initBasicMenuInputProcessor(this, gameKeyEventList, playerInputId, gameCanvas)
    this
end


function onMotionGestureEvent(this::BasicMenuInputProcessor, motionGestureEvent)
        AllBinary.add(this.motionGestureEventList, motionGestureEvent)
        nothing
end


function onScrolledMotionGestureEvent(this::BasicMenuInputProcessor, motionGestureEvent)
        nothing
        nothing
end


function setCanvas(this::BasicMenuInputProcessor, canvas)
        this.canvas = canvas
        nothing
end


function getCanvas(this::BasicMenuInputProcessor)
        return (this.canvas)
end


function processInputList(this::BasicMenuInputProcessor)
        return -Int32(1)
end

