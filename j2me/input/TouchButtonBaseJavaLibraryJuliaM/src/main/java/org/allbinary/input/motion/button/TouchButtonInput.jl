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
# package org.allbinary.input.motion.button

# extends Input: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TouchButtonInput <: JObject
    logUtil::Any
    gameKeyEventFactory::Any
    TOUCH_BUTTON_SOURCE_ID::Int32
    gameKeyEvent::Any
    TouchButtonInput() = new()
end


function initFieldsTouchButtonInput(this::TouchButtonInput)
    this.logUtil = nothing
    this.gameKeyEventFactory = nothing
    this.TOUCH_BUTTON_SOURCE_ID = Int32(0)
    this.gameKeyEvent = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.gameKeyEventFactory = AllBinary.getInstance(GameKeyEventFactory)
    this.TOUCH_BUTTON_SOURCE_ID = this.gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID
    this.gameKeyEvent = staticGet_NONE(GameKeyEvent)
    nothing
end


function initTouchButtonInput(this::TouchButtonInput, id, name)
        initInput(this, id, name)
        initFieldsTouchButtonInput(this)
        local inputFactory = AllBinary.getInstance(InputFactory)
        AllBinary.add(inputFactory, AllBinary.getId(this), this)
        nothing
end

function newTouchButtonInput(id, name)
    this = TouchButtonInput()
    initTouchButtonInput(this, id, name)
    this
end


function update(this::TouchButtonInput, inputToGameKeyMapping)
        try
            local gameKey = AllBinary.getInstance(inputToGameKeyMapping, AllBinary.getId(this))
            this.gameKeyEvent = AllBinary.getInstanceForInput(this.gameKeyEventFactory, this, gameKey)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)
        end
        nothing
end


function getSourceId(this::TouchButtonInput)
        return this.TOUCH_BUTTON_SOURCE_ID
end


function getGameKeyEvent(this::TouchButtonInput)
        return this.gameKeyEvent
end

