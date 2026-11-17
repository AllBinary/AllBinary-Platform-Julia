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

# extends RunnableCanvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DemoCanvas <: JObject
    basicColorFactory::Any
    myCommandsFactory::Any
    gameAdStateFactory::Any
    gameInputStrings::Any
    gameStateFactory::Any
    threadFactoryUtil::Any
    formUtil::Any
    fullscreenPaintable::Any
    basicGameDemoPaintable::Any
    specialAnimationInterface::Any
    paintedSpecialAnimationInterface::Any
    fullScreenUtil::Any
    gameCanvas::Any
    highScoresHelper::Any
    realHighScoresPaintable::Any
    highScoresPaintable::Any
    state::Int32
    canvasThread::Any
    timeDelayHelper::Any
    basicColor::Any
    abeClientInformation::Any
    highScoresFactoryInterface::Any
    menuInputProcessor::Any
    menuForm::Any
    gameInitializationInterfaceFactoryInterface::Any
    initialized::Bool
    demoGameRunnable::Any
    defaultPaintableInterface::Any
    paintableInterface::Any
    overlayPaintable::Any
    progressPaintable::Any
    tempWait::Int32
    inputToGameKeyMapping::Any
    gameRunnable::Any
    isSingleKeyRepeatableProcessing::Bool
    NONE::Any
    gameKeyEventFactory::Any
    lastKeyNotMapped::Int32
    SET_STATE::Any
    baseGameStatistics::Any
    DemoCanvas() = new()
end

const DemoCanvas_idValue = Ref{Any}(nothing)
const DemoCanvas_idSet = Ref(false)
function staticGet_id(::Type{DemoCanvas})
    if !DemoCanvas_idSet[]
        DemoCanvas_idSet[] = true
        DemoCanvas_idValue[] = Int32(0)
    end
    DemoCanvas_idValue[]
end
function staticSet_id(::Type{DemoCanvas}, value)
    DemoCanvas_idSet[] = true
    DemoCanvas_idValue[] = value
end
const DemoCanvas_BOT_GAME_STATSValue = Ref{Any}(nothing)
const DemoCanvas_BOT_GAME_STATSSet = Ref(false)
function staticGet_BOT_GAME_STATS(::Type{DemoCanvas})
    if !DemoCanvas_BOT_GAME_STATSSet[]
        DemoCanvas_BOT_GAME_STATSSet[] = true
        DemoCanvas_BOT_GAME_STATSValue[] = "Bot Game Statistics: "
    end
    DemoCanvas_BOT_GAME_STATSValue[]
end
function staticSet_BOT_GAME_STATS(::Type{DemoCanvas}, value)
    DemoCanvas_BOT_GAME_STATSSet[] = true
    DemoCanvas_BOT_GAME_STATSValue[] = value
end
const DemoCanvas_TYPEValue = Ref{Any}(nothing)
const DemoCanvas_TYPESet = Ref(false)
function staticGet_TYPE(::Type{DemoCanvas})
    if !DemoCanvas_TYPESet[]
        DemoCanvas_TYPESet[] = true
        DemoCanvas_TYPEValue[] = Int32(3)
    end
    DemoCanvas_TYPEValue[]
end
function staticSet_TYPE(::Type{DemoCanvas}, value)
    DemoCanvas_TYPESet[] = true
    DemoCanvas_TYPEValue[] = value
end

function initFieldsDemoCanvas(this::DemoCanvas)
    this.basicColorFactory = nothing
    this.myCommandsFactory = nothing
    this.gameAdStateFactory = nothing
    this.gameInputStrings = nothing
    this.gameStateFactory = nothing
    this.threadFactoryUtil = nothing
    this.formUtil = nothing
    this.fullscreenPaintable = nothing
    this.basicGameDemoPaintable = nothing
    this.specialAnimationInterface = nothing
    this.paintedSpecialAnimationInterface = nothing
    this.fullScreenUtil = nothing
    this.gameCanvas = nothing
    this.highScoresHelper = nothing
    this.realHighScoresPaintable = nothing
    this.highScoresPaintable = nothing
    this.state = Int32(0)
    this.canvasThread = nothing
    this.timeDelayHelper = nothing
    this.basicColor = nothing
    this.abeClientInformation = nothing
    this.highScoresFactoryInterface = nothing
    this.menuInputProcessor = nothing
    this.menuForm = nothing
    this.gameInitializationInterfaceFactoryInterface = nothing
    this.initialized = false
    this.demoGameRunnable = nothing
    this.defaultPaintableInterface = nothing
    this.paintableInterface = nothing
    this.overlayPaintable = nothing
    this.progressPaintable = nothing
    this.tempWait = Int32(0)
    this.inputToGameKeyMapping = nothing
    this.gameRunnable = nothing
    this.isSingleKeyRepeatableProcessing = false
    this.NONE = nothing
    this.gameKeyEventFactory = nothing
    this.lastKeyNotMapped = Int32(0)
    this.SET_STATE = nothing
    this.baseGameStatistics = nothing
    this.basicColorFactory = AllBinary.getInstance(BasicColorFactory)
    this.myCommandsFactory = AllBinary.getInstance(MyCommandsFactory)
    this.gameAdStateFactory = AllBinary.getInstance(GameAdStateFactory)
    this.gameInputStrings = AllBinary.getInstance(GameInputStrings)
    this.gameStateFactory = AllBinary.getInstance(GameStateFactory)
    this.threadFactoryUtil = AllBinary.getInstance(ThreadFactoryUtil)
    this.formUtil = AllBinary.getInstance(FormUtil)
    this.fullscreenPaintable = AllBinary.getInstance(FullScreenPaintableFactory).paintable
    this.basicGameDemoPaintable = AllBinary.getInstance(StatePaintableFactory)
    this.specialAnimationInterface = AllBinary.getInstance(SpecialAnimation)
    this.paintedSpecialAnimationInterface = AllBinary.getInstance(SpecialAnimation)
    this.fullScreenUtil = AllBinary.getInstance(FullScreenUtil)
    this.gameCanvas = AllBinary.getInstance(NullGameCanvas)
    this.highScoresHelper = newHighScoresHelper()
    this.realHighScoresPaintable = newHighScoresPaintable()
    this.highScoresPaintable = AllBinary.getInstance(NullPaintable)
    this.state = Int32(0)
    this.canvasThread = staticGet_NULL_THREAD(NullThread)
    this.timeDelayHelper = newTimeDelayHelper(Int32(6000))
    this.basicColor = this.basicColorFactory.RED
    
    
    this.menuInputProcessor = AllBinary.getInstance(NoMenuInputProcessor)
    this.menuForm = AllBinary.getNullScrollSelectionForm(ScrollSelectionForm)
    
    this.initialized = false
    
    this.defaultPaintableInterface = AllBinary.getInstance(NullPaintable)
    this.paintableInterface = AllBinary.getInstance(NullPaintable)
    
    this.progressPaintable = AllBinary.getLazyInstance(ProgressCanvasFactory)
    this.tempWait = AllBinary.getInstance(NullWaitGameRunnable).WAIT
    this.inputToGameKeyMapping = AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory)))
    this.gameRunnable = AllBinary.getInstance(NullWaitGameRunnable)
    this.isSingleKeyRepeatableProcessing = AllBinary.isFeature(AllBinary.getInstance(Features), AllBinary.getInstance(InputFeatureFactory).SINGLE_KEY_REPEAT_PRESS)
    this.NONE = AllBinary.getInstance(GameKeyFactory).NONE
    this.gameKeyEventFactory = AllBinary.getInstance(GameKeyEventFactory)
    this.lastKeyNotMapped = -Int32(1)
    this.SET_STATE = "setState"
    this.baseGameStatistics = AllBinary.getInstance(GameStatisticsFactory)
    nothing
end


function initDemoCanvas(this::DemoCanvas, abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)
        initRunnableCanvas(this, commandListener, AllBinary.getInstance(CurrentDisplayableFactory).DEFAULT_CHILD_NAME_LIST, true)
        initFieldsDemoCanvas(this)
        this.abeClientInformation = abeClientInformation
        AllBinary.setWait(this, AllBinary.getInstance(NullWaitGameRunnable).WAIT)
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        AllBinary.initDemo(AllBinary.getInstance(GameInitializationUtil), abeClientInformation, this, gameInitializationInterfaceFactoryInterface)
        AllBinary.fireEvent(AllBinary.getInstance(ResizableListenerHandler), false)
        this.overlayPaintable = overlayPaintable
        this.highScoresFactoryInterface = highScoresFactoryInterface
        AllBinary.setDefaultPaintableInterface(this, paintable)
        AllBinary.setPaintableInterface(this, AllBinary.getDefaultPaintableInterface(this))
        if isContinue
            AllBinary.addCommand(this, AllBinary.getInstance(GameCommandsFactory).CONTINUE_COMMAND)
        end
        if AllBinary.isChangedFeature(AllBinary.getInstance(ChangedGameFeatureListener), AllBinary.getInstance(GameFeatureFactory).SOUND)
            AllBinary.mediaInit(this)
        end
        this.demoGameRunnable = newDemoGameStartupRunnable(this)
        AllBinary.addListenerInterface(AllBinary.getInstance(DisplayChangeEventHandler), this)
        nothing
end

function newDemoCanvas(abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)
    this = DemoCanvas()
    initDemoCanvas(this, abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)
    this
end


function onEvent(this::DemoCanvas, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onDisplayChangeEvent(this::DemoCanvas, displayChangeEvent)
        try
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonLabels.START_LABEL), AllBinary.toString(this.displayInfo))), this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT)
            local scrollSelectionForm = AllBinary.getMenuForm(this)
            if scrollSelectionForm !== nothing
                local formType = AllBinary.getFormType(AllBinary.getInstance(FormTypeFactory))
                local rectangle = AllBinary.createFormRectangle(this.formUtil)
                AllBinary.init(scrollSelectionForm, rectangle, formType)
            end
            AllBinary.init(this.overlayPaintable)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
        nothing
end


function getCustomCommands(this::DemoCanvas)
        local gameCommandsFactory = AllBinary.getInstance(GameCommandsFactory)
        if AllBinary.isHTML(J2MEUtil)
            commandArray = Any[gameCommandsFactory.START_COMMAND, AllBinary.getInstance(HighScoreCommands).DISPLAY, staticGet_DISPLAY(GameInputMappingCanvas), gameCommandsFactory.DISPLAY_ABOUT]
            return commandArray
        else
            local commandList = newBasicArrayListD()
            AllBinary.add(commandList, gameCommandsFactory.START_COMMAND)
            local inApplicationPurchaseFactory = AllBinary.getInstance(InApplicationPurchaseFactory)
            if AllBinary.isEnabled(inApplicationPurchaseFactory)
                local list = AllBinary.getList(AllBinary.getInstance(LockableFeatureFactory))
                if AllBinary.size(list) > Int32(0) && !AllBinary.isPurchased(inApplicationPurchaseFactory, (AllBinary.get(list, Int32(0))))
                    AllBinary.add(commandList, gameCommandsFactory.BUY_COMMAND)
                end
            end
            AllBinary.add(commandList, AllBinary.getInstance(HighScoreCommands).DISPLAY)
            try
                local isOverScan::Bool = AllBinary.isOverScan(AllBinary.getOperatingSystemInstance(AllBinary.getInstance(OperatingSystemFactory)))
                if staticGet_isSWT(SWTUtil)
                    AllBinary.add(commandList, staticGet_DISPLAY(GameInputMappingCanvas))
                elseif !isOverScan
                    AllBinary.add(commandList, gameCommandsFactory.DISPLAY_OPTIONS)
                    AllBinary.add(commandList, gameCommandsFactory.DISPLAY_LOAD_FORM)
                    AllBinary.add(commandList, staticGet_DISPLAY(GameInputMappingCanvas))
                end
            catch e
                nothing
            end
            AllBinary.add(commandList, gameCommandsFactory.DISPLAY_ABOUT)
            local commandArray = AllBinary.toArray(commandList)
            return commandArray
        end
end


function initCommands(this::DemoCanvas, cmdListener)
        AllBinary.removeAllCommands(this)
        local commandArray = AllBinary.getCustomCommands(this)
        local size::Int32 = Int32(Base.length(commandArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.addCommand(this, (commandArray[index + 1]))
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.add(CustomGameMenuUtil, this)
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function initPostPaint(this::DemoCanvas)
        nothing
        nothing
end


function mediaInit(this::DemoCanvas)
        AllBinary.init(AllBinaryMediaManager, AllBinary.getInstance(EarlySoundsFactory))
        nothing
end


function itemStateChanged(this::DemoCanvas, item)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        nothing
end


function initMenu(this::DemoCanvas)
        AllBinary.close(this)
        local commandTextItemArrayFactory = AllBinary.getCommandTextItemArrayFactory(AllBinary.getInstance(DemoLimitedCommandTextItemArrayFactory))
        local items = AllBinary.getInstance(commandTextItemArrayFactory, AllBinary.getCommandStack(this), this.basicColorFactory.BLACK, this.basicColorFactory.WHITE)
        local formType = AllBinary.getFormType(AllBinary.getInstance(FormTypeFactory))
        local rectangle = AllBinary.createFormRectangle(this.formUtil)
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonLabels.START_LABEL), AllBinary.toString(this.displayInfo))), this, "initMenu")
        local scrollSelectionForm = AllBinary.getInstance(CommandCurrentSelectionFormFactory, AllBinary.getInstance(StringUtil).EMPTY_STRING, items, rectangle, formType, Int32(15), true, this.basicColorFactory.BLACK, this.basicColorFactory.WHITE)
        AllBinary.setMenuForm(this, scrollSelectionForm)
        local formType2 = AllBinary.getFormType(AllBinary.getInstance(FormTypeFactory))
        local rectangle2 = AllBinary.createFormRectangle(this.formUtil)
        AllBinary.init(scrollSelectionForm, rectangle2, formType2)
        if AllBinary.getMenuForm(this) !== AllBinary.getInstance(ScrollSelectionFormNoneFactory)
            AllBinary.setMenuInputProcessor(this, newCommandFormInputProcessor(newBasicArrayListD(), -Int32(1), this, AllBinary.getMenuForm(this)))
        end
        AllBinary.open(this)
        nothing
end


function open(this::DemoCanvas)
        AllBinary.addListenerInterface(AllBinary.getInstance(BasicMotionGesturesHandler), AllBinary.getMenuInputProcessor(this))
        AllBinary.addListener(AllBinary.getInstance(GameKeyEventHandler), AllBinary.getMenuInputProcessor(this))
        nothing
end


function close(this::DemoCanvas)
        AllBinary.removeListener(AllBinary.getInstance(BasicMotionGesturesHandler), AllBinary.getMenuInputProcessor(this))
        AllBinary.removeListener(AllBinary.getInstance(GameKeyEventHandler), AllBinary.getMenuInputProcessor(this))
        nothing
end


function getSourceId(this::DemoCanvas)
        return staticGet_id(DemoCanvas)
end


function keyPressed(this::DemoCanvas, keyCode)
        AllBinary.keyPressedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyReleased(this::DemoCanvas, keyCode)
        AllBinary.keyReleasedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyRepeated(this::DemoCanvas, keyCode)
        AllBinary.keyRepeatedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyPressedByDevice(this::DemoCanvas, keyCode, deviceId)
        AllBinary.addGameKeyEvent(this, keyCode, false)
        nothing
end


function keyReleasedByDevice(this::DemoCanvas, keyCode, deviceId)
        AllBinary.removeGameKeyEvent(this, keyCode, false)
        nothing
end


function keyRepeatedByDevice(this::DemoCanvas, keyCode, deviceId)
        if this.isSingleKeyRepeatableProcessing
            AllBinary.addGameKeyEvent(this, keyCode, true)
        end
        nothing
end


function addGameKeyEvent(this::DemoCanvas, keyCode, repeated)
        try
            local gameKey = AllBinary.getInstanceForCanvas(this.inputToGameKeyMapping, this, keyCode)
            if gameKey !== this.NONE
                local gameKeyEvent = AllBinary.getInstanceForInput(this.gameKeyEventFactory, this, gameKey)
                AllBinary.fireEvent(AllBinary.getInstance(DownGameKeyEventHandler), gameKeyEvent)
            else
                if this.lastKeyNotMapped != keyCode
                    this.lastKeyNotMapped = keyCode
                    AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.gameInputStrings.NO_KEY), keyCode)), this, this.gameInputStrings.ADD_KEY_EVENT)
                end
            end
        catch e
            AllBinary.put(this.logUtil, "Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)
        end
        nothing
end


function removeGameKeyEvent(this::DemoCanvas, keyCode, repeated)
        try
            local gameKey = AllBinary.getInstanceForCanvas(this.inputToGameKeyMapping, this, keyCode)
            if gameKey !== this.NONE
                local gameKeyEvent = AllBinary.getInstanceForInput(this.gameKeyEventFactory, this, gameKey)
                AllBinary.fireEvent(AllBinary.getInstance(UpGameKeyEventHandler), gameKeyEvent)
            else
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.gameInputStrings.NO_KEY), keyCode)), this, this.gameInputStrings.REMOVE_KEY_EVENT)
            end
        catch e
            AllBinary.put(this.logUtil, "Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e)
        end
        nothing
end


function pause(this::DemoCanvas)
        AllBinary.close(this)
        AllBinary.setPaused(this, true)
        this.gameRunnable = AllBinary.getInstance(NullWaitGameRunnable)
        AllBinary.pause(this.gameCanvas)
        nothing
end


function unPause(this::DemoCanvas)
        AllBinary.open(this)
        AllBinary.unPause(this.gameCanvas)
        this.gameRunnable = this.gameCanvas.gameRunnable
        AllBinary.setPaused(this, false)
        nothing
end


function isPausable(this::DemoCanvas)
        if AllBinary.getUsedRunnable(AllBinary.getInstance(CurrentDisplayableFactory)) == AllBinary.getInstance(NullWaitGameRunnable)
            return true
        else
            return false
        end
end


function isGameOver(this::DemoCanvas)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.NOT_IMPLEMENTED), " since not a game")), this, "isGameOver")
        return false
end


function setLoadStateHashtable(this::DemoCanvas, hashtable)
        AllBinary.putF(this.logUtil, "Trying to continue a demo lol - only continue a game canvas not the demo", this, "setLoadStateHashtable")
        nothing
end


function getLoadStateHashtable(this::DemoCanvas)
        AllBinary.putF(this.logUtil, "Trying to continue a demo lol - only continue a game canvas not the demo", this, "getLoadStateHashtable")
        return this.stdUtil.NULL_TABLE
end


function getCurrentStateHashtable(this::DemoCanvas)
        AllBinary.putF(this.logUtil, "Trying to save the AI lol", this, "getCurrentStateHashtable")
        return this.stdUtil.NULL_TABLE
end


function setHighScoreSubmitted(this::DemoCanvas, isNotUsed)
        nothing
        nothing
end


function paint(this::DemoCanvas, graphics)
        AllBinary.paint(this.paintableInterface, graphics)
        AllBinary.paintXY(this.paintedSpecialAnimationInterface, graphics, Int32(0), Int32(0))
        AllBinary.paint(this.highScoresPaintable, graphics)
        AllBinary.paint(AllBinary.getBasicGameDemoPaintable(this), graphics)
        AllBinary.paint(this.overlayPaintable, graphics)
        AllBinary.paint(this.fullscreenPaintable, graphics)
        AllBinary.paint(this.progressPaintable, graphics)
        nothing
end


function paintThreed(this::DemoCanvas, graphics)
        AllBinary.paintThreed(this.paintableInterface, graphics)
        AllBinary.paintThreedXYZ(this.paintedSpecialAnimationInterface, graphics, Int32(0), Int32(0), Int32(0))
        nothing
end


function processGameOver(this::DemoCanvas)
        AllBinary.putF(this.logUtil, "Not Implemented since not a game", this, "setGameOver")
        nothing
end


function demoStateChange(this::DemoCanvas)
        local newState::Int32 = this.state + Int32(1)
        if newState > Int32(2)
            newState = Int32(0)
        elseif newState == Int32(2)
            if !AllBinary.isAnyHighScores(this.highScoresHelper)
                newState = Int32(0)
            else
                local highScores = AllBinary.getNextHighScores(this.highScoresHelper)
                if highScores === AllBinary.getInstance(NullHighScoresSingletonFactory)
                    newState = Int32(0)
                else
                    AllBinary.setHighScores(AllBinary.getRealHighScoresPaintable(this), highScores)
                end
            end
        end
        AllBinary.setState(this, newState)
        AllBinary.updateDemoState(this)
        nothing
end


function updateDemoState(this::DemoCanvas)
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.createInstance(AllBinary.getInstance(SmallIntegerSingletonFactory), this.state)), this, this.SET_STATE)
        AllBinary.setState(AllBinary.getBasicGameDemoPaintable(this), this.state)
        if this.state == Int32(0)
            this.highScoresPaintable = AllBinary.getInstance(NullPaintable)
            this.paintedSpecialAnimationInterface = AllBinary.getSpecialAnimationInterface(this)
            if !AllBinary.isRunning(this.demoGameRunnable) && AllBinary.isInitialized(this.gameCanvas)
                AllBinary.reset(AllBinary.getSpecialAnimationInterface(this))
            end
        elseif this.state == Int32(1)
            this.paintedSpecialAnimationInterface = AllBinary.getInstance(SpecialAnimation)
        elseif this.state == Int32(2)
            this.highScoresPaintable = AllBinary.getRealHighScoresPaintable(this)
        end
        local gameAdState = AllBinary.getCurrentInstance(this.gameAdStateFactory)
        AllBinary.processPageAdState(gameAdState)
        nothing
end


function getNextRandom(this::DemoCanvas)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function createGameLayerManager(this::DemoCanvas, randomValue)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function createRunnable(this::DemoCanvas, randomLevel)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function create(this::DemoCanvas)
        AllBinary.put(PreLogUtil, this.commonStrings.START, this, "create")
        this.highScoresPaintable = AllBinary.getInstance(NullPaintable)
        local randomLevel::Int32 = AllBinary.getNextRandom(this)
        this.gameCanvas = (AllBinary.createRunnable(this, randomLevel))
        this.basicColor = AllBinary.getForegroundBasicColor(AllBinary.getLayerManager(this.gameCanvas))
        AllBinary.setBasicColorP(AllBinary.getRealHighScoresPaintable(this), this.basicColor)
        AllBinary.setGameCanvasStartListener(this.gameCanvas, this)
        local gameInfo = AllBinary.getGameInfo(AllBinary.getLayerManager(this.gameCanvas))
        AllBinary.fetchHighScores(AllBinary.getHighScoresFactoryInterface(this), gameInfo, this.highScoresHelper)
        nothing
end


function start(this::DemoCanvas)
        local gameCanvas = this.gameCanvas
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Game Thread in DemoCanvas: "), AllBinary.toString(this.stringUtil, gameCanvas))), this, this.commonStrings.START)
        this.canvasThread = AllBinary.getInstanceGameCanvasRunnable(this.threadFactoryUtil, gameCanvas)
        AllBinary.setThread(this.gameCanvas, this.canvasThread)
        AllBinary.start(this.threadFactoryUtil, this.canvasThread)
        if AllBinary.getWait(this) == AllBinary.getInstance(NullWaitGameRunnable).WAIT
            AllBinary.setWait(this, AllBinary.getTempWait(this))
        end
        nothing
end


function preDemoProcess(this::DemoCanvas)
        if !AllBinary.isInitialized(this.gameCanvas) || AllBinary.getTitle(this.gameCanvas) == staticGet_NO_GAME(NullGameCanvas)
            if AllBinary.update(AllBinaryMediaManager)
                if !AllBinary.process(AllBinary.getInstance(PrimaryPlayerQueueFactory))
                    AllBinary.process(AllBinary.getInstance(SecondaryPlayerQueueFactory))
                end
            end
        end
        AllBinary.update(this.overlayPaintable)
        nothing
end


function process(this::DemoCanvas)
        AllBinary.process(this)
        AllBinary.processInputList(AllBinary.getMenuInputProcessor(this))
        AllBinary.preDemoProcess(this)
        if this.state == Int32(0)
            local indexedAnimationBehavior = ((AllBinary.getAnimationBehavior(AllBinary.getSpecialAnimationInterface(this))))
            if indexedAnimationBehavior.loopIndex < Int32(1)
                AllBinary.setStartTimeTNT(this.timeDelayHelper)
            end
            local demoGameMidlet = (AllBinary.getCustomCommandListener(this))
            if this.gameCanvas !== AllBinary.getInstance(NullGameCanvas) && AllBinary.isGameOver(this.gameCanvas)
                AllBinary.stopGameDemo(this)
                local randomLevel::Int32 = AllBinary.getNextRandom(this)
                local gameInfo = AllBinary.getGameInfo(AllBinary.getLayerManager(this.gameCanvas))
                AllBinary.setCurrentLevel(gameInfo, randomLevel)
                AllBinary.setGameOver(this.gameCanvas, false)
                AllBinary.start(this)
            elseif this.gameCanvas === AllBinary.getInstance(NullGameCanvas) && AllBinary.isReady(demoGameMidlet)
                if !AllBinary.isRunning(this.demoGameRunnable)
                    AllBinary.startDemoGame(this)
                    AllBinary.setRunning(this.demoGameRunnable, true)
                    local thread = AllBinary.getInstanceForRunnable(this.threadFactoryUtil, this.demoGameRunnable)
                    AllBinary.setThread(this.demoGameRunnable, thread)
                    AllBinary.start(this.threadFactoryUtil, thread)
                end
            end
        end
        nothing
end


function startDemoGame(this::DemoCanvas)
        AllBinary.showProgress(DemoCanvasProgressUtil, this)
        nothing
end


function stopGameDemo(this::DemoCanvas)
        if this.gameCanvas !== AllBinary.getInstance(NullGameCanvas)
            AllBinary.putF(this.logUtil, "Set Running False", this, "stopGameDemo")
            AllBinary.setRunning(this.gameCanvas, false)
        end
        AllBinary.join(AllBinary.getInstance(ThreadUtil), this.canvasThread)
        nothing
end


function showGamePaintable(this::DemoCanvas)
        local METHOD_NAME = "showGamePaintable"
        AllBinary.put(PreLogUtil, this.commonStrings.START, this, METHOD_NAME)
        local isDefault::Bool = AllBinary.isHTML(J2MEUtil)
        if this.gameCanvas !== AllBinary.getInstance(NullGameCanvas) && (AllBinary.isRunning(this.gameCanvas) || isDefault || staticGet_isSWT(SWTUtil)) && !(AllBinary.getType(this.gameCanvas) == staticGet_TYPE(NullGameCanvas))
            this.gameRunnable = this.gameCanvas.gameRunnable
            AllBinary.put(PreLogUtil, "Showing Game", this, METHOD_NAME)
            AllBinary.setPaintableInterface(this, this.gameCanvas)
        else
            this.gameRunnable = AllBinary.getInstance(NullWaitGameRunnable)
            AllBinary.put(PreLogUtil, "Not Showing Game", this, METHOD_NAME)
            AllBinary.setPaintableInterface(this, AllBinary.getDefaultPaintableInterface(this))
        end
        nothing
end


function isReadyForStateChange(this::DemoCanvas)
        return !AllBinary.isRunning(this.demoGameRunnable) && AllBinary.isInitialized(this.gameCanvas)
end


function processGame(this::DemoCanvas)
        AllBinary.run(this.gameRunnable)
        if !AllBinary.isComplete(this.specialAnimationInterface) && AllBinary.isReadyForStateChange(this)
            AllBinary.nextFrame(this.specialAnimationInterface)
        end
        if AllBinary.isTimeTNT(this.timeDelayHelper) && AllBinary.isReadyForStateChange(this)
            AllBinary.demoStateChange(this)
        else
            AllBinary.process(this)
        end
        nothing
end


function run(this::DemoCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
        try
            local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
            local features = AllBinary.getInstance(Features)
            local openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
            AllBinary.addNormalPortion(progressCanvas, Int32(50), "Demo Thread")
            AllBinary.setCurrentThread(this)
            AllBinary.setRunning(this, true)
            if AllBinary.isFeature(features, AllBinary.getInstance(MainFeatureFactory).LOAD_ONDEMAND)
                AllBinary.end_(progressCanvas)
            else
                AllBinary.addNormalPortion(progressCanvas, Int32(50), "Demo Thread Running")
            end
            AllBinary.initOnRun(this.fullScreenUtil, this, AllBinary.getCustomCommandListener(this))
            AllBinary.initMenu(this)
            AllBinary.initPostPaint(this)
            AllBinary.updateDemoState(this)
            if AllBinary.isDefault(features, openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
                while this.gameCanvas === AllBinary.getInstance(NullGameCanvas) || !AllBinary.isInitialized(this.gameCanvas)
                    AllBinary.setStartTimeTNT(this.loopTimeHelper)
                    AllBinary.processGame(this)
                    AllBinary.processLoopSleep(this)
                end
                local demoGameRunnable = newDemoGameRunnable(this)
                local currentDisplayableFactory = AllBinary.getInstance(CurrentDisplayableFactory)
                AllBinary.setRunnable(currentDisplayableFactory, demoGameRunnable)
                AllBinary.setMyCanvas(currentDisplayableFactory, this)
                AllBinary.onResume(AllBinary.getInstance(OpenGLThreadUtil))
            end
            if AllBinary.isDefault(features, openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || AllBinary.isHTML(J2MEUtil)
                demoGameRunnable = newDemoGameRunnable(this)
                currentDisplayableFactory = AllBinary.getInstance(CurrentDisplayableFactory)
                AllBinary.setRunnable(currentDisplayableFactory, demoGameRunnable)
                AllBinary.setMyCanvas(currentDisplayableFactory, this)
            else
                while AllBinary.isRunning(this)
                    AllBinary.run3(this)
                end
                AllBinary.end_(this)
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        end
        AllBinary.putF(this.logUtil, this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        nothing
end


function run3(this::DemoCanvas)
        AllBinary.setStartTimeTNT(this.loopTimeHelper)
        AllBinary.processGame(this)
        AllBinary.processLoopSleep(this)
        nothing
end


function setRunning(this::DemoCanvas, running)
        AllBinary.setRunning(this, running)
        try
            local features = AllBinary.getInstance(Features)
            local openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
            if running
                nothing
            else
                if (AllBinary.isDefault(features, openGLFeatureFactory.OPENGL) || AllBinary.isHTML(J2MEUtil)) || staticGet_isSWT(SWTUtil)
                    local currentDisplayableFactory = AllBinary.getInstance(CurrentDisplayableFactory)
                    AllBinary.clearRunnable(currentDisplayableFactory)
                    AllBinary.end_(this)
                end
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e)
        end
        nothing
end


function end_(this::DemoCanvas)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        local features = AllBinary.getInstance(Features)
        AllBinary.add(this.baseGameStatistics, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), staticGet_BOT_GAME_STATS(DemoCanvas)), AllBinary.toString(this.baseGameStatistics)), AllBinary.getInstance(CommonSeps).NEW_LINE)))
        AllBinary.init(this.baseGameStatistics)
        if AllBinary.isFeature(features, AllBinary.getInstance(MainFeatureFactory).LOAD_ONDEMAND)
            AllBinary.start(progressCanvas)
        end
        AllBinary.putF(this.logUtil, "Demo End", this, this.commonStrings.RUN)
        AllBinary.close(this)
        AllBinary.removeListener(AllBinary.getInstance(DisplayChangeEventHandler), this)
        AllBinary.stopGameDemo(this)
        nothing
end


function setGameState(this::DemoCanvas, gameState)
        nothing
        nothing
end


function getGameState(this::DemoCanvas)
        return this.gameStateFactory.PLAYING_GAME_STATE
end


function getGameCanvasRunnableInterface(this::DemoCanvas)
        return this.gameCanvas
end


function isDemoLoading(this::DemoCanvas)
        local gameCanvas = this.gameCanvas
        if gameCanvas === AllBinary.getInstance(NullGameCanvas)
            return true
        elseif AllBinary.isInitialized(gameCanvas)
            return false
        end
        return true
end


function getState(this::DemoCanvas)
        return this.state
end


function setState(this::DemoCanvas, state)
        this.state = state
        nothing
end


function isHighScoreSubmitted(this::DemoCanvas)
        AllBinary.putF(this.logUtil, "Wow the AI got a high score!", this, "isHighScoreSubmitted")
        return false
end


function getRealHighScoresPaintable(this::DemoCanvas)
        return this.realHighScoresPaintable
end


function setSpecialAnimationInterface(this::DemoCanvas, specialAnimationInterface)
        AllBinary.setFrame(specialAnimationInterface, Int32(0))
        this.specialAnimationInterface = specialAnimationInterface
        nothing
end


function getSpecialAnimationInterface(this::DemoCanvas)
        return this.specialAnimationInterface
end


function setPaintableInterface(this::DemoCanvas, paintableInterface)
        this.paintableInterface = paintableInterface
        nothing
end


function getPaintableInterface(this::DemoCanvas)
        return this.paintableInterface
end


function setDefaultPaintableInterface(this::DemoCanvas, defaultPaintableInterface)
        this.defaultPaintableInterface = defaultPaintableInterface
        nothing
end


function getDefaultPaintableInterface(this::DemoCanvas)
        return this.defaultPaintableInterface
end


function getHighScoresFactoryInterface(this::DemoCanvas)
        return this.highScoresFactoryInterface
end


function setMenuInputProcessor(this::DemoCanvas, menuInputProcessor)
        this.menuInputProcessor = menuInputProcessor
        nothing
end


function getMenuInputProcessor(this::DemoCanvas)
        return this.menuInputProcessor
end


function getMenuForm(this::DemoCanvas)
        return this.menuForm
end


function setMenuForm(this::DemoCanvas, menuForm)
        this.menuForm = menuForm
        nothing
end


function isInitialized(this::DemoCanvas)
        return this.initialized
end


function getOverlayPaintable(this::DemoCanvas)
        return this.overlayPaintable
end


function setBasicGameDemoPaintable(this::DemoCanvas, basicGameDemoPaintable)
        this.basicGameDemoPaintable = basicGameDemoPaintable
        nothing
end


function getBasicGameDemoPaintable(this::DemoCanvas)
        return this.basicGameDemoPaintable
end


function setTempWait(this::DemoCanvas, tempWait)
        this.tempWait = tempWait
        nothing
end


function getTempWait(this::DemoCanvas)
        return this.tempWait
end


function isSingleThread(this::DemoCanvas)
        return AllBinary.isAnyThreed(AllBinary.getInstance(OpenGLFeatureUtil)) || staticGet_isSWT(SWTUtil)
end


function isRunningInAnotherThread(this::DemoCanvas)
        local features = AllBinary.getInstance(Features)
        local openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
        if AllBinary.isDefault(features, openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
            return true
        else
            return AllBinary.isRunning(this)
        end
end


function getGameInitializationInterfaceFactoryInterface(this::DemoCanvas)
        return this.gameInitializationInterfaceFactoryInterface
end


function getType(this::DemoCanvas)
        return staticGet_TYPE(DemoCanvas)
end


function getTitle(this::DemoCanvas)
        return AllBinary.getTitle(this)
end


function isPaused(this::DemoCanvas)
        return AllBinary.isPaused(this)
end

