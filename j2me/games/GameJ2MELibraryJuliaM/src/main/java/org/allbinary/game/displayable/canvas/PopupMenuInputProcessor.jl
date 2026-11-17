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

# extends BasicMenuInputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PopupMenuInputProcessor <: JObject
    rectangleCollisionUtil::Any
    CLICK_DELAY::Int32
    clickTimeHelper::Any
    rectangle::Any
    PopupMenuInputProcessor() = new()
end


function initFieldsPopupMenuInputProcessor(this::PopupMenuInputProcessor)
    this.rectangleCollisionUtil = nothing
    this.CLICK_DELAY = Int32(0)
    this.clickTimeHelper = nothing
    this.rectangle = nothing
    this.rectangleCollisionUtil = AllBinary.getInstance(RectangleCollisionUtil)
    this.CLICK_DELAY = Int32(120)
    this.clickTimeHelper = newTimeDelayHelper(this.CLICK_DELAY)
    
    nothing
end


function initPopupMenuInputProcessor(this::PopupMenuInputProcessor, gameKeyEventList, playerInputId, gameCanvas, rectangle)
        initBasicMenuInputProcessor(this, gameKeyEventList, playerInputId, gameCanvas)
        initFieldsPopupMenuInputProcessor(this)
        this.rectangle = rectangle
        nothing
end

function newPopupMenuInputProcessor(gameKeyEventList, playerInputId, gameCanvas, rectangle)
    this = PopupMenuInputProcessor()
    initPopupMenuInputProcessor(this, gameKeyEventList, playerInputId, gameCanvas, rectangle)
    this
end


function init(this::PopupMenuInputProcessor, rectangle)
        this.rectangle = rectangle
        nothing
end


function processInput(this::PopupMenuInputProcessor, key)
        if key == staticGet_KEY_STAR(Canvas)
            local gameCanvas = (AllBinary.getCanvas(this))
            AllBinary.toggleMenu(gameCanvas)
            return Int32(1)
        end
        return Int32(0)
end


function processInputList(this::PopupMenuInputProcessor)
        try
            local motionInputsIndex::Int32 = AllBinary.processMotionInputs(this)
            local list = AllBinary.getGameKeyEventList(this)
            local size::Int32 = AllBinary.size(list)
            local key::Int32 = Int32(0)
            local gameKeyEvent = nothing
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                gameKeyEvent = (list.objectArray[index + 1])
                if gameKeyEvent !== nothing
                    key = AllBinary.getKey(gameKeyEvent)
                    if AllBinary.processInput(this, key) == Int32(1)
                        break
                    end
                end
                finally
                    index += Int32(1)
                end
                end
            end
            AllBinary.clear(this)
            if size > Int32(0) || motionInputsIndex >= Int32(0)
                return Int32(1)
            else
                return -Int32(1)
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, AllBinary.getInstance(GameInputStrings).PROCESS_INPUT, e)
            return -Int32(1)
        end
end


function processMotionInputs(this::PopupMenuInputProcessor)
        local lastIndex::Int32 = AllBinary.size(this.motionGestureEventList) - Int32(1)
        if lastIndex >= Int32(0)
            local motionGestureEvent = (this.motionGestureEventList.objectArray[lastIndex + 1])
            AllBinary.processMotionInput(this, motionGestureEvent)
        end
        AllBinary.clear(this.motionGestureEventList)
        return lastIndex
end


function processMotionInput(this::PopupMenuInputProcessor, motionGestureEvent)
        if motionGestureEvent === nothing
            AllBinary.putF(this.logUtil, "Exception: Bug", this, this.gameInputStrings.PROCESS_MOTION_INPUT)
            return
        end
        local touchMotionGestureFactory = AllBinary.getInstance(TouchMotionGestureFactory)
        local motionGestureInput = AllBinary.getMotionGesture(motionGestureEvent)
        if motionGestureInput === touchMotionGestureFactory.RELEASED
            local point = AllBinary.getCurrentPoint(motionGestureEvent)
            local rectPoint = AllBinary.getPoint(this.rectangle)
            if AllBinary.isInside(this.rectangleCollisionUtil, AllBinary.getX(rectPoint), AllBinary.getY(rectPoint), AllBinary.getMaxX(this.rectangle) + Int32(20), AllBinary.getMaxY(this.rectangle), AllBinary.getX(point), AllBinary.getY(point))
                if AllBinary.isTimeTNT(this.clickTimeHelper)
                    local gameCanvas = (AllBinary.getCanvas(this))
                    AllBinary.toggleMenu(gameCanvas)
                end
            end
        end
        nothing
end

