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
# package org.allbinary.graphics.canvas.transition.progress

# extends RunnableCanvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ProgressCanvas <: JObject
    hasPainted::Bool
    backgroundBasicColor::Any
    GAUGE_PAINTABLE::Any
    maxValue::Float32
    gauge::Any
    TEXT::Any
    updateMyFontProcessor::Any
    myFontProcessor::Any
    allbinaryMidlet::Any
    value::Float32
    text::Any
    background::Bool
    paintable::Any
    inProgress::Bool
    IN_GAME_PROCESSOR::Any
    inGameProcessor::Any
    progressEndListener::Any
    backgroundLabel::Any
    START_BACKGROUND::Any
    ADD_PORTION::Any
    ADD_EARLY_PORTION::Any
    ProgressCanvas() = new()
end


function initFieldsProgressCanvas(this::ProgressCanvas)
    this.hasPainted = false
    this.backgroundBasicColor = nothing
    this.GAUGE_PAINTABLE = nothing
    this.maxValue = 0.0f0
    this.gauge = nothing
    this.TEXT = nothing
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.allbinaryMidlet = nothing
    this.value = 0.0f0
    this.text = nothing
    this.background = false
    this.paintable = nothing
    this.inProgress = false
    this.IN_GAME_PROCESSOR = nothing
    this.inGameProcessor = nothing
    this.progressEndListener = nothing
    this.backgroundLabel = nothing
    this.START_BACKGROUND = nothing
    this.ADD_PORTION = nothing
    this.ADD_EARLY_PORTION = nothing
    this.hasPainted = false
    
    this.GAUGE_PAINTABLE = newProgressPaintable(this)
    this.maxValue = 100.0f0
    
    this.TEXT = this.commonStrings.LOADING
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.allbinaryMidlet = AllBinary.getNullInstance(AllBinaryMidlet)
    this.value = 0.0f0
    this.text = this.TEXT
    this.background = true
    this.paintable = this.GAUGE_PAINTABLE
    this.inProgress = false
    this.IN_GAME_PROCESSOR = newProcessor() #= Java anonymous class body: implement it as a named type
        this.pathFindingThreadPool = AllBinary.getInstance(PathFindingThreadPool)
        

function process(this::ProgressCanvas)
            AllBinary.runAPriorityTask(this.pathFindingThreadPool)
        nothing
end =#
    this.inGameProcessor = AllBinary.getInstance(Processor)
    this.progressEndListener = staticGet_instance(ProgressEndListener)
    this.backgroundLabel = "Background AI Game Loading..."
    this.START_BACKGROUND = "startBackground"
    this.ADD_PORTION = "addPortion"
    this.ADD_EARLY_PORTION = "addEarlyPortion"
    nothing
end


function initProgressCanvas(this::ProgressCanvas, title, backgroundBasicColor, foregroundBasicColor)
        initRunnableCanvas(this, staticGet_NULL_COMMAND_LISTENER(NullCommandListener), AllBinary.getInstance(CanvasStrings).EMPTY_CHILD_NAME_LIST, false)
        initFieldsProgressCanvas(this)
        this.backgroundBasicColor = backgroundBasicColor
        this.gauge = newABCustomGaugeItem(AllBinary.getInstance(StringUtil).EMPTY_STRING, (jToInt32(this.maxValue) % Int32), Int32(0), backgroundBasicColor, foregroundBasicColor)
        nothing
end

function newProgressCanvas(title, backgroundBasicColor, foregroundBasicColor)
    this = ProgressCanvas()
    initProgressCanvas(this, title, backgroundBasicColor, foregroundBasicColor)
    this
end


function updateMeasurement(this::ProgressCanvas, graphics)
        local font = AllBinary.getFont(graphics)
        AllBinary.setHeight(this.gauge, AllBinary.getHeight(font) + Int32(2))
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function init(this::ProgressCanvas, gameMidlet)
        this.allbinaryMidlet = gameMidlet
        nothing
end


function update(this::ProgressCanvas, graphics)
        nothing
        nothing
end


function initCommands(this::ProgressCanvas, cmdListener)
        nothing
        nothing
end


function getMaxValue(this::ProgressCanvas)
        return this.maxValue
end


function start(this::ProgressCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.START_METHOD_NAME)
        AllBinary.setBackground(this, true)
        AllBinary.setHeight(this.gauge, Int32(30))
        AllBinary.setLabel(this.gauge, this.commonStrings.PLEASE_WAIT)
        AllBinary.setText(this, this.TEXT)
        AllBinary.setValue(this, Int32(0))
        this.inGameProcessor = AllBinary.getInstance(Processor)
        this.paintable = this.GAUGE_PAINTABLE
        this.inProgress = true
        nothing
end


function startBackground(this::ProgressCanvas, background)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.START_BACKGROUND)
        AllBinary.setBackground(this, background)
        this.myFontProcessor = this.updateMyFontProcessor
        AllBinary.setLabel(this.gauge, this.backgroundLabel)
        AllBinary.setText(this, this.TEXT)
        AllBinary.setValue(this, Int32(0))
        this.inGameProcessor = AllBinary.getInstance(Processor)
        this.paintable = this.GAUGE_PAINTABLE
        nothing
end


function endActual(this::ProgressCanvas)
        AllBinary.commandAction(this.allbinaryMidlet, AllBinary.getInstance(GameCommandsFactory).SHOW_GAME_CANVAS, staticGet_NULL_CANVAS(NullCanvas))
        this.inProgress = false
        AllBinary.inGame(this)
        nothing
end


function inGame(this::ProgressCanvas)
        AllBinary.onEndEvent(this.progressEndListener)
        this.inGameProcessor = this.IN_GAME_PROCESSOR
        nothing
end


function end_(this::ProgressCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.END_METHOD_NAME)
        AllBinary.setValue(this.gauge, AllBinary.getMaxValue(this))
        AllBinary.endActual(this)
        this.paintable = AllBinary.getInstance(NullPaintable)
        nothing
end


function endFromInitialLazyLoadingComplete(this::ProgressCanvas)
        AllBinary.onEndEvent(this.progressEndListener)
        AllBinary.setValue(this.gauge, AllBinary.getMaxValue(this))
        this.inGameProcessor = this.IN_GAME_PROCESSOR
        nothing
end


function isInGame(this::ProgressCanvas)
        if this.inGameProcessor === this.IN_GAME_PROCESSOR
            return true
        end
        return false
end


function endIfPaintedSinceStart(this::ProgressCanvas)
        nothing
        nothing
end


function addEarlyPortion(this::ProgressCanvas, value, text, index)
        AllBinary.setText(this, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), text), AllBinary.toString(AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), index)))))
        AllBinary.setValue(this.gauge, AllBinary.getValue(this.gauge) + AllBinary.getMaxValue(this) ÷ Float32(value))
        nothing
end


function addPortion(this::ProgressCanvas, value, text, index)
        AllBinary.setText(this, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), text), AllBinary.toString(AllBinary.getAt(AllBinary.getInstance(SmallIntegerSingletonFactory), index)))))
        AllBinary.put(PreLogUtil, this.text, this, this.ADD_PORTION)
        AllBinary.setValue(this.gauge, AllBinary.getValue(this.gauge) + AllBinary.getMaxValue(this) ÷ Float32(value))
        nothing
end


function addNormalPortion(this::ProgressCanvas, value, text)
        if this.text != text
            AllBinary.put(PreLogUtil, text, this, this.ADD_PORTION)
        end
        AllBinary.setText(this, text)
        AllBinary.setValue(this.gauge, AllBinary.getValue(this.gauge) + AllBinary.getMaxValue(this) ÷ Float32(value))
        nothing
end


function setValue(this::ProgressCanvas, value)
        this.value = Float32(value)
        AllBinary.setValue(this.gauge, Float32(value))
        nothing
end


function paint(this::ProgressCanvas, graphics)
        AllBinary.paint(this.paintable, graphics)
        nothing
end


function paint2(this::ProgressCanvas, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.setColor(graphics, AllBinary.intValue(this.backgroundBasicColor))
        AllBinary.fillRect(graphics, Int32(0), Int32(0), AllBinary.getLastWidth(this.displayInfo), AllBinary.getLastHeight(this.displayInfo))
        AllBinary.paintXY(this.gauge, graphics, Int32(0), Int32(0))
        this.hasPainted = true
        nothing
end


function paintThreed(this::ProgressCanvas, graphics)
        nothing
        nothing
end


function getValue(this::ProgressCanvas)
        return this.value
end


function setText(this::ProgressCanvas, text)
        this.text = text
        nothing
end


function getText(this::ProgressCanvas)
        return this.text
end


function setBackground(this::ProgressCanvas, background)
        this.background = background
        nothing
end


function isBackground(this::ProgressCanvas)
        return this.background
end

