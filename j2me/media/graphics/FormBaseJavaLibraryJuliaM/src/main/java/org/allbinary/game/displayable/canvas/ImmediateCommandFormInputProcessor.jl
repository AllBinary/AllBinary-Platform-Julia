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

# extends CommandFormInputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ImmediateCommandFormInputProcessor <: JObject
    timeHelper::Any
    gameCommandCanvas::Any
    ImmediateCommandFormInputProcessor() = new()
end


function initFieldsImmediateCommandFormInputProcessor(this::ImmediateCommandFormInputProcessor)
    this.timeHelper = nothing
    this.gameCommandCanvas = nothing
    this.timeHelper = newTimeDelayHelper(Int32(25))
    
    nothing
end


function initImmediateCommandFormInputProcessor(this::ImmediateCommandFormInputProcessor, gameKeyEventList, playerInputId, gameCommandCanvas, form)
        initCommandFormInputProcessor(this, gameKeyEventList, playerInputId, gameCommandCanvas, form)
        initFieldsImmediateCommandFormInputProcessor(this)
        this.gameCommandCanvas = gameCommandCanvas
        nothing
end

function newImmediateCommandFormInputProcessor(gameKeyEventList, playerInputId, gameCommandCanvas, form)
    this = ImmediateCommandFormInputProcessor()
    initImmediateCommandFormInputProcessor(this, gameKeyEventList, playerInputId, gameCommandCanvas, form)
    this
end


function onPressGameKeyEvent(this::ImmediateCommandFormInputProcessor, gameKeyEvent)
        try
            AllBinary.onPressGameKeyEvent(this, gameKeyEvent)
            if AllBinary.isTimeTNT(this.timeHelper)
                AllBinary.processInputList(this)
                AllBinary.onChangeRepaint(this.gameCommandCanvas.repaintBehavior, AllBinary.getCanvas(this))
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_PRESS_GAME_KEY, e)
        end
        nothing
end


function onDownGameKeyEvent(this::ImmediateCommandFormInputProcessor, gameKeyEvent)
        try
            AllBinary.onDownGameKeyEvent(this, gameKeyEvent)
            if AllBinary.isTimeTNT(this.timeHelper)
                AllBinary.processInputList(this)
                AllBinary.onChangeRepaint(this.gameCommandCanvas.repaintBehavior, AllBinary.getCanvas(this))
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_DOWN_GAME_KEY, e)
        end
        nothing
end


function onUpGameKeyEvent(this::ImmediateCommandFormInputProcessor, gameKeyEvent)
        try
            AllBinary.onUpGameKeyEvent(this, gameKeyEvent)
            if AllBinary.isTimeTNT(this.timeHelper)
                AllBinary.processInputList(this)
                AllBinary.onChangeRepaint(this.gameCommandCanvas.repaintBehavior, AllBinary.getCanvas(this))
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_UP_GAME_KEY, e)
        end
        nothing
end


function onMotionGestureEvent(this::ImmediateCommandFormInputProcessor, motionGestureEvent)
        try
            AllBinary.onMotionGestureEvent(this, motionGestureEvent)
            if AllBinary.isTimeTNT(this.timeHelper)
                AllBinary.processInputList(this)
                AllBinary.onChangeRepaint(this.gameCommandCanvas.repaintBehavior, AllBinary.getCanvas(this))
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "onMotionGestureEvent", e)
        end
        nothing
end

