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

#In general allow scrolling of the menu and selection the center item
# extends BasicMenuInputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CommandFormInputProcessor <: JObject
    MOTION_GESTURE_SOURCE_ID::Int32
    CLICK_DELAY::Int32
    clickTimeHelper::Any
    DOUBLE_CLICK_DELAY::Int32
    doubleClickTimeHelper::Any
    isSingleKeyProcessing::Bool
    form::Any
    hasPressed::Bool
    PROCESS_COMMAND::Any
    NAME_LABEL::Any
    CommandFormInputProcessor() = new()
end


function initFieldsCommandFormInputProcessor(this::CommandFormInputProcessor)
    this.MOTION_GESTURE_SOURCE_ID = Int32(0)
    this.CLICK_DELAY = Int32(0)
    this.clickTimeHelper = nothing
    this.DOUBLE_CLICK_DELAY = Int32(0)
    this.doubleClickTimeHelper = nothing
    this.isSingleKeyProcessing = false
    this.form = nothing
    this.hasPressed = false
    this.PROCESS_COMMAND = nothing
    this.NAME_LABEL = nothing
    this.MOTION_GESTURE_SOURCE_ID = AllBinary.getInstance(GameKeyEventFactory).MOTION_GESTURE_SOURCE_ID
    this.CLICK_DELAY = Int32(150)
    this.clickTimeHelper = newTimeDelayHelper(this.CLICK_DELAY)
    this.DOUBLE_CLICK_DELAY = Int32(1200)
    this.doubleClickTimeHelper = newTimeDelayHelper(this.DOUBLE_CLICK_DELAY)
    this.isSingleKeyProcessing = AllBinary.isSingleKeyProcessing(AllBinary.getInstance(InputFeatureFactory))
    
    this.hasPressed = false
    this.PROCESS_COMMAND = "processCommand"
    this.NAME_LABEL = " ScrollSelectionForm: "
    nothing
end


function initCommandFormInputProcessor(this::CommandFormInputProcessor, gameKeyEventList, playerInputId, gameCanvas, form)
        initBasicMenuInputProcessor(this, gameKeyEventList, playerInputId, gameCanvas)
        initFieldsCommandFormInputProcessor(this)
        this.form = form
        nothing
end

function newCommandFormInputProcessor(gameKeyEventList, playerInputId, gameCanvas, form)
    this = CommandFormInputProcessor()
    initCommandFormInputProcessor(this, gameKeyEventList, playerInputId, gameCanvas, form)
    this
end


function processInput(this::CommandFormInputProcessor, key)
        if key == staticGet_LEFT(Canvas) || key == staticGet_RIGHT(Canvas) || key == staticGet_UP(Canvas) || key == staticGet_DOWN(Canvas)
            AllBinary.add(AllBinary.getInstance(PrimaryPlayerQueueFactory), AllBinary.getInstance(SelectSound))
            AllBinary.processInputKey(this.form, key)
            return Int32(1)
        elseif key == staticGet_FIRE(Canvas)
            AllBinary.add(AllBinary.getInstance(PrimaryPlayerQueueFactory), AllBinary.getInstance(SelectSound))
            return AllBinary.processCommand(this)
        end
        return Int32(0)
end


function processCommand(this::CommandFormInputProcessor)
        local commandCurrentSelectionForm = (this.form)
        local command = AllBinary.getSelectedCommand(commandCurrentSelectionForm)
        AllBinary.putF(this.logUtil, AllBinary.toString(command), this, this.PROCESS_COMMAND)
        local features = AllBinary.getInstance(Features)
        local openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
        if staticGet_isSWT(SWTUtil) && AllBinary.isFeature(features, openGLFeatureFactory.OPENGL) && command !== AllBinary.getInstance(GameCommandsFactory).EXIT_COMMAND
            AllBinary.run(newCommandRunnable(this, command))
        else
            AllBinary.runTask(AllBinary.getInstance(PrimaryThreadPool), newCommandRunnable(this, command))
        end
        if command === AllBinary.getInstance(GameCommandsFactory).QUIT_COMMAND
            return -Int32(1)
        else
            return Int32(1)
        end
end


function processInputList(this::CommandFormInputProcessor)
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
                key = AllBinary.getKey(gameKeyEvent)
                if AllBinary.getSourceId(gameKeyEvent) != this.MOTION_GESTURE_SOURCE_ID
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
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.gameInputStrings.PROCESS_INPUT, e)
            return -Int32(1)
        end
end


function processMotionInputs(this::CommandFormInputProcessor)
        local lastIndex::Int32 = AllBinary.size(this.motionGestureEventList) - Int32(1)
        if lastIndex >= Int32(0)
            local motionGestureEvent = (this.motionGestureEventList.objectArray[lastIndex + 1])
            AllBinary.processMotionInput(this, motionGestureEvent)
        end
        AllBinary.clear(this.motionGestureEventList)
        return lastIndex
end


function processMotionInput(this::CommandFormInputProcessor, motionGestureEvent)
        local touchMotionGestureFactory = AllBinary.getInstance(TouchMotionGestureFactory)
        local motionGestureInput = AllBinary.getMotionGesture(motionGestureEvent)
        if motionGestureInput === touchMotionGestureFactory.RELEASED
            local point = AllBinary.getCurrentPoint(motionGestureEvent)
            if AllBinary.isInForm(this.form, point)
                local index::Int32 = AllBinary.getSelectedIndexForPoint(this.form, point)
                if index != -Int32(1)
                    AllBinary.add(AllBinary.getInstance(PrimaryPlayerQueueFactory), AllBinary.getInstance(SelectSound))
                    if index == AllBinary.getSelectedIndex(this.form)
                        if AllBinary.isTimeTNT(this.clickTimeHelper)
                            AllBinary.processCommand(this)
                        end
                    else
                        AllBinary.setSelectedIndex(this.form, index)
                    end
                else
                    nothing
                end
            end
            if this.hasPressed
                if !AllBinary.isTimeTNT(this.doubleClickTimeHelper)
                    AllBinary.putF(this.logUtil, "Double Press", this, this.gameInputStrings.PROCESS_MOTION_INPUT)
                    AllBinary.processCommand(this)
                end
                this.doubleClickTimeHelper.delay = this.DOUBLE_CLICK_DELAY
                AllBinary.setStartTimeTNT(this.doubleClickTimeHelper)
            end
            this.hasPressed = false
        elseif motionGestureInput === touchMotionGestureFactory.PRESSED
            this.doubleClickTimeHelper.delay = Int32(0)
            this.hasPressed = true
        end
        nothing
end


function toString(this::CommandFormInputProcessor)
        return AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.toString(this)), this.NAME_LABEL), AllBinary.toString(this.form)))
end

