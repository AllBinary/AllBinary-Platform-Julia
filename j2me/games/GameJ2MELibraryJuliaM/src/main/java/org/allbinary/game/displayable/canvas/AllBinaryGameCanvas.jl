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
mutable struct AllBinaryGameCanvas <: JObject
    basicColorFactory::Any
    basicSetColorUtil::Any
    touchFeatureFactory::Any
    openGLFeatureFactory::Any
    touchButtonFactory::Any
    gameAdStateFactory::Any
    gameStrings::Any
    gameInputStrings::Any
    gameStateFactory::Any
    gameTickTimeDelayHelper::Any
    gameTickDisplayInfoSingleton::Any
    gameRunnable::Any
    gamePauseRunnable::Any
    formUtil::Any
    myFormUtil::Any
    updateMyFontProcessor::Any
    myFontProcessor::Any
    gameSpecificPaintable::Any
    sensorGameUpdateProcessor::Any
    endGameInfo::Any
    startIntermissionInterface::Any
    endLevelIntermissionInterface::Any
    gameLayerManager::Any
    gameState::Any
    gameOver::Bool
    initialized::Bool
    gameStateTimeHelper::Any
    highScoresHelper::Any
    highScoreSubmitted::Bool
    realHighScoresPaintable::Any
    highScoresPaintable::Any
    localPlayerGameInputList::Any
    isCheating::Bool
    hashtable::Any
    isSingleKeyRepeatableProcessing::Bool
    gameInitializationInterfaceFactoryInterface::Any
    touchButtonsPaintable::Any
    touchPaintable::Any
    cheatProcessor::Any
    gameInputProcessor::Any
    endGameProcessor::Any
    realEndGameProcessor::Any
    startIntermissionProcessor::Any
    realStartIntermissionProcessor::Any
    endGamePaintable::Any
    endGameStatePaintable::Any
    nonBotPaintable::Any
    intermissionPaintable::Any
    startIntermissionPaintable::Any
    mainStateProcessor::Any
    processGameProcessor::Any
    highScoresFactoryInterface::Any
    startLevel::Int32
    mainMenuInputProcessor::Any
    popupMenuInputProcessor::Any
    menuInputProcessor::Any
    menuForm::Any
    formPaintable::Any
    openMenuPaintable::Any
    menuPaintable::Any
    currentTouchInputFactory::Any
    colorFillPaintable::Any
    baseGameStatistics::Any
    primaryPlayerQueue::Any
    secondaryPlayerQueue::Any
    BUILD_GAME::Any
    gameTypeFactory::Any
    screenCapture::Any
    basicMotionGesturesHandler::Any
    gameKeyEventHandler::Any
    gameBehavior::Any
    menuBehavior::Any
    progressPaintable::Any
    fontHeightP::Int32
    gameCanvasStartListener::Any
    rawGameInputProcessor::Any
    rawInputProcessor::Any
    inputProcessor::Any
    YIELD_SLEEP::Int64
    AllBinaryGameCanvas() = new()
end

const AllBinaryGameCanvas_idValue = Ref{Any}(nothing)
const AllBinaryGameCanvas_idSet = Ref(false)
function staticGet_id(::Type{AllBinaryGameCanvas})
    if !AllBinaryGameCanvas_idSet[]
        AllBinaryGameCanvas_idSet[] = true
        AllBinaryGameCanvas_idValue[] = Int32(0)
    end
    AllBinaryGameCanvas_idValue[]
end
function staticSet_id(::Type{AllBinaryGameCanvas}, value)
    AllBinaryGameCanvas_idSet[] = true
    AllBinaryGameCanvas_idValue[] = value
end
const AllBinaryGameCanvas_TYPEValue = Ref{Any}(nothing)
const AllBinaryGameCanvas_TYPESet = Ref(false)
function staticGet_TYPE(::Type{AllBinaryGameCanvas})
    if !AllBinaryGameCanvas_TYPESet[]
        AllBinaryGameCanvas_TYPESet[] = true
        AllBinaryGameCanvas_TYPEValue[] = Int32(2)
    end
    AllBinaryGameCanvas_TYPEValue[]
end
function staticSet_TYPE(::Type{AllBinaryGameCanvas}, value)
    AllBinaryGameCanvas_TYPESet[] = true
    AllBinaryGameCanvas_TYPEValue[] = value
end

function initFieldsAllBinaryGameCanvas(this::AllBinaryGameCanvas)
    this.basicColorFactory = nothing
    this.basicSetColorUtil = nothing
    this.touchFeatureFactory = nothing
    this.openGLFeatureFactory = nothing
    this.touchButtonFactory = nothing
    this.gameAdStateFactory = nothing
    this.gameStrings = nothing
    this.gameInputStrings = nothing
    this.gameStateFactory = nothing
    this.gameTickTimeDelayHelper = nothing
    this.gameTickDisplayInfoSingleton = nothing
    this.gameRunnable = nothing
    this.gamePauseRunnable = nothing
    this.formUtil = nothing
    this.myFormUtil = nothing
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.gameSpecificPaintable = nothing
    this.sensorGameUpdateProcessor = nothing
    this.endGameInfo = nothing
    this.startIntermissionInterface = nothing
    this.endLevelIntermissionInterface = nothing
    this.gameLayerManager = nothing
    this.gameState = nothing
    this.gameOver = false
    this.initialized = false
    this.gameStateTimeHelper = nothing
    this.highScoresHelper = nothing
    this.highScoreSubmitted = false
    this.realHighScoresPaintable = nothing
    this.highScoresPaintable = nothing
    this.localPlayerGameInputList = nothing
    this.isCheating = false
    this.hashtable = nothing
    this.isSingleKeyRepeatableProcessing = false
    this.gameInitializationInterfaceFactoryInterface = nothing
    this.touchButtonsPaintable = nothing
    this.touchPaintable = nothing
    this.cheatProcessor = nothing
    this.gameInputProcessor = nothing
    this.endGameProcessor = nothing
    this.realEndGameProcessor = nothing
    this.startIntermissionProcessor = nothing
    this.realStartIntermissionProcessor = nothing
    this.endGamePaintable = nothing
    this.endGameStatePaintable = nothing
    this.nonBotPaintable = nothing
    this.intermissionPaintable = nothing
    this.startIntermissionPaintable = nothing
    this.mainStateProcessor = nothing
    this.processGameProcessor = nothing
    this.highScoresFactoryInterface = nothing
    this.startLevel = Int32(0)
    this.mainMenuInputProcessor = nothing
    this.popupMenuInputProcessor = nothing
    this.menuInputProcessor = nothing
    this.menuForm = nothing
    this.formPaintable = nothing
    this.openMenuPaintable = nothing
    this.menuPaintable = nothing
    this.currentTouchInputFactory = nothing
    this.colorFillPaintable = nothing
    this.baseGameStatistics = nothing
    this.primaryPlayerQueue = nothing
    this.secondaryPlayerQueue = nothing
    this.BUILD_GAME = nothing
    this.gameTypeFactory = nothing
    this.screenCapture = nothing
    this.basicMotionGesturesHandler = nothing
    this.gameKeyEventHandler = nothing
    this.gameBehavior = nothing
    this.menuBehavior = nothing
    this.progressPaintable = nothing
    this.fontHeightP = Int32(0)
    this.gameCanvasStartListener = nothing
    this.rawGameInputProcessor = nothing
    this.rawInputProcessor = nothing
    this.inputProcessor = nothing
    this.YIELD_SLEEP = Int64(0)
    this.basicColorFactory = AllBinary.getInstance(BasicColorFactory)
    this.basicSetColorUtil = AllBinary.getInstance(BasicColorSetUtil)
    this.touchFeatureFactory = AllBinary.getInstance(TouchFeatureFactory)
    this.openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
    this.touchButtonFactory = AllBinary.getInstance(TouchButtonFactory)
    this.gameAdStateFactory = AllBinary.getInstance(GameAdStateFactory)
    this.gameStrings = AllBinary.getInstance(GameStrings)
    this.gameInputStrings = AllBinary.getInstance(GameInputStrings)
    this.gameStateFactory = AllBinary.getInstance(GameStateFactory)
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    this.gameTickDisplayInfoSingleton = AllBinary.getInstance(GameTickDisplayInfoSingleton)
    this.gameRunnable = newGameCanvasRunnable(this)
    this.gamePauseRunnable = newGameCanvasPauseRunnable(this)
    this.formUtil = AllBinary.getInstance(FormUtil)
    this.myFormUtil = AllBinary.getInstance(MyFormUtil)
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.gameSpecificPaintable = AllBinary.getInstance(NullPaintable)
    this.sensorGameUpdateProcessor = newSingleSensorGameUpdateProcessor()
    this.endGameInfo = newEndGameInfo()
    this.startIntermissionInterface = newIntermission()
    this.endLevelIntermissionInterface = newIntermission()
    this.gameLayerManager = AllBinary.getNullInstance(AllBinaryGameLayerManager)
    this.gameState = this.gameStateFactory.NO_GAME_STATE
    this.gameOver = false
    this.initialized = false
    this.gameStateTimeHelper = newTimeDelayHelper(Int32(0))
    
    this.highScoreSubmitted = false
    this.realHighScoresPaintable = newHighScoresPaintable()
    this.highScoresPaintable = AllBinary.getInstance(NullPaintable)
    this.localPlayerGameInputList = newBasicArrayListD()
    this.isCheating = false
    this.hashtable = this.stdUtil.NULL_TABLE
    this.isSingleKeyRepeatableProcessing = false
    this.gameInitializationInterfaceFactoryInterface = staticGet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY(BasicBuildGameInitializerFactory)
    this.touchButtonsPaintable = AllBinary.getInstance(NullPaintable)
    this.touchPaintable = AllBinary.getInstance(NullPaintable)
    this.cheatProcessor = AllBinary.getInstance(NoPlayerGameInput)
    this.gameInputProcessor = AllBinary.getInstance(Processor)
    this.endGameProcessor = AllBinary.getInstance(Processor)
    this.realEndGameProcessor = AllBinary.getInstance(Processor)
    this.startIntermissionProcessor = AllBinary.getInstance(Processor)
    this.realStartIntermissionProcessor = AllBinary.getInstance(Processor)
    this.endGamePaintable = AllBinary.getInstance(NullPaintable)
    this.endGameStatePaintable = AllBinary.getInstance(NullPaintable)
    this.nonBotPaintable = AllBinary.getInstance(NullPaintable)
    this.intermissionPaintable = AllBinary.getInstance(NullPaintable)
    this.startIntermissionPaintable = AllBinary.getInstance(NullInitUpdatePaintable)
    this.mainStateProcessor = AllBinary.getInstance(Processor)
    this.processGameProcessor = AllBinary.getInstance(Processor)
    
    this.startLevel = Int32(0)
    this.mainMenuInputProcessor = AllBinary.getInstance(NoMenuInputProcessor)
    this.popupMenuInputProcessor = AllBinary.getInstance(NoMenuInputProcessor)
    this.menuInputProcessor = AllBinary.getInstance(NoMenuInputProcessor)
    this.menuForm = AllBinary.getNullScrollSelectionForm(ScrollSelectionForm)
    this.formPaintable = AllBinary.getInstance(NullPaintable)
    this.openMenuPaintable = AllBinary.getInstance(NullPaintable)
    this.menuPaintable = AllBinary.getInstance(NullPaintable)
    this.currentTouchInputFactory = AllBinary.getInstance(NoButtonsTouchInputFactory)
    this.colorFillPaintable = AllBinary.getInstance(AllBinary.getInstance(ColorFillPaintableFactory), this.basicColorFactory.BLACK, true)
    this.baseGameStatistics = AllBinary.getInstance(GameStatisticsFactory)
    this.primaryPlayerQueue = AllBinary.getInstance(PrimaryPlayerQueueFactory)
    this.secondaryPlayerQueue = AllBinary.getInstance(SecondaryPlayerQueueFactory)
    this.BUILD_GAME = "buildGame"
    this.gameTypeFactory = AllBinary.getInstance(GameTypeFactory)
    this.screenCapture = AllBinary.getInstance(ScreenCaptureFactory)
    this.basicMotionGesturesHandler = AllBinary.getInstance(BasicMotionGesturesHandler)
    this.gameKeyEventHandler = AllBinary.getInstance(GameKeyEventHandler)
    this.gameBehavior = nothing
    this.menuBehavior = nothing
    this.progressPaintable = AllBinary.getLazyInstance(ProgressCanvasFactory)
    this.fontHeightP = Int32(0)
    this.gameCanvasStartListener = staticGet_NULL_DEMO_PAINTABLE(NullDemoPaintable)
    this.rawGameInputProcessor = newGameCanvasInputProcessor(this)
    this.rawInputProcessor = newFormInputProcessor(this)
    this.inputProcessor = AllBinary.getRawGameInputProcessor(this)
    this.YIELD_SLEEP = Int64(100)
    nothing
end


function initAllBinaryGameCanvas(this::AllBinaryGameCanvas, commandListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
        initRunnableCanvas(this, commandListener, AllBinary.getInstance(CanvasStrings).EMPTY_CHILD_NAME_LIST, true)
        initFieldsAllBinaryGameCanvas(this)
        this.highScoresHelper = AllBinary.createHighScoresHelper(highScoresFactoryInterface)
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        AllBinary.init(this, gameLayerManager, buffered)
        this.highScoresFactoryInterface = highScoresFactoryInterface
        if AllBinary.getGameType(AllBinary.getGameInfo(this.gameLayerManager)) == this.gameTypeFactory.BOT || AllBinary.getGameType(AllBinary.getGameInfo(this.gameLayerManager)) == this.gameTypeFactory.NONE
            this.gameBehavior = AllBinary.getInstance(DemoGameBehavior)
            this.menuBehavior = AllBinary.getInstance(BaseMenuBehavior)
        else
            this.gameBehavior = AllBinary.getInstance(BaseGameBehavior)
            this.menuBehavior = AllBinary.getInGameMenuBehavior(this)
        end
        AllBinary.initPopupMenu(this)
        AllBinary.initMenu(this)
        AllBinary.initSpecialPaint(this)
        AllBinary.addListenerInterface(AllBinary.getInstance(DisplayChangeEventHandler), this)
        nothing
end

function newAllBinaryGameCanvas(commandListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
    this = AllBinaryGameCanvas()
    initAllBinaryGameCanvas(this, commandListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
    this
end


function updateMeasurement(this::AllBinaryGameCanvas, graphics)
        try
            local font = AllBinary.getFont(graphics)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.START), this.canvasStrings.FD_WIDTH), ((AllBinary.defaultCharWidth(MyFontProcessor, font)) % Int32)), this.canvasStrings.FD_HEIGHT), ((AllBinary.getHeight(font)) % Int32))), this, this.canvasStrings.UPDATE_MEASUREMENT)
            this.fontHeightP = AllBinary.getHeight(font)
            AllBinary.updateMeasurement(this.myFormUtil, graphics)
            local popupMenuRectangle = AllBinary.getPopupMenuRectangle(this.myFormUtil)
            local basicPopupMenuPaintable = ((AllBinary.getOpenMenuPaintable(this)))
            AllBinary.init(basicPopupMenuPaintable, popupMenuRectangle)
            if AllBinary.getPopupMenuInputProcessor(this) !== AllBinary.getInstance(NoMenuInputProcessor)
                local popupMenuInputProcessor = ((AllBinary.getPopupMenuInputProcessor(this)))
                AllBinary.init(popupMenuInputProcessor, popupMenuRectangle)
            end
            this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
        nothing
end


function getInGameMenuBehavior(this::AllBinaryGameCanvas)
        return AllBinary.getInstance(InGameMenuBehavior)
end


function setCurrentThread(this::AllBinaryGameCanvas)
        if AllBinary.isHTML(J2MEUtil)
            AllBinary.setCurrentThreadFake(this)
        else
            AllBinary.setCurrentThread(this)
        end
        nothing
end


function onEvent(this::AllBinaryGameCanvas, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onDisplayChangeEvent(this::AllBinaryGameCanvas, displayChangeEvent)
        try
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.START), AllBinary.toString(AllBinary.getInstance(DisplayInfoSingleton)))), this, this.canvasStrings.UPDATE_MEASUREMENT)
            this.myFontProcessor = this.updateMyFontProcessor
            AllBinary.onDisplayChangeEvent(this.menuBehavior, this, displayChangeEvent)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
        nothing
end


function updateMenuFromEvent(this::AllBinaryGameCanvas, displayChangeEvent)
        local formType = AllBinary.getFormType(AllBinary.getInstance(FormTypeFactory))
        local rectangle = AllBinary.createFormRectangle(this.formUtil)
        AllBinary.init(this.menuForm, rectangle, formType)
        if this.currentTouchInputFactory !== AllBinary.getInstance(NoButtonsTouchInputFactory)
            AllBinary.toggle(this.touchButtonFactory, AllBinary.isPaused(this), AllBinary.getList(this.currentTouchInputFactory))
        end
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function processSleep(this::AllBinaryGameCanvas)
        AllBinary.processSleep(this)
        if AllBinary.update(AllBinaryMediaManager)
            if !AllBinary.process(this.primaryPlayerQueue)
                AllBinary.process(this.secondaryPlayerQueue)
            end
        end
        if AllBinary.processInputList(this.menuInputProcessor) != -Int32(1)
            AllBinary.process(this.runnableCanvasRefreshHelper)
        end
        nothing
end


function initPopupMenu(this::AllBinaryGameCanvas)
        if this.popupMenuInputProcessor === AllBinary.getInstance(NoMenuInputProcessor)
            local features = AllBinary.getInstance(Features)
            local popupMenuRectangle = AllBinary.getPopupMenuRectangle(this.myFormUtil)
            if AllBinary.isFeature(features, this.touchFeatureFactory.TOUCH_ENABLED)
                AllBinary.setOpenMenuPaintable(this, newBasicPopupMenuPaintable(popupMenuRectangle, AllBinary.getBackgroundBasicColor(this.gameLayerManager), AllBinary.getForegroundBasicColor(this.gameLayerManager)))
                AllBinary.setPopupMenuInputProcessor(this, newPopupMenuInputProcessor(newBasicArrayListD(), -Int32(1), this, popupMenuRectangle))
            end
        else
            nothing
        end
        nothing
end


function initMenu(this::AllBinaryGameCanvas)
        try
            AllBinary.initMenu(this.menuBehavior, this)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "initMenu", e)
        end
        nothing
end


function initMenu2(this::AllBinaryGameCanvas)
        AllBinary.closeMenu(this)
        local formType = AllBinary.getFormType(AllBinary.getInstance(FormTypeFactory))
        local gameLimitedCommandTextItemArrayFactory = AllBinary.getInstance(GameLimitedCommandTextItemArrayFactory)
        local commandTextItemArrayFactory = AllBinary.getCommandTextItemArrayFactory(gameLimitedCommandTextItemArrayFactory)
        local items = AllBinary.getInstance(commandTextItemArrayFactory, AllBinary.getCommandStack(this), AllBinary.getBackgroundBasicColor(this.gameLayerManager), AllBinary.getForegroundBasicColor(this.gameLayerManager))
        local rectangle = AllBinary.createFormRectangle(this.formUtil)
        AllBinary.setMenuForm(this, AllBinary.getInstance(CommandCurrentSelectionFormFactory, AllBinary.getInstance(StringUtil).EMPTY_STRING, items, rectangle, formType, Int32(25), false, AllBinary.getBackgroundBasicColor(this.gameLayerManager), AllBinary.getForegroundBasicColor(this.gameLayerManager)))
        local scrollSelectionForm = AllBinary.getMenuForm(this)
        local features = AllBinary.getInstance(Features)
        if AllBinary.isFeature(features, this.touchFeatureFactory.TOUCH_ENABLED)
            this.mainMenuInputProcessor = newPopupCommandFormInputProcessor(newBasicArrayListD(), -Int32(1), this, scrollSelectionForm, (AllBinary.getPopupMenuInputProcessor(this)))
        else
            nothing
        end
        AllBinary.setMenuInputProcessor(this, AllBinary.getPopupMenuInputProcessor(this))
        if scrollSelectionForm !== AllBinary.getInstance(ScrollSelectionFormNoneFactory)
            AllBinary.setFormPaintable(this, newFormPaintable(scrollSelectionForm))
        else
            nothing
        end
        AllBinary.closeMenu(this)
        nothing
end


function updateMenu(this::AllBinaryGameCanvas)
        try
            AllBinary.updateMenu(this.menuBehavior, this)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "initMenu", e)
        end
        nothing
end


function updateMenu2(this::AllBinaryGameCanvas)
        local scrollSelectionForm = AllBinary.getMenuForm(this)
        AllBinary.deleteAll(scrollSelectionForm)
        local gameLimitedCommandTextItemArrayFactory = AllBinary.getInstance(GameLimitedCommandTextItemArrayFactory)
        local commandTextItemArrayFactory = AllBinary.getCommandTextItemArrayFactory(gameLimitedCommandTextItemArrayFactory)
        local items = AllBinary.getInstance(commandTextItemArrayFactory, AllBinary.getCommandStack(this), AllBinary.getBackgroundBasicColor(this.gameLayerManager), AllBinary.getForegroundBasicColor(this.gameLayerManager))
        local size::Int32 = Int32(Base.length(items))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.append(scrollSelectionForm, items[index + 1])
            finally
                index += Int32(1)
            end
            end
        end
        local formType = AllBinary.getFormType(AllBinary.getInstance(FormTypeFactory))
        local rectangle = AllBinary.createFormRectangle(this.formUtil)
        AllBinary.init(scrollSelectionForm, rectangle, formType)
        nothing
end


function pause(this::AllBinaryGameCanvas)
        AllBinary.pause(this.gameBehavior, this)
        AllBinary.closeMenu(this)
        AllBinary.pause(this)
        AllBinary.toggle(this.touchButtonFactory, AllBinary.isPaused(this), AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil)))
        AllBinary.gc(this.tsUtil)
        nothing
end


function unPause(this::AllBinaryGameCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.gameStrings.UNPAUSE)
        AllBinary.closeMenu(this)
        AllBinary.gc(this.tsUtil)
        AllBinary.unPause(this)
        AllBinary.toggle(this.touchButtonFactory, AllBinary.isPaused(this), AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil)))
        AllBinary.unPause(this.gameBehavior, this)
        nothing
end


function isPausable(this::AllBinaryGameCanvas)
        if AllBinary.getUsedRunnable(AllBinary.getInstance(CurrentDisplayableFactory)) == AllBinary.getInstance(NullWaitGameRunnable)
            return true
        else
            return false
        end
end


function popupMenu(this::AllBinaryGameCanvas)
        AllBinary.popupMenu(this.menuBehavior, this)
        nothing
end


function popupMenu2(this::AllBinaryGameCanvas)
        AllBinary.add(this.primaryPlayerQueue, AllBinary.getInstance(SelectSound))
        AllBinary.setMenuPaintable(this, AllBinary.getFormPaintable(this))
        AllBinary.setMenuInputProcessor(this, this.mainMenuInputProcessor)
        AllBinary.addListenerInterface(this.basicMotionGesturesHandler, this.mainMenuInputProcessor)
        AllBinary.addListener(this.gameKeyEventHandler, this.mainMenuInputProcessor)
        nothing
end


function toggleMenu(this::AllBinaryGameCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.gameStrings.TOGGLE_MENU)
        if AllBinary.getMenuPaintable(this) === AllBinary.getOpenMenuPaintable(this)
            AllBinary.pause(this)
            AllBinary.updateMenu(this)
            AllBinary.popupMenu(this)
        elseif AllBinary.getMenuPaintable(this) === AllBinary.getFormPaintable(this)
            AllBinary.add(this.primaryPlayerQueue, AllBinary.getInstance(SelectSound))
            AllBinary.unPause(this)
        end
        nothing
end


function closeMenu(this::AllBinaryGameCanvas)
        AllBinary.closeMenu(this.menuBehavior, this)
        nothing
end


function closeMenu2(this::AllBinaryGameCanvas)
        AllBinary.setMenuPaintable(this, AllBinary.getOpenMenuPaintable(this))
        AllBinary.removeListener(this.basicMotionGesturesHandler, this.mainMenuInputProcessor)
        AllBinary.removeListener(this.gameKeyEventHandler, this.mainMenuInputProcessor)
        AllBinary.setMenuInputProcessor(this, AllBinary.getPopupMenuInputProcessor(this))
        nothing
end


function open(this::AllBinaryGameCanvas)
        AllBinary.addListenerInterface(this.basicMotionGesturesHandler, this.menuInputProcessor)
        AllBinary.addListener(this.gameKeyEventHandler, this.menuInputProcessor)
        nothing
end


function close(this::AllBinaryGameCanvas)
        AllBinary.removeListener(this.basicMotionGesturesHandler, this.menuInputProcessor)
        AllBinary.removeListener(this.gameKeyEventHandler, this.menuInputProcessor)
        AllBinary.clear(this.primaryPlayerQueue)
        AllBinary.clear(this.secondaryPlayerQueue)
        nothing
end


function processorInit(this::AllBinaryGameCanvas)
        AllBinary.setMainStateProcessor(this, AllBinary.getInstance(Processor))
        AllBinary.setProcessGameProcessorInit(this)
        nothing
end


function setProcessGameProcessorInit(this::AllBinaryGameCanvas)
        AllBinary.setProcessGameProcessor(this, newGameProcessor(this))
        nothing
end


function initSpecialPaint(this::AllBinaryGameCanvas)
        AllBinary.initSpecialPaint(this.menuBehavior, this)
        nothing
end


function init(this::AllBinaryGameCanvas, gameLayerManager, buffered)
        AllBinary.setStartTimeTNT(this.gameStateTimeHelper)
        AllBinary.setHighScoreSubmitted(this, false)
        AllBinary.setLayerManager(this, gameLayerManager)
        if !buffered
            local BUFF_MESSAGE = "XXX Not Buffering Causes Concurrency Issues XXX"
            AllBinary.putF(this.logUtil, BUFF_MESSAGE, this, this.commonStrings.CONSTRUCTOR)
        else
            throw(jNewException("Exception", "Buffering is disabled"))
        end
        AllBinary.setGameInputProcessor(this, AllBinary.getInstance(Processor))
        local features = AllBinary.getInstance(Features)
        if AllBinary.isFeature(features, AllBinary.getInstance(GameFeatureFactory).CHEATING)
            this.isCheating = true
            this.cheatProcessor = newCheatGameInputProcessor(this)
            AllBinary.addListener(this.gameKeyEventHandler, this.cheatProcessor)
        else
            this.isCheating = false
            this.cheatProcessor = AllBinary.getInstance(NoPlayerGameInput)
        end
        this.realEndGameProcessor = newEndGameProcessor(this)
        AllBinary.setEndGameProcessor(this, AllBinary.getInstance(Processor))
        this.realStartIntermissionProcessor = newStartIntermissionProcessor(this)
        this.startIntermissionProcessor = AllBinary.getInstance(Processor)
        AllBinary.setEndGameStatePaintable(this, newEndGamePaintable(this))
        AllBinary.setEndGamePaintable(this, AllBinary.getInstance(NullPaintable))
        AllBinary.setIntermissionPaintable(this, AllBinary.getInstance(NullPaintable))
        AllBinary.setListener(AllBinary.getStartIntermissionInterface(this), this)
        nothing
end


function notifyIntermission(this::AllBinaryGameCanvas, enable)
        if enable
            this.startIntermissionProcessor = this.realStartIntermissionProcessor
        else
            this.startIntermissionProcessor = AllBinary.getInstance(Processor)
        end
        if enable
            AllBinary.setIntermissionPaintable(this, AllBinary.getStartIntermissionPaintable(this))
        else
            AllBinary.setIntermissionPaintable(this, AllBinary.getInstance(NullPaintable))
        end
        nothing
end


function mediaInit(this::AllBinaryGameCanvas)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        nothing
end


function initConfigurable(this::AllBinaryGameCanvas, abeClientInformation)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        AllBinary.addNormalPortion(progressCanvas, Int32(50), "Setting Configurables")
        AllBinary.initGame(AllBinary.getInstance(GameInitializationUtil), abeClientInformation, this, this.gameInitializationInterfaceFactoryInterface)
        local gameFeatureFactory = AllBinary.getInstance(GameFeatureFactory)
        local changedGameFeatureListener = AllBinary.getInstance(ChangedGameFeatureListener)
        if AllBinary.isChangedFeature(changedGameFeatureListener, gameFeatureFactory.SOUND)
            local features = AllBinary.getInstance(Features)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendboolean(AllBinary.append(newStringMaker(), "Sound Changing To: "), AllBinary.isFeature(features, gameFeatureFactory.SOUND))), this, "initConfigurable")
            AllBinary.mediaInit(this)
            AllBinary.remove(changedGameFeatureListener, gameFeatureFactory.SOUND)
        end
        local sensorFeatureFactory = AllBinary.getInstance(SensorFeatureFactory)
        if AllBinary.isChangedFeature(changedGameFeatureListener, sensorFeatureFactory.ORIENTATION_SENSORS) || AllBinary.isChangedFeature(changedGameFeatureListener, sensorFeatureFactory.NO_ORIENTATION) || AllBinary.isChangedFeature(changedGameFeatureListener, sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
            AllBinary.remove(changedGameFeatureListener, sensorFeatureFactory.NO_ORIENTATION)
            AllBinary.remove(changedGameFeatureListener, sensorFeatureFactory.ORIENTATION_SENSORS)
            AllBinary.remove(changedGameFeatureListener, sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
        end
        local resourceLoadingLevelFactory = AllBinary.getInstance(ResourceLoadingLevelFactory)
        AllBinary.loadResourceLoadingLevel(this, resourceLoadingLevelFactory.LOAD_GAME)
        nothing
end


function initApp(this::AllBinaryGameCanvas, abeClientInformation)
        AllBinary.initConfigurable(this, abeClientInformation)
        AllBinary.processorInit(this)
        AllBinary.process(this.sensorGameUpdateProcessor, this.gameLayerManager)
        AllBinary.sendNotifications(this.sensorGameUpdateProcessor, this.gameLayerManager)
        AllBinary.initTouch(this)
        nothing
end


function initTouch(this::AllBinaryGameCanvas)
        local gameInitializedEvent = AllBinary.getInstance(GameInitializationUtil).EVENT
        local resourceLoadingLevelFactory = AllBinary.getInstance(ResourceLoadingLevelFactory)
        AllBinary.setResourceLoadingLevel(gameInitializedEvent, resourceLoadingLevelFactory.LOAD_TOUCH)
        AllBinary.fireEvent(AllBinary.getInstance(GameInitializedEventHandler), gameInitializedEvent)
        AllBinary.defaultList(this.touchButtonFactory)
        AllBinary.updateTouch(this)
        AllBinary.postInitTouch(this)
        nothing
end


function updateCurrentTouchInputFactory(this::AllBinaryGameCanvas, nextTouchInput)
        if nextTouchInput !== this.currentTouchInputFactory
            this.currentTouchInputFactory = nextTouchInput
            AllBinary.put(PreLogUtil, AllBinary.toString(this.currentTouchInputFactory), this, this.gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY)
            AllBinary.toggle(this.touchButtonFactory, AllBinary.isPaused(this), AllBinary.getList(this.currentTouchInputFactory))
        end
        nothing
end


function updateTouch(this::AllBinaryGameCanvas)
        AllBinary.updateTouch(this.gameBehavior, this)
        nothing
end


function updateTouch2(this::AllBinaryGameCanvas)
        local features = AllBinary.getInstance(Features)
        if AllBinary.isFeature(features, this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            if AllBinary.getCurrentLevel(AllBinary.getGameInfo(this.gameLayerManager)) - AllBinary.getStartLevel(this) == Int32(1)
                AllBinary.setTouchPaintableP(this, AllBinary.getInstance(NullPaintable))
            end
        end
        nothing
end


function postInitTouch(this::AllBinaryGameCanvas)
        AllBinary.setTouchButtonsPaintable(this, AllBinary.getInstance(TouchButtonsPaintableFactory, AllBinary.getForegroundBasicColor(this.gameLayerManager)))
        AllBinary.updateScreenButtonPaintable(this)
        nothing
end


function initCommands(this::AllBinaryGameCanvas, cmdListener)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommands(this)
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function addCommands(this::AllBinaryGameCanvas)
        local gameCommandsFactory = AllBinary.getInstance(GameCommandsFactory)
        local myCommandsFactory = AllBinary.getInstance(MyCommandsFactory)
        if AllBinary.getInstance(DebugFactory) != AllBinary.getInstance(NoDebug)
            AllBinary.addCommand(this, gameCommandsFactory.START_TRACE)
        end
        AllBinary.addCommand(this, gameCommandsFactory.RESTART_COMMAND)
        AllBinary.addCommand(this, myCommandsFactory.PAUSE_COMMAND)
        AllBinary.addCommand(this, gameCommandsFactory.QUIT_COMMAND)
        local isOverScan::Bool = AllBinary.isOverScan(AllBinary.getOperatingSystemInstance(AllBinary.getInstance(OperatingSystemFactory)))
        if AllBinary.isHTML(J2MEUtil)
            nothing
        elseif staticGet_isSWT(SWTUtil)
            nothing
        elseif !isOverScan
            if AllBinary.isTouch(AllBinary.getInstance(TouchScreenFactory)) && AllBinary.isAny(newInGameFeatures())
                AllBinary.addCommand(this, staticGet_DISPLAY(InGameOptionsForm))
            end
            AllBinary.addCommand(this, gameCommandsFactory.SAVE)
            AllBinary.addCommand(this, gameCommandsFactory.DISPLAY_LOAD_FORM)
        end
        nothing
end


function itemStateChanged(this::AllBinaryGameCanvas, item)
        try
            local itemLabel = AllBinary.getLabel(item)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonLabels.ITEM_LABEL), itemLabel)), this, "itemStateChanged")
            if Base.isa(item, ChoiceGroup)
                local gameFeatureUtil = AllBinary.getInstance(GameFeatureUtil)
                if AllBinary.isExclusive(gameFeatureUtil, itemLabel)
                    AllBinary.updateExclusiveForChoiceGroup(gameFeatureUtil, (item))
                else
                    AllBinary.updateMultiple(gameFeatureUtil, (item))
                end
            end
            AllBinary.process(this.sensorGameUpdateProcessor, this.gameLayerManager)
            AllBinary.updateTouch(this)
            AllBinary.updateScreenButtonPaintable(this)
            AllBinary.sendNotifications(this.sensorGameUpdateProcessor, this.gameLayerManager)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "itemStateChanged", e)
        end
        nothing
end


function updateScreenButtonPaintable(this::AllBinaryGameCanvas)
        AllBinary.updateScreenButtonPaintable(this.gameBehavior, this)
        nothing
end


function updateScreenButtonPaintable2(this::AllBinaryGameCanvas)
        local features = AllBinary.getInstance(Features)
        if AllBinary.isFeature(features, this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            AllBinary.setTouchPaintableP(this, AllBinary.getTouchButtonsPaintable(this))
            AllBinary.setStartLevel(this, AllBinary.getCurrentLevel(AllBinary.getGameInfo(this.gameLayerManager)))
        elseif AllBinary.isFeature(features, this.touchFeatureFactory.SHOW_SCREEN_BUTTONS)
            AllBinary.setTouchPaintableP(this, AllBinary.getTouchButtonsPaintable(this))
        elseif AllBinary.isFeature(features, this.touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            AllBinary.setTouchPaintableP(this, AllBinary.getInstance(NullPaintable))
        else
            AllBinary.setTouchPaintableP(this, AllBinary.getInstance(NullPaintable))
        end
        nothing
end


function getLayerManager(this::AllBinaryGameCanvas)
        return this.gameLayerManager
end


function setLayerManager(this::AllBinaryGameCanvas, layerManager)
        this.gameLayerManager = layerManager
        nothing
end


function isGameOver(this::AllBinaryGameCanvas)
        return this.gameOver
end


function setGameOver(this::AllBinaryGameCanvas, gameOver)
        this.gameOver = gameOver
        nothing
end


function processGameOver(this::AllBinaryGameCanvas)
        AllBinary.put(PreLogUtil, this.commonStrings.START, this, this.gameStrings.SET_GAME_OVER)
        AllBinary.setGameOver(this, true)
        AllBinary.removePauseCommand(this)
        AllBinary.setGameState(this, this.gameStateFactory.SHOW_END_RESULT_GAME_STATE)
        AllBinary.setEndGamePaintable(this, AllBinary.getEndGameStatePaintable(this))
        nothing
end


function isHighScoreSubmitted(this::AllBinaryGameCanvas)
        return this.highScoreSubmitted
end


function setHighScoreSubmitted(this::AllBinaryGameCanvas, highScoreSubmitted)
        this.highScoreSubmitted = highScoreSubmitted
        if highScoreSubmitted
            AllBinary.setSelectedHighScores(this.highScoresHelper, AllBinary.getInstance(NullHighScoresSingletonFactory))
        end
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendboolean(AllBinary.append(newStringMaker(), "isHighScoreSubmitted: "), highScoreSubmitted)), this, "setHighScoreSubmitted")
        nothing
end


function getGameState(this::AllBinaryGameCanvas)
        return this.gameState
end


function setGameState(this::AllBinaryGameCanvas, gameState)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.gameStrings.GAME_STATE), AllBinary.toString(this.stringUtil, gameState))), this, this.gameStrings.SET_GAME_STATE)
        this.gameState = gameState
        AllBinary.setStartTimeTNT(this.gameStateTimeHelper)
        AllBinary.updateEndGameProcessor(this)
        AllBinary.updateGameKeyEventProcessor(this)
        AllBinary.setGameState(this.gameBehavior, this)
        nothing
end


function updateGameState(this::AllBinaryGameCanvas)
        local gameAdState = AllBinary.getCurrentInstance(this.gameAdStateFactory)
        AllBinary.processAdState(gameAdState, this.gameState, AllBinary.getGameType(AllBinary.getGameInfo(this.gameLayerManager)))
        if this.gameState !== this.gameStateFactory.PLAYING_GAME_STATE
            AllBinary.processPageAdState(gameAdState)
        end
        nothing
end


function updateGameKeyEventProcessor(this::AllBinaryGameCanvas)
        if AllBinary.getGameState(this) !== this.gameStateFactory.PLAYING_GAME_STATE || this.isCheating
            nothing
        else
            nothing
        end
        nothing
end


function removeAllGameKeyInputListenersOnBuild(this::AllBinaryGameCanvas)
        AllBinary.removeAllGameKeyInputListeners(this)
        nothing
end


function removeAllGameKeyInputListeners(this::AllBinaryGameCanvas)
        AllBinary.removeAllGameKeyInputListeners(this.gameBehavior, this)
        nothing
end


function removeAllGameKeyInputListeners2(this::AllBinaryGameCanvas)
        AllBinary.putF(this.logUtil, "Remove PlayerInput Listeners", this, "removeAllGameKeyInputListeners")
        let
            local index::Int32 = AllBinary.size(this.localPlayerGameInputList) - Int32(1)
            while index >= Int32(0)
            try
            local playerGameInput = (AllBinary.get(this.localPlayerGameInputList, index))
            AllBinary.removeKeyInputListener(this, playerGameInput)
            AllBinary.removeNonAIInputGameKeyEvents(playerGameInput)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function removeKeyInputListener(this::AllBinaryGameCanvas, playerGameInput)
        AllBinary.removeListener(this.gameKeyEventHandler, playerGameInput)
        nothing
end


function updateEndGameProcessor(this::AllBinaryGameCanvas)
        AllBinary.updateEndGameProcessor(this.gameBehavior, this)
        nothing
end


function updateEndGameProcessor2(this::AllBinaryGameCanvas)
        if AllBinary.getGameState(this) === this.gameStateFactory.SHOW_END_RESULT_GAME_STATE || AllBinary.getGameState(this) === this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE
            AllBinary.setEndGameProcessor(this, this.realEndGameProcessor)
        else
            AllBinary.setEndGameProcessor(this, AllBinary.getInstance(Processor))
        end
        nothing
end


function buildGameInit(this::AllBinaryGameCanvas, isPortion)
        nothing
        nothing
end


function cleanupGame(this::AllBinaryGameCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CLEANUP)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        AllBinary.addNormalPortion(progressCanvas, Int32(10), "Cleaning Up")
        AllBinary.clear(this.primaryPlayerQueue)
        AllBinary.clear(this.secondaryPlayerQueue)
        AllBinary.clear(AllBinary.getInstance(GameLevelDisplayChangeEventListenersFactory))
        nothing
end


function loadResourceLoadingLevel(this::AllBinaryGameCanvas, resourceLoadingLevel)
        local gameInitializedEvent = AllBinary.getInstance(GameInitializationUtil).EVENT
        AllBinary.setResourceLoadingLevel(gameInitializedEvent, resourceLoadingLevel)
        AllBinary.fireEvent(AllBinary.getInstance(GameInitializedEventHandler), gameInitializedEvent)
        nothing
end


function loadResources(this::AllBinaryGameCanvas, level)
        local gameInitializedEvent = AllBinary.getInstance(GameInitializationUtil).EVENT
        AllBinary.setLevel(gameInitializedEvent, level)
        AllBinary.fireEvent(AllBinary.getInstance(GameInitializedEventHandler), gameInitializedEvent)
        nothing
end


function updateColor(this::AllBinaryGameCanvas)
        nothing
        nothing
end


function buildGame(this::AllBinaryGameCanvas, portion)
        AllBinary.endRecording(this.screenCapture)
        AllBinary.startRecording(this.screenCapture)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        local features = AllBinary.getInstance(Features)
        AllBinary.addNormalPortion(progressCanvas, portion, "Generic Build")
        AllBinary.removeAllGameKeyInputListenersOnBuild(this)
        AllBinary.updateTouch(this)
        AllBinary.addNormalPortion(progressCanvas, portion, "High Scores")
        AllBinary.fetchHighScores(this.highScoresFactoryInterface, AllBinary.getGameInfo(this.gameLayerManager), this.highScoresHelper)
        AllBinary.setHighScoresPaintable(this, AllBinary.getInstance(NullPaintable))
        AllBinary.addNormalPortion(progressCanvas, portion, "Finishing.")
        AllBinary.update(AllBinary.getEndGameInfoP(this), AllBinary.getGameInfo(AllBinary.getLayerManager(this)), this)
        this.isSingleKeyRepeatableProcessing = AllBinary.isFeature(features, AllBinary.getInstance(InputFeatureFactory).SINGLE_KEY_REPEAT_PRESS)
        AllBinary.setGameOver(this, false)
        AllBinary.addNormalPortion(progressCanvas, portion, "Finishing..")
        AllBinary.updateColor(this)
        AllBinary.update(AllBinary.getStartIntermissionPaintable(this))
        if !AllBinary.isRunningInAnotherThread(this)
            return
        end
        AllBinary.addNormalPortion(progressCanvas, portion, "Finishing...")
        if AllBinary.isMainCanvas(this) || !AllBinary.isInitialized(this)
            if AllBinary.isFeature(features, AllBinary.getInstance(MainFeatureFactory).LOAD_ONDEMAND)
                if AllBinary.getCustomCommandListener(this) !== nothing
                    AllBinary.end_(progressCanvas)
                end
            else
                AllBinary.end_(progressCanvas)
            end
            AllBinary.setInitialized(this, true)
        end
        if AllBinary.getCustomCommandListener(this) == staticGet_NULL_COMMAND_LISTENER(NullCommandListener)
            AllBinary.putF(this.logUtil, "Show Game Paintable in DemoCanvas Thread", this, this.BUILD_GAME)
            AllBinary.showGamePaintable(this.gameCanvasStartListener)
        else
            AllBinary.putF(this.logUtil, "No GameCanvasStartListener", this, this.BUILD_GAME)
        end
        AllBinary.setBasicColorP(this.colorFillPaintable, AllBinary.getBackgroundBasicColor(this.gameLayerManager))
        AllBinary.buildGame(this.gameBehavior, this)
        nothing
end


function buildGame2(this::AllBinaryGameCanvas)
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.gameInputStrings.ENABLE_PLAYER_GAME_INPUTS), AllBinary.size(this.localPlayerGameInputList))), this, this.BUILD_GAME)
        local playerGameInput = nothing
        let
            local index::Int32 = AllBinary.size(this.localPlayerGameInputList) - Int32(1)
            while index >= Int32(0)
            try
            playerGameInput = (AllBinary.get(this.localPlayerGameInputList, index))
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.gameInputStrings.ENABLE_PLAYER_GAME_INPUT), AllBinary.toString(playerGameInput))), this, this.BUILD_GAME)
            AllBinary.removeNonAIInputGameKeyEvents(playerGameInput)
            AllBinary.addKeyInputListener(this, playerGameInput)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function addKeyInputListener(this::AllBinaryGameCanvas, playerGameInput)
        AllBinary.addListenerForPlayer(AllBinary.getInstance(GameKeyEventHandler), playerGameInput, AllBinary.getPlayerInputId(playerGameInput))
        nothing
end


function setGameCanvasStartListener(this::AllBinaryGameCanvas, gameCanvasStartListener)
        this.gameCanvasStartListener = gameCanvasStartListener
        nothing
end


function loadState(this::AllBinaryGameCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.LOAD)
        local hashtable = AllBinary.getLoadStateHashtable(this)
        if hashtable !== nothing && AllBinary.size(hashtable) > Int32(0)
            local levelAsString = (AllBinary.get(hashtable, (staticGet_LEVEL_NAME(GameInfo))))
            local level::Int32 = AllBinary.intValue(jstr(levelAsString))
            local gameInfo = AllBinary.getGameInfo(this.gameLayerManager)
            AllBinary.setCurrentLevel(gameInfo, level)
        end
        nothing
end


function getLoadStateHashtable(this::AllBinaryGameCanvas)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonLabels.START_LABEL), AllBinary.toString(this.stringUtil, this.hashtable))), this, "getLoadStateHashtable")
        return this.hashtable
end


function setLoadStateHashtable(this::AllBinaryGameCanvas, hashtable)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonLabels.START_LABEL), AllBinary.toString(this.stringUtil, hashtable))), this, "setLoadStateHashtable")
        this.hashtable = hashtable
        nothing
end


function getCurrentStateHashtable(this::AllBinaryGameCanvas)
        local hashtable = AllBinary.createHashtable(this.stdUtil)
        local level::Int32 = AllBinary.getCurrentLevel(AllBinary.getGameInfo(this.gameLayerManager))
        AllBinary.put(hashtable, AllBinary.toString(staticGet_LEVEL_NAME(GameInfo)), jstr(level))
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "End: "), AllBinary.toString(this.stringUtil, hashtable))), this, "getCurrentStateHashtable")
        return hashtable
end


function paintGameOver(this::AllBinaryGameCanvas, graphics)
        AllBinary.log(ForcedLogUtil, this.commonStrings.NOT_IMPLEMENTED, this)
        nothing
end


function draw(this::AllBinaryGameCanvas, graphics)
        AllBinary.paint(this.colorFillPaintable, graphics)
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, AllBinary.getForegroundBasicColor(this.gameLayerManager))
        AllBinary.paint(this.gameSpecificPaintable, graphics)
        nothing
end


function clear(this::AllBinaryGameCanvas, graphics)
        AllBinary.paint(this.colorFillPaintable, graphics)
        nothing
end


function paint(this::AllBinaryGameCanvas, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.nextRefresh(this.baseGameStatistics)
        AllBinary.draw(this, graphics)
        AllBinary.paint(this.menuPaintable, graphics)
        AllBinary.paint(this.progressPaintable, graphics)
        nothing
end


function paintThreed(this::AllBinaryGameCanvas, graphics)
        nothing
        nothing
end


function processEndLevelIntermissionGameState(this::AllBinaryGameCanvas)
        nothing
        nothing
end


function nonBotPaint(this::AllBinaryGameCanvas, graphics)
        AllBinary.paint(this.endGamePaintable, graphics)
        AllBinary.paint(this.intermissionPaintable, graphics)
        AllBinary.paintIntermission(this, graphics)
        AllBinary.paint(this.touchPaintable, graphics)
        nothing
end


function paintIntermission(this::AllBinaryGameCanvas, graphics)
        nothing
        nothing
end


function keyPressed(this::AllBinaryGameCanvas, keyCode)
        AllBinary.keyPressedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyReleased(this::AllBinaryGameCanvas, keyCode)
        AllBinary.keyReleasedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyRepeated(this::AllBinaryGameCanvas, keyCode)
        AllBinary.keyRepeatedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyPressedByDevice(this::AllBinaryGameCanvas, keyCode, deviceId)
        AllBinary.keyPressedByDevice(this.inputProcessor, keyCode, deviceId)
        nothing
end


function keyRepeatedByDevice(this::AllBinaryGameCanvas, keyCode, deviceId)
        if this.isSingleKeyRepeatableProcessing
            AllBinary.keyPressedByDevice(this.inputProcessor, keyCode, deviceId)
        end
        nothing
end


function keyReleasedByDevice(this::AllBinaryGameCanvas, keyCode, deviceId)
        AllBinary.keyReleasedByDevice(this.inputProcessor, this, keyCode, deviceId)
        nothing
end


function handleRawKey(this::AllBinaryGameCanvas, keyCode, deviceId, repeated)
        nothing
        nothing
end


function endProgress(this::AllBinaryGameCanvas, isProgress)
        local portion::Int32 = Int32(30)
        if isProgress && AllBinary.isMainCanvas(this)
            local myCommandsFactory = AllBinary.getInstance(MyCommandsFactory)
            local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
            AllBinary.start(progressCanvas)
            AllBinary.commandAction(AllBinary.getCustomCommandListener(this), myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
            portion = Int32(4)
        end
        return portion
end


function processPlayingGame(this::AllBinaryGameCanvas)
        AllBinary.update(this.cheatProcessor)
        AllBinary.update(AllBinary.getInputSensor(this.sensorGameUpdateProcessor))
        AllBinary.process(this.gameInputProcessor)
        AllBinary.process(this.gameLayerManager)
        AllBinary.process(this.startIntermissionProcessor)
        nothing
end


function threadInit(this::AllBinaryGameCanvas)
        nothing
        nothing
end


function processGame(this::AllBinaryGameCanvas)
        AllBinary.process(this)
        if AllBinary.update(AllBinaryMediaManager)
            if !AllBinary.process(this.primaryPlayerQueue)
                AllBinary.process(this.secondaryPlayerQueue)
            end
        end
        AllBinary.process(this.mainStateProcessor)
        AllBinary.processInputList(this.menuInputProcessor)
        AllBinary.process(this.endGameProcessor)
        AllBinary.nextFrame(this.baseGameStatistics)
        nothing
end


function notifyDonePainting(this::AllBinaryGameCanvas)
        begin
            AllBinary.notifyObject(this.threadObjectUtil, this)
        end
        nothing
end


function shouldWait(this::AllBinaryGameCanvas)
        local features = AllBinary.getInstance(Features)
        if AllBinary.isAndroid(AndroidUtil)
            nothing
        elseif AllBinary.isFeature(features, this.openGLFeatureFactory.OPENGL_2D)
            nothing
        else
            if AllBinary.isDefault(features, this.openGLFeatureFactory.OPENGL)
                local openGLImageSpecificFactory = AllBinary.getInstance(OpenGLImageSpecificFactory)
                while openGLImageSpecificFactory.updating
                    AllBinary.sleep(Thread, this.YIELD_SLEEP)
                end
            end
        end
        nothing
end


function run(this::AllBinaryGameCanvas)
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
            AllBinary.addNormalPortion(progressCanvas, Int32(50), "Game Thread")
            AllBinary.setCurrentThread(this)
            AllBinary.setRunning(this, true)
            if AllBinary.getCustomCommandListener(this) == staticGet_NULL_COMMAND_LISTENER(NullCommandListener)
                AllBinary.sleep(Thread, this.YIELD_SLEEP)
            end
            AllBinary.shouldWait(this)
            AllBinary.threadInit(this)
            if AllBinary.getCustomCommandListener(this) == staticGet_NULL_COMMAND_LISTENER(NullCommandListener)
                AllBinary.sleep(Thread, this.YIELD_SLEEP)
            end
            AllBinary.open(this)
            local gameAdState = AllBinary.getCurrentInstance(this.gameAdStateFactory)
            AllBinary.init(gameAdState)
            AllBinary.setGameIsReady(gameAdState, true)
            AllBinary.run(this.gameBehavior, this)
            AllBinary.putF(this.logUtil, this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        end
        nothing
end


function run2(this::AllBinaryGameCanvas)
        local features = AllBinary.getInstance(Features)
        if AllBinary.isDefault(features, this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || AllBinary.isHTML(J2MEUtil)
            if AllBinary.isDefault(features, this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
                AllBinary.putF(this.logUtil, AllBinary.getName(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD), this, this.commonStrings.RUN)
            end
            if AllBinary.isHTML(J2MEUtil)
                AllBinary.putF(this.logUtil, AllBinary.getInstance(GraphicsStrings).HTML, this, this.commonStrings.RUN)
            end
            local currentDisplayableFactory = AllBinary.getInstance(CurrentDisplayableFactory)
            AllBinary.setRunnable(currentDisplayableFactory, this.gameRunnable)
            AllBinary.setDisplayable(currentDisplayableFactory, this)
            AllBinary.onResume(AllBinary.getInstance(OpenGLThreadUtil))
        elseif AllBinary.isDefault(features, this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)
            AllBinary.putF(this.logUtil, AllBinary.getName(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS), this, this.commonStrings.RUN)
            AllBinary.onResume(AllBinary.getInstance(OpenGLThreadUtil))
            while AllBinary.isRunning(this)
                AllBinary.run3(this)
            end
            AllBinary.end_(this)
        else
            AllBinary.putF(this.logUtil, "this thread", this, this.commonStrings.RUN)
            while AllBinary.isRunning(this)
                AllBinary.run3(this)
            end
            AllBinary.end_(this)
        end
        nothing
end


function run3(this::AllBinaryGameCanvas)
        AllBinary.setStartTime(this.loopTimeHelper, AllBinary.setStartTime(this.gameTickTimeDelayHelper))
        AllBinary.update(this.gameTickDisplayInfoSingleton)
        AllBinary.processGame(this)
        AllBinary.processLoopSleep(this)
        nothing
end


function setRunning(this::AllBinaryGameCanvas, running)
        AllBinary.setRunning(this, running)
        try
            local features = AllBinary.getInstance(Features)
            if running
                nothing
            else
                if AllBinary.isDefault(features, this.openGLFeatureFactory.OPENGL) || staticGet_isSWT(SWTUtil)
                    if AllBinary.getGameType(AllBinary.getGameInfo(this.gameLayerManager)) != this.gameTypeFactory.BOT
                        local currentDisplayableFactory = AllBinary.getInstance(CurrentDisplayableFactory)
                        AllBinary.clearRunnable(currentDisplayableFactory)
                    end
                    AllBinary.end_(this)
                end
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e)
        end
        nothing
end


function end_(this::AllBinaryGameCanvas)
        AllBinary.endRecording(this.screenCapture)
        AllBinary.add(this.baseGameStatistics, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.toString(this.baseGameStatistics)), AllBinary.getInstance(CommonSeps).NEW_LINE)))
        AllBinary.init(this.baseGameStatistics)
        AllBinary.removeListener(this.gameKeyEventHandler, this.cheatProcessor)
        AllBinary.close(this)
        AllBinary.removeAllGameKeyInputListeners(this)
        AllBinary.endGameThread(this)
        nothing
end


function endGameThread(this::AllBinaryGameCanvas)
        AllBinary.removeListener(AllBinary.getInstance(DisplayChangeEventHandler), this)
        AllBinary.clear(AllBinary.getInstance(GameLevelDisplayChangeEventListenersFactory))
        local gameAdState = AllBinary.getCurrentInstance(this.gameAdStateFactory)
        AllBinary.notPlayingAdState(gameAdState)
        nothing
end


function createHighScore(this::AllBinaryGameCanvas, score)
        local gameInfo = AllBinary.getGameInfo(this.gameLayerManager)
        return newHighScore(Int32(0), "NONE", newGameInfo(AllBinary.getGameType(gameInfo), AllBinary.getGameMode(gameInfo), AllBinary.getInstance(PlayerTypesFactory).PLAYER_TYPE_ONE, Int32(0), Int32(0)), score)
end


function setHighScore(this::AllBinaryGameCanvas, abeClientInformation, name, score, autoSubmit, isLast)
        AllBinary.setHighScore(this.gameBehavior, abeClientInformation, this, name, score, autoSubmit, isLast)
        nothing
end


function setHighScore2(this::AllBinaryGameCanvas, abeClientInformation, name, score, autoSubmit, isLast)
        local highScore = AllBinary.createHighScore(this, score)
        local textBox = newHighScoreTextBox(this.highScoresFactoryInterface, this.highScoresHelper, abeClientInformation, AllBinary.getGameInfo(this.gameLayerManager), AllBinary.getCustomCommandListener(this), name, highScore, AllBinary.getBackgroundBasicColor(this.gameLayerManager), AllBinary.getForegroundBasicColor(this.gameLayerManager))
        if isLast
            AllBinary.commandAction(AllBinary.getCustomCommandListener(this), AllBinary.getInstance(GameCommandsFactory).SET_MENU_DISPLAYABLE, textBox)
        end
        if autoSubmit
            AllBinary.runTask(AllBinary.getInstance(SecondaryThreadPool), newSaveHighScoreRunnable(isLast, textBox))
        end
        nothing
end


function getGameStateTimeHelper(this::AllBinaryGameCanvas)
        return this.gameStateTimeHelper
end


function setInitialized(this::AllBinaryGameCanvas, initialized)
        this.initialized = initialized
        nothing
end


function isInitialized(this::AllBinaryGameCanvas)
        return this.initialized
end


function getSourceId(this::AllBinaryGameCanvas)
        return staticGet_id(AllBinaryGameCanvas)
end


function setProgressPaintable(this::AllBinaryGameCanvas, paintable)
        this.progressPaintable = paintable
        nothing
end


function getStartIntermissionInterface(this::AllBinaryGameCanvas)
        return this.startIntermissionInterface
end


function getEndLevelIntermissionInterface(this::AllBinaryGameCanvas)
        return this.endLevelIntermissionInterface
end


function setTouchPaintableP(this::AllBinaryGameCanvas, paintable)
        this.touchPaintable = paintable
        nothing
end


function getTouchPaintableP(this::AllBinaryGameCanvas)
        return this.touchPaintable
end


function setEndGamePaintable(this::AllBinaryGameCanvas, endGamePaintable)
        this.endGamePaintable = endGamePaintable
        nothing
end


function getEndGamePaintable(this::AllBinaryGameCanvas)
        return this.endGamePaintable
end


function setIntermissionPaintable(this::AllBinaryGameCanvas, intermissionPaintable)
        this.intermissionPaintable = intermissionPaintable
        nothing
end


function getIntermissionPaintable(this::AllBinaryGameCanvas)
        return this.intermissionPaintable
end


function getEndGameInfoP(this::AllBinaryGameCanvas)
        return this.endGameInfo
end


function setHighScoresPaintable(this::AllBinaryGameCanvas, highScoresPaintable)
        this.highScoresPaintable = highScoresPaintable
        nothing
end


function getHighScoresPaintable(this::AllBinaryGameCanvas)
        return this.highScoresPaintable
end


function getRealHighScoresPaintable(this::AllBinaryGameCanvas)
        return this.realHighScoresPaintable
end


function clearPlayerGameInputList(this::AllBinaryGameCanvas)
        local playerGameInput = nothing
        let
            local index::Int32 = AllBinary.size(this.localPlayerGameInputList) - Int32(1)
            while index >= Int32(0)
            try
            playerGameInput = (AllBinary.get(this.localPlayerGameInputList, index))
            AllBinary.removeListener(this.gameKeyEventHandler, playerGameInput)
            finally
                index -= Int32(1)
            end
            end
        end
        AllBinary.clear(this.localPlayerGameInputList)
        nothing
end


function addPlayerGameInput(this::AllBinaryGameCanvas, playerGameInput)
        AllBinary.add(this.localPlayerGameInputList, playerGameInput)
        nothing
end


function setMenuInputProcessor(this::AllBinaryGameCanvas, menuInputProcessor)
        this.menuInputProcessor = menuInputProcessor
        nothing
end


function getMenuInputProcessor(this::AllBinaryGameCanvas)
        return this.menuInputProcessor
end


function getMenuForm(this::AllBinaryGameCanvas)
        return this.menuForm
end


function setMenuForm(this::AllBinaryGameCanvas, menuForm)
        this.menuForm = menuForm
        nothing
end


function getStartLevel(this::AllBinaryGameCanvas)
        return this.startLevel
end


function setStartLevel(this::AllBinaryGameCanvas, startLevel)
        this.startLevel = startLevel
        nothing
end


function setTouchButtonsPaintable(this::AllBinaryGameCanvas, touchButtonsPaintable)
        this.touchButtonsPaintable = touchButtonsPaintable
        nothing
end


function getTouchButtonsPaintable(this::AllBinaryGameCanvas)
        return this.touchButtonsPaintable
end


function setGameInputProcessor(this::AllBinaryGameCanvas, gameInputProcessor)
        this.gameInputProcessor = gameInputProcessor
        nothing
end


function getGameInputProcessor(this::AllBinaryGameCanvas)
        return this.gameInputProcessor
end


function setEndGameProcessor(this::AllBinaryGameCanvas, endGameProcessor)
        this.endGameProcessor = endGameProcessor
        nothing
end


function getEndGameProcessor(this::AllBinaryGameCanvas)
        return this.endGameProcessor
end


function setEndGameStatePaintable(this::AllBinaryGameCanvas, endGameStatePaintable)
        this.endGameStatePaintable = endGameStatePaintable
        nothing
end


function getEndGameStatePaintable(this::AllBinaryGameCanvas)
        return this.endGameStatePaintable
end


function setNonBotPaintableP(this::AllBinaryGameCanvas, nonBotPaintable)
        this.nonBotPaintable = nonBotPaintable
        nothing
end


function getNonBotPaintableP(this::AllBinaryGameCanvas)
        return this.nonBotPaintable
end


function setStartIntermissionPaintable(this::AllBinaryGameCanvas, startIntermissionPaintable)
        this.startIntermissionPaintable = startIntermissionPaintable
        nothing
end


function getStartIntermissionPaintable(this::AllBinaryGameCanvas)
        return this.startIntermissionPaintable
end


function setMainStateProcessor(this::AllBinaryGameCanvas, mainStateProcessor)
        this.mainStateProcessor = mainStateProcessor
        nothing
end


function getMainStateProcessor(this::AllBinaryGameCanvas)
        return this.mainStateProcessor
end


function setProcessGameProcessor(this::AllBinaryGameCanvas, processGameProcessor)
        this.processGameProcessor = processGameProcessor
        nothing
end


function getProcessGameProcessor(this::AllBinaryGameCanvas)
        return this.processGameProcessor
end


function setOpenMenuPaintable(this::AllBinaryGameCanvas, openMenuPaintable)
        this.openMenuPaintable = openMenuPaintable
        nothing
end


function getOpenMenuPaintable(this::AllBinaryGameCanvas)
        return this.openMenuPaintable
end


function setPopupMenuInputProcessor(this::AllBinaryGameCanvas, popupMenuInputProcessor)
        this.popupMenuInputProcessor = popupMenuInputProcessor
        nothing
end


function getPopupMenuInputProcessor(this::AllBinaryGameCanvas)
        return this.popupMenuInputProcessor
end


function getSensorGameUpdateProcessor(this::AllBinaryGameCanvas)
        return this.sensorGameUpdateProcessor
end


function getRawGameInputProcessor(this::AllBinaryGameCanvas)
        return this.rawGameInputProcessor
end


function getRawInputProcessor(this::AllBinaryGameCanvas)
        return this.rawInputProcessor
end


function setInputProcessor(this::AllBinaryGameCanvas, inputProcessor)
        this.inputProcessor = inputProcessor
        nothing
end


function getInputProcessor(this::AllBinaryGameCanvas)
        return this.inputProcessor
end


function setMenuPaintable(this::AllBinaryGameCanvas, menuPaintable)
        this.menuPaintable = menuPaintable
        nothing
end


function getMenuPaintable(this::AllBinaryGameCanvas)
        return this.menuPaintable
end


function setFormPaintable(this::AllBinaryGameCanvas, formPaintable)
        this.formPaintable = formPaintable
        nothing
end


function getFormPaintable(this::AllBinaryGameCanvas)
        return this.formPaintable
end


function setGameSpecificPaintableP(this::AllBinaryGameCanvas, gameSpecificPaintable)
        this.gameSpecificPaintable = gameSpecificPaintable
        nothing
end


function getGameSpecificPaintableP(this::AllBinaryGameCanvas)
        return this.gameSpecificPaintable
end


function isSingleThread(this::AllBinaryGameCanvas)
        return AllBinary.isAnyThreed(AllBinary.getInstance(OpenGLFeatureUtil)) || staticGet_isSWT(SWTUtil)
end


function isRunningInAnotherThread(this::AllBinaryGameCanvas)
        local features = AllBinary.getInstance(Features)
        local openGLFeatureFactory = AllBinary.getInstance(OpenGLFeatureFactory)
        if AllBinary.isDefault(features, openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
            return true
        else
            return AllBinary.isRunning(this)
        end
end


function getType(this::AllBinaryGameCanvas)
        return staticGet_TYPE(AllBinaryGameCanvas)
end


function getTitle(this::AllBinaryGameCanvas)
        return AllBinary.getTitle(this)
end


function isPaused(this::AllBinaryGameCanvas)
        return AllBinary.isPaused(this)
end

