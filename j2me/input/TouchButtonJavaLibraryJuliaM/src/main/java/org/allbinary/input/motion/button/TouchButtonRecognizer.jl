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

mutable struct TouchButtonRecognizer <: JObject
    logUtil::Any
    rectangleCollisionUtil::Any
    upGameKeyEventHandler::Any
    downGameKeyEventHandler::Any
    lastPressedTouchButtonInput::Any
    currentlyPressedTouchButtonSingleton::Any
    releaseHelper::Any
    TouchButtonRecognizer() = new()
end


function initFieldsTouchButtonRecognizer(this::TouchButtonRecognizer)
    this.logUtil = nothing
    this.rectangleCollisionUtil = nothing
    this.upGameKeyEventHandler = nothing
    this.downGameKeyEventHandler = nothing
    this.lastPressedTouchButtonInput = nothing
    this.currentlyPressedTouchButtonSingleton = nothing
    this.releaseHelper = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.rectangleCollisionUtil = AllBinary.getInstance(RectangleCollisionUtil)
    this.upGameKeyEventHandler = AllBinary.getInstance(UpGameKeyEventHandler)
    this.downGameKeyEventHandler = AllBinary.getInstance(DownGameKeyEventHandler)
    this.lastPressedTouchButtonInput = AllBinary.getInstance(BasicTouchInputFactory).NONE
    this.currentlyPressedTouchButtonSingleton = AllBinary.getInstance(CurrentlyPressedTouchButtonSingleton)
    this.releaseHelper = nothing
    nothing
end


function initTouchButtonRecognizer(this::TouchButtonRecognizer)
        initFieldsTouchButtonRecognizer(this)
        if AllBinary.isMultiTouch(AllBinary.getInstance(TouchScreenFactory))
            this.releaseHelper = newMultitouchReleaseHelper(this)
        else
            this.releaseHelper = newReleaseHelper(this)
        end
        nothing
end

function newTouchButtonRecognizer()
    this = TouchButtonRecognizer()
    initTouchButtonRecognizer(this)
    this
end


function processRelease(this::TouchButtonRecognizer, touchButtonInput, deviceId)
        AllBinary.release(this.releaseHelper, touchButtonInput, deviceId)
        local gameKeyEvent = AllBinary.getGameKeyEvent(touchButtonInput)
        AllBinary.fireEvent(this.upGameKeyEventHandler, gameKeyEvent)
        AllBinary.fireEvent(AllBinary.getInstanceForDevice(this.upGameKeyEventHandler, deviceId), gameKeyEvent)
        AllBinary.remove(this.currentlyPressedTouchButtonSingleton, touchButtonInput)
        nothing
end


function releaseTouchButtonInput(this::TouchButtonRecognizer, x, y, deviceId)
        local touchButtonInput = this.lastPressedTouchButtonInput
        if AllBinary.contains(this.currentlyPressedTouchButtonSingleton, touchButtonInput)
            this.lastPressedTouchButtonInput = AllBinary.getInstance(BasicTouchInputFactory).NONE
            AllBinary.processRelease(this, touchButtonInput, deviceId)
            return true
        else
            local list = AllBinary.getList(AllBinary.getInstance(TouchButtonFactory))
            local rectangle = nothing
            local point = nothing
            local touchButton = nothing
            let
                local index::Int32 = AllBinary.size(list) - Int32(1)
                while index >= Int32(0)
                try
                touchButton = (list.objectArray[index + 1])
                rectangle = AllBinary.getRectangle(touchButton)
                point = AllBinary.getPoint(rectangle)
                if AllBinary.isInside(this.rectangleCollisionUtil, AllBinary.getX(point), AllBinary.getY(point), AllBinary.getMaxX(rectangle), AllBinary.getMaxY(rectangle), x, y)
                    touchButtonInput = AllBinary.getTouchButtonInput(touchButton)
                    AllBinary.processRelease(this, touchButtonInput, deviceId)
                    return true
                end
                finally
                    index -= Int32(1)
                end
                end
            end
        end
        return false
end


function pressTouchButtonInput(this::TouchButtonRecognizer, x, y, deviceId)
        local list = AllBinary.getList(AllBinary.getInstance(TouchButtonFactory))
        local rectangle = nothing
        local point = nothing
        local touchButton = nothing
        local touchButtonInput = nothing
        local gameKeyEvent = nothing
        let
            local index::Int32 = AllBinary.size(list) - Int32(1)
            while index >= Int32(0)
            try
            touchButton = (list.objectArray[index + 1])
            rectangle = AllBinary.getRectangle(touchButton)
            point = AllBinary.getPoint(rectangle)
            if AllBinary.isInside(this.rectangleCollisionUtil, AllBinary.getX(point), AllBinary.getY(point), AllBinary.getMaxX(rectangle), AllBinary.getMaxY(rectangle), x, y)
                touchButtonInput = AllBinary.getTouchButtonInput(touchButton)
                if !AllBinary.contains(this.currentlyPressedTouchButtonSingleton, touchButtonInput)
                    AllBinary.release(this.releaseHelper, touchButtonInput, deviceId)
                    this.lastPressedTouchButtonInput = touchButtonInput
                    AllBinary.add(this.currentlyPressedTouchButtonSingleton, touchButtonInput)
                    gameKeyEvent = AllBinary.getGameKeyEvent(touchButtonInput)
                    AllBinary.fireEvent(this.downGameKeyEventHandler, gameKeyEvent)
                    AllBinary.fireEvent(AllBinary.getInstanceForDevice(this.downGameKeyEventHandler, deviceId), gameKeyEvent)
                end
                return true
            end
            finally
                index -= Int32(1)
            end
            end
        end
        return false
end

