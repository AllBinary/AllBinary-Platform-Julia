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
# package org.allbinary.game.midlet

# extends ProgressMidlet: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameMidlet <: JObject
    enumerationUtil::Any
    basicColorFactory::Any
    features::Any
    midletStrings::Any
    myCommandsFactory::Any
    gameStrings::Any
    gameAdStateFactory::Any
    gameStateFactory::Any
    tsUtil::Any
    DISPLAYABLE::Any
    COMMAND_NAME::Any
    NO_COMMAND::Any
    NO_DISPLAYABLE::Any
    COMMAND_ACTION::Any
    PAUSE_APP_BACKGROUND::Any
    UN_PAUSE_APP_BACKGROUND::Any
    aboutCommandProcessor::Any
    webCommandProcessor::Any
    gameMidletStateFactory::Any
    gameStartTimeHelper::Any
    fullScreenUtil::Any
    debugInterface::Any
    allbinaryGameCanvasRunnableInterface::Any
    thread::Any
    loadGameForm::Any
    isFullScreen::Bool
    resized::Bool
    startedBefore::Bool
    GameMidlet() = new()
end


function initFieldsGameMidlet(this::GameMidlet)
    this.enumerationUtil = nothing
    this.basicColorFactory = nothing
    this.features = nothing
    this.midletStrings = nothing
    this.myCommandsFactory = nothing
    this.gameStrings = nothing
    this.gameAdStateFactory = nothing
    this.gameStateFactory = nothing
    this.tsUtil = nothing
    this.DISPLAYABLE = nothing
    this.COMMAND_NAME = nothing
    this.NO_COMMAND = nothing
    this.NO_DISPLAYABLE = nothing
    this.COMMAND_ACTION = nothing
    this.PAUSE_APP_BACKGROUND = nothing
    this.UN_PAUSE_APP_BACKGROUND = nothing
    this.aboutCommandProcessor = nothing
    this.webCommandProcessor = nothing
    this.gameMidletStateFactory = nothing
    this.gameStartTimeHelper = nothing
    this.fullScreenUtil = nothing
    this.debugInterface = nothing
    this.allbinaryGameCanvasRunnableInterface = nothing
    this.thread = nothing
    this.loadGameForm = nothing
    this.isFullScreen = false
    this.resized = false
    this.startedBefore = false
    this.enumerationUtil = AllBinary.getInstance(EnumerationUtil)
    this.basicColorFactory = AllBinary.getInstance(BasicColorFactory)
    this.features = AllBinary.getInstance(Features)
    this.midletStrings = AllBinary.getInstance(MidletStrings)
    this.myCommandsFactory = AllBinary.getInstance(MyCommandsFactory)
    this.gameStrings = AllBinary.getInstance(GameStrings)
    this.gameAdStateFactory = AllBinary.getInstance(GameAdStateFactory)
    this.gameStateFactory = AllBinary.getInstance(GameStateFactory)
    this.tsUtil = AllBinary.getInstance(TsUtil)
    this.DISPLAYABLE = " Displayable: "
    this.COMMAND_NAME = "command Name/Label: "
    this.NO_COMMAND = "No Command"
    this.NO_DISPLAYABLE = "No Displayable"
    this.COMMAND_ACTION = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "GameMidlet::"), this.midletStrings.COMMAND_ACTION))
    this.PAUSE_APP_BACKGROUND = "pauseAppBackground"
    this.UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground"
    this.aboutCommandProcessor = AllBinary.getInstance(AboutCommandProcessor)
    this.webCommandProcessor = AllBinary.getInstance(WebCommandProcessor)
    this.gameMidletStateFactory = AllBinary.getInstance(GameMidletStateFactory)
    this.gameStartTimeHelper = newTimeDelayHelper(Int32(240))
    this.fullScreenUtil = AllBinary.getInstance(FullScreenUtil)
    
    this.allbinaryGameCanvasRunnableInterface = staticGet_NULL_GAME_CANVAS_RUNNABLE(NullGameCanvasRunnable)
    this.thread = staticGet_NULL_THREAD(NullThread)
    
    this.isFullScreen = false
    this.resized = false
    this.startedBefore = false
    nothing
end


function initGameMidlet(this::GameMidlet, clientInformationFactory)
        initProgressMidlet(this, clientInformationFactory)
        initFieldsGameMidlet(this)
        AllBinary.initWithRange(AllBinary.getInstance(SmallIntegerSingletonFactory), Int32(0x291), Int32(6))
        this.loadGameForm = AllBinary.getNullCommandForm(CommandForm)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        AllBinary.init(progressCanvas, this)
        AllBinary.addListenerInterface(AllBinary.getInstance(GameFeatureEventHandler), AllBinary.getInstance(ChangedGameFeatureListener))
        AllBinary.clear(AllBinary.getInstance(GamePersistanceSingleton))
        this.debugInterface = AllBinary.getInstance(DebugFactory)
        AllBinary.init(this)
        nothing
end

function newGameMidlet(clientInformationFactory)
    this = GameMidlet()
    initGameMidlet(this, clientInformationFactory)
    this
end


function init(this::GameMidlet)
        nothing
        nothing
end


function setDemo(this::GameMidlet)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function createGame(this::GameMidlet)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function mediaShutdown(this::GameMidlet)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
        nothing
end


function stopAll(this::GameMidlet)
        nothing
        nothing
end


function pauseApp(this::GameMidlet)
        AllBinary.pauseAppBackground(this, true)
        local gameAdState = AllBinary.getCurrentInstance(this.gameAdStateFactory)
        AllBinary.stopAll(AllBinary.getAdvertisements(gameAdState))
        nothing
end


function pauseAppBackground(this::GameMidlet, background)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.PAUSE_APP_BACKGROUND)
        if this.allbinaryGameCanvasRunnableInterface !== staticGet_NULL_GAME_CANVAS_RUNNABLE(NullGameCanvasRunnable)
            AllBinary.pause(this.allbinaryGameCanvasRunnableInterface)
        else
            AllBinary.putF(this.logUtil, "<<<<<< Null", this, this.PAUSE_APP_BACKGROUND)
        end
        AllBinary.shutdown(AllBinary.getInstance(AllBinarySensorManager))
        nothing
end


function unPauseApp(this::GameMidlet)
        AllBinary.unPauseAppBackground(this, true)
        local gameAdState = AllBinary.getCurrentInstance(this.gameAdStateFactory)
        AllBinary.startAll(AllBinary.getAdvertisements(gameAdState))
        nothing
end


function unPauseAppBackground(this::GameMidlet, background)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.UN_PAUSE_APP_BACKGROUND)
        AllBinary.init(AllBinary.getInstance(AllBinarySensorManager))
        local gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface
        if gameCanvasRunnableInterface !== staticGet_NULL_GAME_CANVAS_RUNNABLE(NullGameCanvasRunnable)
            AllBinary.unPause(gameCanvasRunnableInterface)
        else
            AllBinary.putF(this.logUtil, "<<<<<< Null", this, this.UN_PAUSE_APP_BACKGROUND)
        end
        nothing
end


function destroyAppInRunnable(this::GameMidlet, unconditional, isProgress)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        if isProgress
            AllBinary.start(progressCanvas)
            AllBinary.commandAction(this, this.myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
        end
        AllBinary.destroyApp(this, unconditional)
        if isProgress
            AllBinary.end_(progressCanvas)
        end
        nothing
end


function destroyApp(this::GameMidlet, unconditional)
        local METHOD_NAME = "GameMidlet::destroyApp"
        try
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.getInstance(GameStatisticsFactory)), this, METHOD_NAME)
            local gameAdState = AllBinary.getCurrentInstance(this.gameAdStateFactory)
            AllBinary.stopAll(AllBinary.getAdvertisements(gameAdState))
            if !AllBinary.isDestroyed(this)
                AllBinary.stopGameCanvasRunnableInterface(this)
                AllBinary.setGameCanvasRunnableInterface(this, staticGet_NULL_GAME_CANVAS_RUNNABLE(NullGameCanvasRunnable))
                AllBinary.mediaShutdown(this)
            else
                AllBinary.putF(this.logUtil, "Midlet Managment Error: Midlet Should Only Be Destroyed Once", this, METHOD_NAME)
            end
            AllBinary.destroyApp(this, true)
            AllBinary.put(PreLogUtil, this.commonStrings.END, this, METHOD_NAME)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, METHOD_NAME, e)
        end
        AllBinary.putF(this.logUtil, this.commonStrings.END, this, METHOD_NAME)
        nothing
end


function startApp(this::GameMidlet)
        try
            local gameAdState = AllBinary.getCurrentInstance(this.gameAdStateFactory)
            AllBinary.startAll(AllBinary.getAdvertisements(gameAdState))
            local START_APP = "startApp"
            AllBinary.putF(this.logUtil, this.commonStrings.START, this, START_APP)
            local gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface
            if gameCanvasRunnableInterface === staticGet_NULL_GAME_CANVAS_RUNNABLE(NullGameCanvasRunnable)
                AllBinary.setCurrentGameState(this.gameMidletStateFactory, this.gameStateFactory.NO_GAME_STATE)
                AllBinary.setDemo(this)
            else
                AllBinary.putF(this.logUtil, "GameCanvasRunnableInterface is available", this, START_APP)
                if gameCanvasRunnableInterface === AllBinary.getCurrentDisplayable(this)
                    AllBinary.unPauseAppBackground(this, false)
                else
                    AllBinary.putF(this.logUtil, "GameCanvasRunnableInterface is not current displayable", this, START_APP)
                end
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "startApp", e)
            AllBinary.destroyApp(this, false)
            AllBinary.notifyDestroyed(this)
        end
        nothing
end


function commandAction(this::GameMidlet, command, displayable)
        try
            local displayableAsString = this.NO_DISPLAYABLE
            if displayable !== nothing
                displayableAsString = AllBinary.toString(displayable)
            end
            local label = this.NO_COMMAND
            if command !== nothing
                label = AllBinary.getLabel(command)
            end
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), this.COMMAND_NAME), label), this.DISPLAYABLE), displayableAsString)), this, this.COMMAND_ACTION)
            local gameCommandsFactory = AllBinary.getInstance(GameCommandsFactory)
            local allbinaryGameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface
            local gameCanvasRunnableInterface = allbinaryGameCanvasRunnableInterface
            if command === gameCommandsFactory.SHOW_GAME_CANVAS
                if AllBinary.getCurrent(AllBinary.getDisplay(this)) != gameCanvasRunnableInterface && AllBinary.getType(allbinaryGameCanvasRunnableInterface) != AllBinary.getType(staticGet_NULL_GAME_CANVAS_RUNNABLE(NullGameCanvasRunnable))
                    AllBinary.setDisplay(this, (gameCanvasRunnableInterface))
                end
                AllBinary.unPauseAppBackground(this, false)
            elseif command === gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS
                menuListener = (displayable)
                AllBinary.close(menuListener)
                AllBinary.setDisplay(this, (gameCanvasRunnableInterface))
                AllBinary.unPauseAppBackground(this, false)
            elseif command === gameCommandsFactory.EXIT_COMMAND
                if AllBinary.size(AllBinary.getEventListenerInterfaceListP(AllBinary.getInstance(GameMidletEventHandler))) == Int32(0)
                    AllBinary.exitProgress(this, true)
                end
                AllBinary.fireEvent(AllBinary.getInstance(GameMidletEventHandler), newDemoGameMidletEvent(this, AllBinary.getInstance(DemoGameMidletStateFactory).NONE))
            elseif command === gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND
                AllBinary.exitProgress(this, false)
            elseif command === gameCommandsFactory.START_COMMAND || command === gameCommandsFactory.RESTART_COMMAND || command === gameCommandsFactory.CONTINUE_COMMAND
                if AllBinary.getCurrentGameState(this.gameMidletStateFactory) != this.gameStateFactory.PLAYING_GAME_STATE || command === gameCommandsFactory.RESTART_COMMAND
                    if AllBinary.isTimeTNT(this.gameStartTimeHelper)
                        if command === gameCommandsFactory.START_COMMAND && AllBinary.isDemoLoading(this)
                            AllBinary.putF(this.logUtil, "Trying to Start Game Before Loading Complete", this, this.midletStrings.COMMAND_ACTION)
                        else
                            this.startedBefore = true
                            AllBinary.createGame(this)
                            AllBinary.setCurrentGameState(this.gameMidletStateFactory, this.gameStateFactory.PLAYING_GAME_STATE)
                        end
                    else
                        AllBinary.putF(this.logUtil, "Starting Game Too Often", this, this.midletStrings.COMMAND_ACTION)
                    end
                else
                    AllBinary.putF(this.logUtil, "Already in playing state", this, this.COMMAND_ACTION)
                end
            elseif command === gameCommandsFactory.BUY_COMMAND
                local inApplicationPurchaseFactory = AllBinary.getInstance(InApplicationPurchaseFactory)
                local list = AllBinary.getList(AllBinary.getInstance(LockableFeatureFactory))
                local lockableFeature = (AllBinary.get(list, Int32(0)))
                if AllBinary.size(list) > Int32(0) && !AllBinary.isPurchased(inApplicationPurchaseFactory, lockableFeature)
                    AllBinary.purchase(inApplicationPurchaseFactory, lockableFeature)
                else
                    AllBinary.fireSuccess(AllBinary.getInstance(TextNotificationUtil), "Already Purchased")
                end
            elseif command === gameCommandsFactory.QUIT_COMMAND
                if AllBinary.isTimeTNT(this.gameStartTimeHelper)
                    if Base.isa(displayable, HighScoreTextBox)
                        menuListener = (displayable)
                        AllBinary.close(menuListener)
                    end
                    AllBinary.stopGameCanvasRunnableInterface(this)
                    AllBinary.setCurrentGameState(this.gameMidletStateFactory, this.gameStateFactory.NO_GAME_STATE)
                    AllBinary.setDemo(this)
                end
            elseif command === this.myCommandsFactory.RESUME_COMMAND
                AllBinary.unPauseAppBackground(this, false)
            elseif command === this.myCommandsFactory.PAUSE_COMMAND
                AllBinary.pauseAppBackground(this, false)
            elseif command === this.myCommandsFactory.SET_DISPLAYABLE
                AllBinary.pauseAppBackground(this, false)
                AllBinary.setDisplay(this, displayable)
            elseif command === gameCommandsFactory.SET_MENU_DISPLAYABLE
                AllBinary.pauseAppBackground(this, false)
                menuListener = (displayable)
                AllBinary.open(menuListener)
                AllBinary.setDisplay(this, displayable)
            elseif command === gameCommandsFactory.START_TRACE
                AllBinary.start(this.debugInterface)
                gameCanvas = (allbinaryGameCanvasRunnableInterface)
                AllBinary.addCommand(gameCanvas, gameCommandsFactory.STOP_TRACE)
                AllBinary.removeCommand(gameCanvas, gameCommandsFactory.START_TRACE)
            elseif command === gameCommandsFactory.STOP_TRACE
                AllBinary.pauseAppBackground(this, false)
                AllBinary.stop(this.debugInterface)
                AllBinary.unPauseAppBackground(this, false)
                local gameCanvas = (allbinaryGameCanvasRunnableInterface)
                AllBinary.addCommand(gameCanvas, gameCommandsFactory.START_TRACE)
                AllBinary.removeCommand(gameCanvas, gameCommandsFactory.STOP_TRACE)
            elseif command === gameCommandsFactory.DEFAULT_OPTIONS
                tempDisplayable = displayable
                if Base.isa(tempDisplayable, GameOptionsForm)
                    AllBinary.setDefault(AllBinary.getInstance(GameFeatureFormUtil), (tempDisplayable))
                end
            elseif command === staticGet_DISPLAY(GameInputMappingInstructionsCanvas)
                tempDisplayable = displayable
                if Base.isa(tempDisplayable, GameInputMappingCanvas)
                    gameInputMappingCanvas = (tempDisplayable)
                    AllBinary.update(gameInputMappingCanvas)
                end
                AllBinary.commandAction(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, AllBinary.getInputMappingInstructionsCanvas(this))
            elseif AllBinary.isHighScoreCommand(AllBinary.getInstance(HighScoreCommandsFactory), command)
                tempDisplayable = displayable
                if Base.isa(tempDisplayable, HighScoresCanvas)
                    local highScoresCanvas = (tempDisplayable)
                    AllBinary.updateCommand(highScoresCanvas, command)
                end
            elseif command === AllBinary.getInstance(HighScoreCommands).DISPLAY
                AllBinary.commandAction(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, AllBinary.createHighScoresCanvas(this))
            elseif command === staticGet_CLOSE(GameInputMappingInstructionsCanvas)
                menuListener = (displayable)
                AllBinary.close(menuListener)
                AllBinary.commandAction(this, staticGet_DISPLAY(GameInputMappingCanvas), staticGet_NULL_CANVAS(NullCanvas))
            elseif command === staticGet_DISPLAY(GameInputMappingCanvas)
                if AllBinary.isHTML(J2MEUtil)
                    AllBinary.pauseAppBackground(this, false)
                end
                AllBinary.commandAction(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, AllBinary.getInputMappingCanvas(this))
            elseif command === staticGet_DEFAULT(GameInputMappingCanvas)
                local tempDisplayable = displayable
                if Base.isa(tempDisplayable, GameInputMappingCanvas)
                    local gameInputMappingCanvas = (tempDisplayable)
                    AllBinary.setDefault(gameInputMappingCanvas)
                end
            elseif command === staticGet_DISPLAY(InGameOptionsForm)
                AllBinary.pauseAppBackground(this, false)
                local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
                AllBinary.addNormalPortion(progressCanvas, Int32(50), "In Game Options")
                layerManager = AllBinary.createGameLayerManager(this)
                local inGameOptionsFormFactory = AllBinary.getInstance(InGameOptionsFormFactory)
                AllBinary.init(inGameOptionsFormFactory, this, newInGameFeatures(), "Options In Game", AllBinary.getBackgroundBasicColor(layerManager), AllBinary.getForegroundBasicColor(layerManager))
                inGameOptionsForm = AllBinary.get(inGameOptionsFormFactory)
                AllBinary.setItemStateListener(inGameOptionsForm, allbinaryGameCanvasRunnableInterface)
                AllBinary.commandAction(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm)
            elseif command === staticGet_DEFAULT(InGameOptionsForm)
                local inGameOptionsForm = (AllBinary.get(AllBinary.getInstance(InGameOptionsFormFactory)))
                AllBinary.setDefault(AllBinary.getInstance(GameFeatureFormUtil), inGameOptionsForm)
            elseif command === gameCommandsFactory.DISPLAY_OPTIONS
                AllBinary.setMuted(AllBinaryMediaManager, true)
                AllBinary.stopAll(this)
                mainFeatureFactory = AllBinary.getInstance(MainFeatureFactory)
                this.isFullScreen = AllBinary.isFeature(this.features, mainFeatureFactory.FULL_SCREEN)
                AllBinary.fireEvent(AllBinary.getInstance(ResizableListenerHandler), true)
                AllBinary.setResized(this, false)
                AllBinary.commandAction(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, AllBinary.getGameOptionsForm(this))
            elseif command === gameCommandsFactory.CLOSE_OPTIONS
                AllBinary.fireEvent(AllBinary.getInstance(ResizableListenerHandler), false)
                AllBinary.commandAction(this, gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
                local stringBuffer = newStringMaker()
                AllBinary.append(stringBuffer, "Close isFullScreen/change: ")
                AllBinary.appendboolean(stringBuffer, this.isFullScreen)
                AllBinary.appendboolean(stringBuffer, AllBinary.isScreenChange(this.fullScreenUtil, this.isFullScreen))
                AllBinary.append(stringBuffer, " isResized: ")
                AllBinary.appendboolean(stringBuffer, AllBinary.isResized(this))
                AllBinary.put(PreLogUtil, AllBinary.toString(stringBuffer), this, this.COMMAND_ACTION)
                if AllBinary.isResized(this) || AllBinary.isScreenChange(this.fullScreenUtil, this.isFullScreen)
                    AllBinary.updateFullScreen(this)
                end
                AllBinary.setMuted(AllBinaryMediaManager, false)
            elseif command === gameCommandsFactory.DISPLAY_LOAD_FORM
                AllBinary.pauseAppBackground(this, false)
                keyValuePersistance = AllBinary.getInstance(GamePersistanceSingleton)
                AllBinary.clear(keyValuePersistance)
                AllBinary.loadAll(keyValuePersistance, this.abeClientInformation)
                if AllBinary.getLoadGameForm(this) === AllBinary.getNullCommandForm(CommandForm)
                    local layerManager = AllBinary.createGameLayerManager(this)
                    AllBinary.setLoadGameForm(this, newLoadGameForm(this, "Load Game", AllBinary.getBackgroundBasicColor(layerManager), AllBinary.getForegroundBasicColor(layerManager)))
                else
                    AllBinary.update(AllBinary.getLoadGameForm(this))
                end
                AllBinary.commandAction(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, AllBinary.getLoadGameForm(this))
            elseif command === gameCommandsFactory.LOAD_FILE
                loadGameForm = (AllBinary.getLoadGameForm(this))
                index = AllBinary.getSelectedId(loadGameForm)
                if index != -Int32(1)
                    keyValuePersistance = AllBinary.getInstance(GamePersistanceSingleton)
                    AllBinary.setStartStateHashtable(this, AllBinary.get(keyValuePersistance, index))
                    local menuListener = AllBinary.getLoadGameForm(this)
                    AllBinary.close(menuListener)
                    AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.getInstance(BasicMotionGesturesHandler)), this, this.COMMAND_ACTION)
                    AllBinary.commandAction(this, gameCommandsFactory.START_COMMAND, staticGet_NULL_CANVAS(NullCanvas))
                    AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.getInstance(BasicMotionGesturesHandler)), this, this.COMMAND_ACTION)
                end
            elseif command === gameCommandsFactory.DELETE_FILE
                local loadGameForm = (AllBinary.getLoadGameForm(this))
                local index::Int32 = AllBinary.getSelectedText(loadGameForm)
                if index != -Int32(1)
                    keyValuePersistance = AllBinary.getInstance(GamePersistanceSingleton)
                    AllBinary.delete(keyValuePersistance, this.abeClientInformation, index)
                    AllBinary.clear(keyValuePersistance)
                    AllBinary.loadAllSize(keyValuePersistance, this.abeClientInformation, Int32(1))
                    AllBinary.update(AllBinary.getLoadGameForm(this))
                end
            elseif command === gameCommandsFactory.SAVE
                local keyValuePersistance = AllBinary.getInstance(GamePersistanceSingleton)
                AllBinary.pauseAppBackground(this, false)
                AllBinary.save(keyValuePersistance, this.abeClientInformation, AllBinary.getCurrentStateHashtable(this))
                AllBinary.unPauseAppBackground(this, false)
            elseif command === staticGet_SUBMIT_TEXTBOX_COMMAND(HighScoreUtil)
                AllBinary.putF(this.logUtil, "Submitted Score", this, this.COMMAND_ACTION)
                if Base.isa(displayable, HighScoreTextBox)
                    local highScoreTextBox = (displayable)
                    highScoreTextBox.submitted = true
                end
                AllBinary.setHighScoreSubmitted(allbinaryGameCanvasRunnableInterface, true)
                AllBinary.commandAction(this, gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
            elseif command === gameCommandsFactory.DISPLAY_ABOUT
                AllBinary.process(this.aboutCommandProcessor, this, gameCommandsFactory.SET_MENU_DISPLAYABLE, AllBinary.getAboutCanvas(this))
            elseif command === gameCommandsFactory.OPEN_WEB_URL
                AllBinary.process(this.webCommandProcessor, this, gameCommandsFactory.OPEN_WEB_URL, staticGet_NULL_CANVAS(NullCanvas))
            elseif command === gameCommandsFactory.TOGGLE_KEYBOARD
                local virtualKeyboardEventHandler = AllBinary.getInstance(VirtualKeyboardEventHandler)
                AllBinary.fireEvent(virtualKeyboardEventHandler, virtualKeyboardEventHandler.SHOW_EVENT)
            elseif AllBinary.compareTo(this.tsUtil, AllBinary.getLabel(command), AllBinary.getLabel(gameCommandsFactory.TOGGLE_FULLSCREEN)) == Int32(0)
                local mainFeatureFactory = AllBinary.getInstance(MainFeatureFactory)
                local isFullScreen::Bool = AllBinary.isFeature(this.features, mainFeatureFactory.FULL_SCREEN)
                if isFullScreen
                    AllBinary.removeDefault(this.features, mainFeatureFactory.FULL_SCREEN)
                else
                    AllBinary.addDefault(this.features, mainFeatureFactory.FULL_SCREEN)
                end
                AllBinary.updateFullScreen(this)
            end
        catch e
            AllBinary.put(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.EXCEPTION_LABEL), AllBinary.getLabel(command))), this, this.midletStrings.COMMAND_ACTION, e)
            if command !== AllBinary.getInstance(GameCommandsFactory).EXIT_COMMAND
                AllBinary.exitProgress(this, false)
            end
        end
        nothing
end


function updateFullScreen(this::GameMidlet)
        local mainFeatureFactory = AllBinary.getInstance(MainFeatureFactory)
        local isFullScreen::Bool = AllBinary.isFeature(this.features, mainFeatureFactory.FULL_SCREEN)
        local displayable = AllBinary.getCurrent(AllBinary.getDisplay(this))
        if Base.isa(displayable, Canvas)
            local canvas = (displayable)
            AllBinary.setFullScreenMode(canvas, isFullScreen)
        end
        nothing
end


function onEvent(this::GameMidlet, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function getInputMappingInstructionsCanvas(this::GameMidlet)
        return newGameInputMappingInstructionsCanvas(this, AllBinary.createGameLayerManager(this))
end


function getInputMappingCanvas(this::GameMidlet)
        return newGameInputMappingCanvas(this.abeClientInformation, this, AllBinary.createGameLayerManager(this), AllBinary.getHelpPaintable(this))
end


function getAboutCanvas(this::GameMidlet)
        return newBasicPaintablesCanvas(this, AllBinary.getInstance(CanvasStrings).ABOUT, AllBinary.createGameLayerManager(this), AllBinary.getInstance(AboutPaintableFactory).paintableArray)
end


function getHelpPaintable(this::GameMidlet)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function createHighScoresCanvas(this::GameMidlet)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function startGameCanvasRunnableInterface(this::GameMidlet)
        local threadFactoryUtil = AllBinary.getInstance(ThreadFactoryUtil)
        this.thread = AllBinary.getInstanceGameCanvasRunnable(threadFactoryUtil, this.allbinaryGameCanvasRunnableInterface)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "Thread Priority: "), ((AllBinary.getPriority(this.thread)) % Int32))), this, "startGameCanvasRunnableInterface")
        AllBinary.setThread(this.allbinaryGameCanvasRunnableInterface, this.thread)
        AllBinary.start(threadFactoryUtil, this.thread)
        nothing
end


function stopGameCanvasRunnableInterface(this::GameMidlet)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        AllBinary.removeAllListeners(AllBinary.getInstance(GameNotificationEventHandler))
        AllBinary.removeAllListeners(AllBinary.getInstance(ColorChangeEventHandler))
        AllBinary.removeAllListeners(GameEventHandlerUtil)
        local gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface
        if gameCanvasRunnableInterface !== staticGet_NULL_GAME_CANVAS_RUNNABLE(NullGameCanvasRunnable)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Set Running False: "), AllBinary.toString(gameCanvasRunnableInterface))), this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
            AllBinary.setRunning(gameCanvasRunnableInterface, false)
        else
            AllBinary.putF(this.logUtil, "StopGame - Could Not Stop", this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        end
        AllBinary.join(AllBinary.getInstance(ThreadUtil), this.thread)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        if AllBinary.isFeature(this.features, AllBinary.getInstance(MainFeatureFactory).LOAD_ALL)
            AllBinary.addNormalPortion(progressCanvas, Int32(50), "Stopped Game Runnable")
        else
            AllBinary.addNormalPortion(progressCanvas, Int32(50), "Stopped Main Runnable")
        end
        AllBinary.putF(this.logUtil, this.commonStrings.END, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        nothing
end


function getGameCanvasRunnableInterface(this::GameMidlet)
        return this.allbinaryGameCanvasRunnableInterface
end


function setGameCanvasRunnableInterface(this::GameMidlet, gameCanvasRunnableInterface)
        this.allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface
        nothing
end


function createGameLayerManager(this::GameMidlet)
        local gameInfo = newGameInfo(AllBinary.getInstance(GameTypeFactory).SINGLE_PLAYER, staticGet_SERVER(GameMode), AllBinary.getInstance(PlayerTypesFactory).PLAYER_TYPE_ONE, Int32(1), Int32(1))
        return newAllBinaryGameLayerManager(this.basicColorFactory.BLACK, this.basicColorFactory.WHITE, gameInfo)
end


function getGameOptionsForm(this::GameMidlet)
        local layerManager = AllBinary.createGameLayerManager(this)
        return AllBinary.init(AllBinary.getInstance(GameOptionsFormFactory), this, "Game Options", AllBinary.getBackgroundBasicColor(layerManager), AllBinary.getForegroundBasicColor(layerManager))
end


function save(this::GameMidlet)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.SAVE)
        local hashtable = AllBinary.getCurrentStateHashtable(this)
        AllBinary.save(AllBinary.getInstance(GamePersistanceSingleton), this.abeClientInformation, hashtable)
        nothing
end


function getCurrentStateHashtable(this::GameMidlet)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, "getCurrentStateHashtable")
        local hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
        if this.allbinaryGameCanvasRunnableInterface !== staticGet_NULL_GAME_CANVAS_RUNNABLE(NullGameCanvasRunnable)
            local currentHashtable = AllBinary.getCurrentStateHashtable(this.allbinaryGameCanvasRunnableInterface)
            local enumeration = AllBinary.keys(currentHashtable)
            local key = nothing
            while AllBinary.hasMoreElements(this.enumerationUtil, enumeration)
                key = AllBinary.nextElement(this.enumerationUtil, enumeration)
                AllBinary.put(hashtable, key, AllBinary.get(currentHashtable, key))
            end
        end
        return hashtable
end


function setLoadGameForm(this::GameMidlet, loadGameForm)
        this.loadGameForm = loadGameForm
        nothing
end


function getLoadGameForm(this::GameMidlet)
        return this.loadGameForm
end


function setResized(this::GameMidlet, resized)
        this.resized = resized
        nothing
end


function isResized(this::GameMidlet)
        return this.resized
end


function isDemoLoading(this::GameMidlet)
        if this.startedBefore
            return false
        end
        local displayable = AllBinary.getCurrent(AllBinary.getDisplay(this))
        if Base.isa(displayable, DemoCanvas)
            local demoCanvas = (displayable)
            if AllBinary.isDemoLoading(demoCanvas)
                return true
            end
        end
        return false
end

