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
mutable struct StartCanvas <: JObject
    basicColorFactory::Any
    features::Any
    openGLFeatureFactory::Any
    myCommandsFactory::Any
    gameAdStateFactory::Any
    gameStateFactory::Any
    gameInputStrings::Any
    formUtil::Any
    basicGameDemoPaintable::Any
    specialAnimationInterface::Any
    paintedSpecialAnimationInterface::Any
    fullScreenUtil::Any
    highScoresHelper::Any
    realHighScoresPaintable::Any
    highScoresPaintable::Any
    state::Int32
    timeDelayHelper::Any
    highScoresFactoryInterface::Any
    menuInputProcessor::Any
    menuForm::Any
    gameInitializationInterfaceFactoryInterface::Any
    initialized::Bool
    defaultPaintableInterface::Any
    paintableInterface::Any
    overlayPaintable::Any
    tempWait::Int32
    inputToGameKeyMapping::Any
    gameRunnable::Any
    progressPaintable::Any
    isSingleKeyRepeatableProcessing::Bool
    NONE::Any
    gameKeyEventFactory::Any
    SET_STATE::Any
    baseGameStatistics::Any
    StartCanvas() = new()
end

const StartCanvas_idValue = Ref{Any}(nothing)
const StartCanvas_idSet = Ref(false)
function staticGet_id(::Type{StartCanvas})
    if !StartCanvas_idSet[]
        StartCanvas_idSet[] = true
        StartCanvas_idValue[] = Int32(0)
    end
    StartCanvas_idValue[]
end
function staticSet_id(::Type{StartCanvas}, value)
    StartCanvas_idSet[] = true
    StartCanvas_idValue[] = value
end
const StartCanvas_BOT_GAME_STATSValue = Ref{Any}(nothing)
const StartCanvas_BOT_GAME_STATSSet = Ref(false)
function staticGet_BOT_GAME_STATS(::Type{StartCanvas})
    if !StartCanvas_BOT_GAME_STATSSet[]
        StartCanvas_BOT_GAME_STATSSet[] = true
        StartCanvas_BOT_GAME_STATSValue[] = "Bot Game Statistics: "
    end
    StartCanvas_BOT_GAME_STATSValue[]
end
function staticSet_BOT_GAME_STATS(::Type{StartCanvas}, value)
    StartCanvas_BOT_GAME_STATSSet[] = true
    StartCanvas_BOT_GAME_STATSValue[] = value
end

function initFieldsStartCanvas(this::StartCanvas)
    this.basicColorFactory = nothing
    this.features = nothing
    this.openGLFeatureFactory = nothing
    this.myCommandsFactory = nothing
    this.gameAdStateFactory = nothing
    this.gameStateFactory = nothing
    this.gameInputStrings = nothing
    this.formUtil = nothing
    this.basicGameDemoPaintable = nothing
    this.specialAnimationInterface = nothing
    this.paintedSpecialAnimationInterface = nothing
    this.fullScreenUtil = nothing
    this.highScoresHelper = nothing
    this.realHighScoresPaintable = nothing
    this.highScoresPaintable = nothing
    this.state = Int32(0)
    this.timeDelayHelper = nothing
    this.highScoresFactoryInterface = nothing
    this.menuInputProcessor = nothing
    this.menuForm = nothing
    this.gameInitializationInterfaceFactoryInterface = nothing
    this.initialized = false
    this.defaultPaintableInterface = nothing
    this.paintableInterface = nothing
    this.overlayPaintable = nothing
    this.tempWait = Int32(0)
    this.inputToGameKeyMapping = nothing
    this.gameRunnable = nothing
    this.progressPaintable = nothing
    this.isSingleKeyRepeatableProcessing = false
    this.NONE = nothing
    this.gameKeyEventFactory = nothing
    this.SET_STATE = nothing
    this.baseGameStatistics = nothing
    this.basicColorFactory = AllBinary.getInstance(BasicColorFactory)
    this.features = AllBinary.getInstance(Features)
    this.openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
    this.myCommandsFactory = AllBinary.getInstance(MyCommandsFactory)
    this.gameAdStateFactory = AllBinary.getInstance(GameAdStateFactory)
    this.gameStateFactory = AllBinary.getInstance(GameStateFactory)
    this.gameInputStrings = AllBinary.getInstance(GameInputStrings)
    this.formUtil = AllBinary.getInstance(FormUtil)
    this.basicGameDemoPaintable = AllBinary.getInstance(StatePaintableFactory)
    this.specialAnimationInterface = AllBinary.getInstance(SpecialAnimation)
    this.paintedSpecialAnimationInterface = AllBinary.getInstance(SpecialAnimation)
    this.fullScreenUtil = AllBinary.getInstance(FullScreenUtil)
    this.highScoresHelper = newHighScoresHelper()
    this.realHighScoresPaintable = newHighScoresPaintable()
    this.highScoresPaintable = AllBinary.getInstance(NullPaintable)
    this.state = Int32(0)
    this.timeDelayHelper = newTimeDelayHelper(Int32(6000))
    
    this.menuInputProcessor = AllBinary.getInstance(NoMenuInputProcessor)
    this.menuForm = AllBinary.getNullScrollSelectionForm(ScrollSelectionForm)
    
    this.initialized = false
    this.defaultPaintableInterface = AllBinary.getInstance(NullPaintable)
    this.paintableInterface = AllBinary.getInstance(NullPaintable)
    
    this.tempWait = AllBinary.getInstance(NullWaitGameRunnable).WAIT
    this.inputToGameKeyMapping = AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory)))
    this.gameRunnable = AllBinary.getInstance(NullWaitGameRunnable)
    this.progressPaintable = AllBinary.getLazyInstance(ProgressCanvasFactory)
    this.isSingleKeyRepeatableProcessing = AllBinary.isFeature(this.features, AllBinary.getInstance(InputFeatureFactory).SINGLE_KEY_REPEAT_PRESS)
    this.NONE = AllBinary.getInstance(GameKeyFactory).NONE
    this.gameKeyEventFactory = AllBinary.getInstance(GameKeyEventFactory)
    this.SET_STATE = "setState"
    this.baseGameStatistics = AllBinary.getInstance(GameStatisticsFactory)
    nothing
end


function initStartCanvas(this::StartCanvas, abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)
        initRunnableCanvas(this, commandListener, AllBinary.getInstance(CurrentDisplayableFactory).DEFAULT_CHILD_NAME_LIST, true)
        initFieldsStartCanvas(this)
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
        AllBinary.addListenerInterface(AllBinary.getInstance(DisplayChangeEventHandler), this)
        nothing
end

function newStartCanvas(abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)
    this = StartCanvas()
    initStartCanvas(this, abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)
    this
end


function onEvent(this::StartCanvas, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onDisplayChangeEvent(this::StartCanvas, displayChangeEvent)
        try
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


function getCustomCommands(this::StartCanvas)
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


function initCommands(this::StartCanvas, cmdListener)
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


function initPostPaint(this::StartCanvas)
        nothing
        nothing
end


function mediaInit(this::StartCanvas)
        AllBinary.init(AllBinaryMediaManager, AllBinary.getInstance(EarlySoundsFactory))
        nothing
end


function itemStateChanged(this::StartCanvas, item)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        nothing
end


function initMenu(this::StartCanvas)
        AllBinary.close(this)
        AllBinary.open(this)
        nothing
end


function open(this::StartCanvas)
        AllBinary.addListenerInterface(AllBinary.getInstance(BasicMotionGesturesHandler), AllBinary.getMenuInputProcessor(this))
        AllBinary.addListener(AllBinary.getInstance(GameKeyEventHandler), AllBinary.getMenuInputProcessor(this))
        nothing
end


function close(this::StartCanvas)
        AllBinary.removeListener(AllBinary.getInstance(BasicMotionGesturesHandler), AllBinary.getMenuInputProcessor(this))
        AllBinary.removeListener(AllBinary.getInstance(GameKeyEventHandler), AllBinary.getMenuInputProcessor(this))
        nothing
end


function getSourceId(this::StartCanvas)
        return staticGet_id(StartCanvas)
end


function keyPressed(this::StartCanvas, keyCode)
        AllBinary.keyPressedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyReleased(this::StartCanvas, keyCode)
        AllBinary.keyReleasedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyRepeated(this::StartCanvas, keyCode)
        AllBinary.keyRepeatedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyPressedByDevice(this::StartCanvas, keyCode, deviceId)
        AllBinary.addGameKeyEvent(this, keyCode, false)
        nothing
end


function keyReleasedByDevice(this::StartCanvas, keyCode, deviceId)
        AllBinary.removeGameKeyEvent(this, keyCode, false)
        nothing
end


function keyRepeatedByDevice(this::StartCanvas, keyCode, deviceId)
        if this.isSingleKeyRepeatableProcessing
            AllBinary.addGameKeyEvent(this, keyCode, true)
        end
        nothing
end


function addGameKeyEvent(this::StartCanvas, keyCode, repeated)
        try
            local gameKey = AllBinary.getInstanceForCanvas(this.inputToGameKeyMapping, this, keyCode)
            if gameKey !== this.NONE
                local gameKeyEvent = AllBinary.getInstanceForInput(this.gameKeyEventFactory, this, gameKey)
                AllBinary.fireEvent(AllBinary.getInstance(DownGameKeyEventHandler), gameKeyEvent)
            else
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.gameInputStrings.NO_KEY), keyCode)), this, this.gameInputStrings.ADD_KEY_EVENT)
            end
        catch e
            AllBinary.put(this.logUtil, "Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)
        end
        nothing
end


function removeGameKeyEvent(this::StartCanvas, keyCode, repeated)
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


function pause(this::StartCanvas)
        AllBinary.close(this)
        AllBinary.setPaused(this, true)
        nothing
end


function unPause(this::StartCanvas)
        AllBinary.open(this)
        AllBinary.setPaused(this, false)
        nothing
end


function isPausable(this::StartCanvas)
        if AllBinary.getUsedRunnable(AllBinary.getInstance(CurrentDisplayableFactory)) == AllBinary.getInstance(NullWaitGameRunnable)
            return true
        else
            return false
        end
end


function isGameOver(this::StartCanvas)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.NOT_IMPLEMENTED), " since not a game")), this, "isGameOver")
        return false
end


function setLoadStateHashtable(this::StartCanvas, hashtable)
        AllBinary.putF(this.logUtil, "Trying to continue a demo lol - only continue a game canvas not the demo", this, "setLoadStateHashtable")
        nothing
end


function getLoadStateHashtable(this::StartCanvas)
        AllBinary.putF(this.logUtil, "Trying to continue a demo lol - only continue a game canvas not the demo", this, "getLoadStateHashtable")
        return this.stdUtil.NULL_TABLE
end


function getCurrentStateHashtable(this::StartCanvas)
        AllBinary.putF(this.logUtil, "Trying to save the AI lol", this, "getCurrentStateHashtable")
        return this.stdUtil.NULL_TABLE
end


function setHighScoreSubmitted(this::StartCanvas, isNotUsed)
        nothing
        nothing
end


function paint(this::StartCanvas, graphics)
        AllBinary.paint(this.paintableInterface, graphics)
        AllBinary.paintXY(this.paintedSpecialAnimationInterface, graphics, Int32(0), Int32(0))
        AllBinary.paint(this.highScoresPaintable, graphics)
        AllBinary.paint(AllBinary.getBasicGameDemoPaintable(this), graphics)
        AllBinary.paint(this.overlayPaintable, graphics)
        AllBinary.paint(this.progressPaintable, graphics)
        nothing
end


function paintThreed(this::StartCanvas, graphics)
        AllBinary.paintThreed(this.paintableInterface, graphics)
        AllBinary.paintThreedXYZ(this.paintedSpecialAnimationInterface, graphics, Int32(0), Int32(0), Int32(0))
        nothing
end


function processGameOver(this::StartCanvas)
        AllBinary.putF(this.logUtil, "Not Implemented since not a game", this, "setGameOver")
        nothing
end


function demoStateChange(this::StartCanvas)
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


function updateDemoState(this::StartCanvas)
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.createInstance(AllBinary.getInstance(SmallIntegerSingletonFactory), this.state)), this, this.SET_STATE)
        AllBinary.setState(AllBinary.getBasicGameDemoPaintable(this), this.state)
        if this.state == Int32(0)
            this.highScoresPaintable = AllBinary.getInstance(NullPaintable)
            this.paintedSpecialAnimationInterface = AllBinary.getSpecialAnimationInterface(this)
            AllBinary.reset(AllBinary.getSpecialAnimationInterface(this))
        elseif this.state == Int32(1)
            this.paintedSpecialAnimationInterface = AllBinary.getInstance(SpecialAnimation)
        elseif this.state == Int32(2)
            this.highScoresPaintable = AllBinary.getRealHighScoresPaintable(this)
        end
        local gameAdState = AllBinary.getCurrentInstance(this.gameAdStateFactory)
        AllBinary.processPageAdState(gameAdState)
        nothing
end


function getNextRandom(this::StartCanvas)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function createGameLayerManager(this::StartCanvas, randomValue)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function createRunnable(this::StartCanvas, randomLevel)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function createCanvas(this::StartCanvas)
        this.highScoresPaintable = AllBinary.getInstance(NullPaintable)
        local randomLevel::Int32 = AllBinary.getNextRandom(this)
        nothing
end


function start(this::StartCanvas)
        nothing
        nothing
end


function preDemoProcess(this::StartCanvas)
        AllBinary.update(this.overlayPaintable)
        nothing
end


function process(this::StartCanvas)
        AllBinary.processInputList(AllBinary.getMenuInputProcessor(this))
        AllBinary.preDemoProcess(this)
        if this.state == Int32(0)
            local indexedAnimationBehavior = (AllBinary.getAnimationBehavior(AllBinary.getSpecialAnimationInterface(this)))
            if indexedAnimationBehavior.loopIndex < Int32(1)
                AllBinary.setStartTimeTNT(this.timeDelayHelper)
            end
            local demoGameMidlet = (AllBinary.getCustomCommandListener(this))
        end
        nothing
end


function startDemoGame(this::StartCanvas)
        nothing
        nothing
end


function processGame(this::StartCanvas)
        AllBinary.run(this.gameRunnable)
        AllBinary.nextFrame(this.specialAnimationInterface)
        AllBinary.process(this)
        nothing
end


function run(this::StartCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
        try
            local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
            AllBinary.addNormalPortion(progressCanvas, Int32(50), "Demo Thread")
            AllBinary.setCurrentThread(this)
            AllBinary.setRunning(this, true)
            if AllBinary.isFeature(this.features, AllBinary.getInstance(MainFeatureFactory).LOAD_ONDEMAND)
                AllBinary.end_(progressCanvas)
            else
                AllBinary.addNormalPortion(progressCanvas, Int32(50), "Demo Thread Running")
            end
            AllBinary.initOnRun(this.fullScreenUtil, this, AllBinary.getCustomCommandListener(this))
            AllBinary.initMenu(this)
            AllBinary.initPostPaint(this)
            AllBinary.updateDemoState(this)
            if AllBinary.isDefault(this.features, this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
                AllBinary.onResume(AllBinary.getInstance(OpenGLThreadUtil))
            end
            if AllBinary.isDefault(this.features, this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || AllBinary.isHTML(J2MEUtil)
                nothing
            else
                while AllBinary.isRunning(this)
                    AllBinary.setStartTimeTNT(this.loopTimeHelper)
                    AllBinary.processGame(this)
                    AllBinary.processLoopSleep(this)
                end
                AllBinary.end_(this)
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        end
        AllBinary.putF(this.logUtil, this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        nothing
end


function setRunning(this::StartCanvas, running)
        AllBinary.setRunning(this, running)
        try
            if (AllBinary.isDefault(this.features, this.openGLFeatureFactory.OPENGL) || AllBinary.isHTML(J2MEUtil)) && !running
                local currentDisplayableFactory = AllBinary.getInstance(CurrentDisplayableFactory)
                AllBinary.clearRunnable(currentDisplayableFactory)
                AllBinary.end_(this)
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e)
        end
        nothing
end


function end_(this::StartCanvas)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        AllBinary.add(this.baseGameStatistics, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), staticGet_BOT_GAME_STATS(StartCanvas)), AllBinary.toString(this.baseGameStatistics)), AllBinary.getInstance(CommonSeps).NEW_LINE)))
        AllBinary.init(this.baseGameStatistics)
        if AllBinary.isFeature(this.features, AllBinary.getInstance(MainFeatureFactory).LOAD_ONDEMAND)
            AllBinary.start(progressCanvas)
        end
        AllBinary.putF(this.logUtil, "Demo End", this, this.commonStrings.RUN)
        AllBinary.close(this)
        AllBinary.removeListener(AllBinary.getInstance(DisplayChangeEventHandler), this)
        nothing
end


function setGameState(this::StartCanvas, gameState)
        nothing
        nothing
end


function getGameState(this::StartCanvas)
        return this.gameStateFactory.PLAYING_GAME_STATE
end


function getState(this::StartCanvas)
        return this.state
end


function setState(this::StartCanvas, state)
        this.state = state
        nothing
end


function isHighScoreSubmitted(this::StartCanvas)
        AllBinary.putF(this.logUtil, "Wow the AI got a high score!", this, "isHighScoreSubmitted")
        return false
end


function getRealHighScoresPaintable(this::StartCanvas)
        return this.realHighScoresPaintable
end


function setSpecialAnimationInterface(this::StartCanvas, specialAnimationInterface)
        AllBinary.setFrame(specialAnimationInterface, Int32(0))
        this.specialAnimationInterface = specialAnimationInterface
        nothing
end


function getSpecialAnimationInterface(this::StartCanvas)
        return this.specialAnimationInterface
end


function setPaintableInterface(this::StartCanvas, paintableInterface)
        this.paintableInterface = paintableInterface
        nothing
end


function getPaintableInterface(this::StartCanvas)
        return this.paintableInterface
end


function setDefaultPaintableInterface(this::StartCanvas, defaultPaintableInterface)
        this.defaultPaintableInterface = defaultPaintableInterface
        nothing
end


function getDefaultPaintableInterface(this::StartCanvas)
        return this.defaultPaintableInterface
end


function getHighScoresFactoryInterface(this::StartCanvas)
        return this.highScoresFactoryInterface
end


function setMenuInputProcessor(this::StartCanvas, menuInputProcessor)
        this.menuInputProcessor = menuInputProcessor
        nothing
end


function getMenuInputProcessor(this::StartCanvas)
        return this.menuInputProcessor
end


function getMenuForm(this::StartCanvas)
        return this.menuForm
end


function setMenuForm(this::StartCanvas, menuForm)
        this.menuForm = menuForm
        nothing
end


function isInitialized(this::StartCanvas)
        return this.initialized
end


function getOverlayPaintable(this::StartCanvas)
        return this.overlayPaintable
end


function setBasicGameDemoPaintable(this::StartCanvas, basicGameDemoPaintable)
        this.basicGameDemoPaintable = basicGameDemoPaintable
        nothing
end


function getBasicGameDemoPaintable(this::StartCanvas)
        return this.basicGameDemoPaintable
end


function setTempWait(this::StartCanvas, tempWait)
        this.tempWait = tempWait
        nothing
end


function getTempWait(this::StartCanvas)
        return this.tempWait
end


function isSingleThread(this::StartCanvas)
        return AllBinary.isAnyThreed(AllBinary.getInstance(OpenGLFeatureUtil)) || staticGet_isSWT(SWTUtil)
end


function isRunningInAnotherThread(this::StartCanvas)
        local features = AllBinary.getInstance(Features)
        local openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
        if AllBinary.isDefault(features, openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
            return true
        else
            return AllBinary.isRunning(this)
        end
end


function getGameInitializationInterfaceFactoryInterface(this::StartCanvas)
        return this.gameInitializationInterfaceFactoryInterface
end


function getTitle(this::StartCanvas)
        return AllBinary.getTitle(this)
end


function isPaused(this::StartCanvas)
        return AllBinary.isPaused(this)
end


function getType(this::StartCanvas)
        return AllBinary.getType(this)
end

