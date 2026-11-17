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

# extends MyCanvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameCommandCanvas <: JObject
    repaintProcessor::Any
    gameInputStrings::Any
    foregroundBasicColor::Any
    backgroundBasicColor::Any
    inputToGameKeyMapping::Any
    gameKeyFactory::Any
    gameKeyEventFactory::Any
    downGameKeyEventHandler::Any
    upGameKeyEventHandler::Any
    repaintBehavior::Any
    updateMyFontProcessor::Any
    myFontProcessor::Any
    foregroundColor::Int32
    backgroundColor::Int32
    menuInputProcessor::Any
    menuPaintable::Any
    menuForm::Any
    isSingleKeyRepeatableProcessing::Bool
    fontHeight::Int32
    GameCommandCanvas() = new()
end

const GameCommandCanvas_idValue = Ref{Any}(nothing)
const GameCommandCanvas_idSet = Ref(false)
function staticGet_id(::Type{GameCommandCanvas})
    if !GameCommandCanvas_idSet[]
        GameCommandCanvas_idSet[] = true
        GameCommandCanvas_idValue[] = Int32(0)
    end
    GameCommandCanvas_idValue[]
end
function staticSet_id(::Type{GameCommandCanvas}, value)
    GameCommandCanvas_idSet[] = true
    GameCommandCanvas_idValue[] = value
end

function initFieldsGameCommandCanvas(this::GameCommandCanvas)
    this.repaintProcessor = nothing
    this.gameInputStrings = nothing
    this.foregroundBasicColor = nothing
    this.backgroundBasicColor = nothing
    this.inputToGameKeyMapping = nothing
    this.gameKeyFactory = nothing
    this.gameKeyEventFactory = nothing
    this.downGameKeyEventHandler = nothing
    this.upGameKeyEventHandler = nothing
    this.repaintBehavior = nothing
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.foregroundColor = Int32(0)
    this.backgroundColor = Int32(0)
    this.menuInputProcessor = nothing
    this.menuPaintable = nothing
    this.menuForm = nothing
    this.isSingleKeyRepeatableProcessing = false
    this.fontHeight = Int32(0)
    this.repaintProcessor = AllBinary.create(AllBinary.getInstance(ScreenRepaintProcessorFactory), this)
    this.gameInputStrings = AllBinary.getInstance(GameInputStrings)
    
    
    this.inputToGameKeyMapping = AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory)))
    this.gameKeyFactory = AllBinary.getInstance(GameKeyFactory)
    this.gameKeyEventFactory = AllBinary.getInstance(GameKeyEventFactory)
    this.downGameKeyEventHandler = AllBinary.getInstance(DownGameKeyEventHandler)
    this.upGameKeyEventHandler = AllBinary.getInstance(UpGameKeyEventHandler)
    
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    
    
    this.menuInputProcessor = AllBinary.getInstance(NoMenuInputProcessor)
    this.menuPaintable = AllBinary.getInstance(NullPaintable)
    this.menuForm = AllBinary.getNullPaintableForm(PaintableForm)
    this.isSingleKeyRepeatableProcessing = AllBinary.isFeature(AllBinary.getInstance(Features), AllBinary.getInstance(InputFeatureFactory).SINGLE_KEY_REPEAT_PRESS)
    this.fontHeight = Int32(0)
    nothing
end


function initGameCommandCanvas(this::GameCommandCanvas, cmdListener, name, backgroundBasicColor, foregroundBasicColor)
        initMyCanvas(this, name, AllBinary.getInstance(CanvasStrings).EMPTY_CHILD_NAME_LIST)
        initFieldsGameCommandCanvas(this)
        this.repaintBehavior = AllBinary.getInstance(RepaintBehavior)
        this.foregroundBasicColor = foregroundBasicColor
        this.backgroundBasicColor = backgroundBasicColor
        this.foregroundColor = AllBinary.intValue(this.foregroundBasicColor)
        this.backgroundColor = AllBinary.intValue(this.backgroundBasicColor)
        AllBinary.initCommands(this, cmdListener)
        if cmdListener !== staticGet_NULL_COMMAND_LISTENER(NullCommandListener)
            try
                AllBinary.initMenu(this)
                AllBinary.process(this.repaintProcessor)
            catch e
                throw(jNewException("RuntimeException", ""))
            end
        end
        nothing
end

function newGameCommandCanvas(cmdListener, name, backgroundBasicColor, foregroundBasicColor)
    this = GameCommandCanvas()
    initGameCommandCanvas(this, cmdListener, name, backgroundBasicColor, foregroundBasicColor)
    this
end


function updateMeasurement(this::GameCommandCanvas, graphics)
        try
            local font = AllBinary.getFont(graphics)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.START), this.canvasStrings.FD_WIDTH), ((AllBinary.defaultCharWidth(MyFontProcessor, font)) % Int32)), this.canvasStrings.FD_HEIGHT), ((AllBinary.getHeight(font)) % Int32))), this, this.canvasStrings.UPDATE_MEASUREMENT)
            this.fontHeight = AllBinary.getHeight(font)
            local rectangle = AllBinary.createRectangle(this, AllBinary.size(this.menuForm))
            AllBinary.init(this.menuForm, rectangle, AllBinary.getInstance(FormTypeFactory).VERTICAL_CENTER_FORM)
            AllBinary.update(this)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function onEvent(this::GameCommandCanvas, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onDisplayChangeEvent(this::GameCommandCanvas, displayChangeEvent)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.START), AllBinary.toString(AllBinary.getInstance(DisplayInfoSingleton)))), this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT)
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function initCommands(this::GameCommandCanvas, cmdListener)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommand(this, AllBinary.getInstance(GameCommandsFactory).CLOSE_AND_SHOW_GAME_CANVAS)
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function initMenu(this::GameCommandCanvas)
        local form = AllBinary.createForm(this)
        this.menuForm = form
        if form !== AllBinary.getInstance(ScrollSelectionFormNoneFactory)
            AllBinary.setMenuInputProcessor(this, newImmediateCommandFormInputProcessor(newBasicArrayListD(), -Int32(1), this, form))
            this.menuPaintable = newFormPaintable(form)
        end
        AllBinary.onChangeRepaint(this.repaintBehavior, this)
        nothing
end


function createForm(this::GameCommandCanvas)
        local items = AllBinary.getInstance(newCommandTextItemArrayFactory(newAllCommandsVisitor()), AllBinary.getCommandStack(this), this.backgroundBasicColor, this.foregroundBasicColor)
        local rectangle = AllBinary.createRectangle(this, Int32(Base.length(items)))
        return AllBinary.getInstance(CommandCurrentSelectionFormFactory, AllBinary.getInstance(StringUtil).EMPTY_STRING, items, rectangle, AllBinary.getInstance(FormTypeFactory).VERTICAL_CENTER_FORM, Int32(15), false, this.backgroundBasicColor, this.foregroundBasicColor)
end


function createRectangle(this::GameCommandCanvas, size)
        local height::Int32 = size * this.fontHeight
        local startY::Int32 = (AllBinary.getLastHeight(this.displayInfo) * Int32(2) ÷ Int32(3)) - height
        local pointFactory = AllBinary.getInstance(PointFactory)
        local rectangle = newRectangle(AllBinary.createXY(pointFactory, Int32(30), startY), AllBinary.getLastWidth(this.displayInfo) - Int32(30), startY)
        return rectangle
end


function open(this::GameCommandCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, "open")
        AllBinary.addListenerInterface(AllBinary.getInstance(BasicMotionGesturesHandler), AllBinary.getMenuInputProcessor(this))
        AllBinary.addListener(AllBinary.getInstance(GameKeyEventHandler), AllBinary.getMenuInputProcessor(this))
        AllBinary.addListenerInterface(AllBinary.getInstance(DisplayChangeEventHandler), this)
        nothing
end


function close(this::GameCommandCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CLOSE)
        AllBinary.removeListener(AllBinary.getInstance(BasicMotionGesturesHandler), AllBinary.getMenuInputProcessor(this))
        AllBinary.removeListener(AllBinary.getInstance(GameKeyEventHandler), AllBinary.getMenuInputProcessor(this))
        AllBinary.removeListener(AllBinary.getInstance(DisplayChangeEventHandler), this)
        nothing
end


function update(this::GameCommandCanvas)
        AllBinary.process(this.repaintProcessor)
        nothing
end


function getSourceId(this::GameCommandCanvas)
        return staticGet_id(GameCommandCanvas)
end


function keyPressed(this::GameCommandCanvas, keyCode)
        AllBinary.keyPressedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyReleased(this::GameCommandCanvas, keyCode)
        AllBinary.keyReleasedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyRepeated(this::GameCommandCanvas, keyCode)
        AllBinary.keyRepeatedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyPressedByDevice(this::GameCommandCanvas, keyCode, deviceId)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonSeps).SPACE), keyCode)), this, this.gameInputStrings.KEY_PRESSED)
        AllBinary.addGameKeyEvent(this, keyCode, Int32(0), false)
        nothing
end


function keyReleasedByDevice(this::GameCommandCanvas, keyCode, deviceId)
        AllBinary.removeGameKeyEvent(this, keyCode, deviceId, false)
        nothing
end


function keyRepeatedByDevice(this::GameCommandCanvas, keyCode, deviceId)
        if this.isSingleKeyRepeatableProcessing
            AllBinary.addGameKeyEvent(this, keyCode, deviceId, true)
        end
        nothing
end


function addGameKeyEvent(this::GameCommandCanvas, keyCode, deviceId, repeated)
        try
            local gameKey = AllBinary.getInstanceForCanvas(this.inputToGameKeyMapping, this, keyCode)
            if gameKey !== this.gameKeyFactory.NONE
                local gameKeyEvent = AllBinary.getInstanceForInput(this.gameKeyEventFactory, this, gameKey)
                AllBinary.fireEvent(this.downGameKeyEventHandler, gameKeyEvent)
                AllBinary.fireEvent(AllBinary.getInstanceForDevice(this.downGameKeyEventHandler, deviceId), gameKeyEvent)
            else
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.gameInputStrings.NO_KEY), keyCode)), this, this.gameInputStrings.ADD_KEY_EVENT)
            end
        catch e
            AllBinary.put(this.logUtil, "Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)
        end
        nothing
end


function removeGameKeyEvent(this::GameCommandCanvas, keyCode, deviceId, repeated)
        try
            local gameKey = AllBinary.getInstanceForCanvas(this.inputToGameKeyMapping, this, keyCode)
            if gameKey !== this.gameKeyFactory.NONE
                local gameKeyEvent = AllBinary.getInstanceForInput(this.gameKeyEventFactory, this, gameKey)
                AllBinary.fireEvent(this.upGameKeyEventHandler, gameKeyEvent)
                AllBinary.fireEvent(AllBinary.getInstanceForDevice(this.upGameKeyEventHandler, deviceId), gameKeyEvent)
            else
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.gameInputStrings.NO_KEY), keyCode)), this, this.gameInputStrings.REMOVE_KEY_EVENT)
            end
        catch e
            AllBinary.put(this.logUtil, "Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e)
        end
        nothing
end


function paint(this::GameCommandCanvas, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.paint(this.menuPaintable, graphics)
        AllBinary.repaint(this.repaintBehavior, this)
        nothing
end


function setMenuInputProcessor(this::GameCommandCanvas, menuInputProcessor)
        this.menuInputProcessor = menuInputProcessor
        nothing
end


function getMenuInputProcessor(this::GameCommandCanvas)
        return this.menuInputProcessor
end

