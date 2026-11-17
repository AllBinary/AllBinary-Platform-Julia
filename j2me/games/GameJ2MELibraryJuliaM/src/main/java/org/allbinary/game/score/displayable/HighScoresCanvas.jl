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
# package org.allbinary.game.score.displayable

# extends GameCommandCanvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HighScoresCanvas <: JObject
    paintable::Any
    highScoreCommandsFactory::Any
    waitPaintable::Any
    highScoresPaintable::Any
    highScoresFactoryInterface::Any
    colorFillPaintable::Any
    highScoresHelper::Any
    gameInfo::Any
    highScoresCanvasInputProcessor::Any
    currentCommand::Any
    hasPainted::Bool
    HighScoresCanvas() = new()
end

const HighScoresCanvas_NAMEValue = Ref{Any}(nothing)
const HighScoresCanvas_NAMESet = Ref(false)
function staticGet_NAME(::Type{HighScoresCanvas})
    if !HighScoresCanvas_NAMESet[]
        HighScoresCanvas_NAMESet[] = true
        HighScoresCanvas_NAMEValue[] = "HighScoresCanvas"
    end
    HighScoresCanvas_NAMEValue[]
end
function staticSet_NAME(::Type{HighScoresCanvas}, value)
    HighScoresCanvas_NAMESet[] = true
    HighScoresCanvas_NAMEValue[] = value
end

function initFieldsHighScoresCanvas(this::HighScoresCanvas)
    this.paintable = nothing
    this.highScoreCommandsFactory = nothing
    this.waitPaintable = nothing
    this.highScoresPaintable = nothing
    this.highScoresFactoryInterface = nothing
    this.colorFillPaintable = nothing
    this.highScoresHelper = nothing
    this.gameInfo = nothing
    this.highScoresCanvasInputProcessor = nothing
    this.currentCommand = nothing
    this.hasPainted = false
    this.paintable = AllBinary.getInstance(NullPaintable)
    this.highScoreCommandsFactory = AllBinary.getInstance(HighScoreCommandsFactory)
    this.waitPaintable = newSimpleTextPaintable(this.commonStrings.PLEASE_WAIT_FOR_SERVER, AllBinary.getInstance(BasicColorFactory).WHITE)
    
    
    
    this.highScoresHelper = newHighScoresHelperBase()
    
    
    this.currentCommand = this.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[Int32(0) + 1]
    this.hasPainted = false
    nothing
end


function initHighScoresCanvas(this::HighScoresCanvas, commandListener, allBinaryGameLayerManager, gameInfo, paintable, highScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface)
        initGameCommandCanvas(this, commandListener, staticGet_NAME(HighScoresCanvas), AllBinary.getBackgroundBasicColor(allBinaryGameLayerManager), AllBinary.getForegroundBasicColor(allBinaryGameLayerManager))
        initFieldsHighScoresCanvas(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.highScoresPaintable = paintable
        this.highScoresFactoryInterface = highScoresFactoryInterface
        this.highScoresCanvasInputProcessor = AllBinary.getInstance(highScoresCanvasInputProcessorFactoryInterface, this)
        this.gameInfo = gameInfo
        AllBinary.setBasicColorP(this.waitPaintable, AllBinary.getForegroundBasicColor(allBinaryGameLayerManager))
        AllBinary.setBasicColorP(AllBinary.getHighScoresPaintable(this), AllBinary.getForegroundBasicColor(allBinaryGameLayerManager))
        this.colorFillPaintable = AllBinary.getInstance(AllBinary.getInstance(ColorFillPaintableFactory), AllBinary.getBackgroundBasicColor(allBinaryGameLayerManager), false)
        if Int32(Base.length(AllBinary.getHighScoresArray(this.highScoresHelper))) == Int32(Base.length(AllBinary.getInstance(NoHighScoresFactory).NO_HIGH_SCORES))
            AllBinary.setPaintable(this, this.waitPaintable)
        else
            AllBinary.putF(this.logUtil, "Show HighScores that are already loaded", this, this.commonStrings.CONSTRUCTOR)
            AllBinary.updateCommand(this, this.currentCommand)
            AllBinary.setPaintable(this, AllBinary.getHighScoresPaintable(this))
        end
        AllBinary.runTask(AllBinary.getInstance(SecondaryThreadPool), newHighScoreRunnable(this))
        nothing
end

function newHighScoresCanvas(commandListener, allBinaryGameLayerManager, gameInfo, paintable, highScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface)
    this = HighScoresCanvas()
    initHighScoresCanvas(this, commandListener, allBinaryGameLayerManager, gameInfo, paintable, highScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface)
    this
end


function initCommands(this::HighScoresCanvas, cmdListener)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommand(this, AllBinary.getInstance(GameCommandsFactory).CLOSE_AND_SHOW_GAME_CANVAS)
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function open(this::HighScoresCanvas)
        AllBinary.open(this)
        AllBinary.open(this.highScoresCanvasInputProcessor)
        nothing
end


function close(this::HighScoresCanvas)
        AllBinary.close(this)
        AllBinary.close(this.highScoresCanvasInputProcessor)
        nothing
end


function paint(this::HighScoresCanvas, graphics)
        AllBinary.paint(this.colorFillPaintable, graphics)
        AllBinary.paint(this.paintable, graphics)
        if this.waitPaintable !== this.paintable
            AllBinary.paint(this.highScoresCanvasInputProcessor, graphics)
        end
        AllBinary.paint(this, graphics)
        this.hasPainted = true
        nothing
end


function executeUpdate(this::HighScoresCanvas)
        try
            AllBinary.fetchHighScores(this.highScoresFactoryInterface, AllBinary.getGameInfo(this), this)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)
        end
        nothing
end


function getHighScoresPaintable(this::HighScoresCanvas)
        return this.highScoresPaintable
end


function setHighScoresArray(this::HighScoresCanvas, highScoresArray)
        try
            if highScoresArray !== nothing
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.commonStrings.START), Int32(Base.length(highScoresArray)))), this, "setHighScoresArray")
            else
                AllBinary.putF(this.logUtil, this.commonStrings.START, this, "setHighScoresArray")
            end
            AllBinary.setHighScoresArray(this.highScoresHelper, highScoresArray)
            AllBinary.updateCommand(this, this.currentCommand)
            AllBinary.setPaintable(this, AllBinary.getHighScoresPaintable(this))
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)
        end
        nothing
end


function updateCommand(this::HighScoresCanvas, command)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.commonStrings.START), AllBinary.toString(this.stringUtil, command))), this, this.commonStrings.UPDATE)
        local gameCommandsFactory = AllBinary.getInstance(GameCommandsFactory)
        if AllBinary.isHighScoreCommand(this.highScoreCommandsFactory, command)
            local index::Int32 = AllBinary.getIndex(this.highScoreCommandsFactory, command)
            local nextIndex::Int32 = index + Int32(1)
            local highScoresArray = AllBinary.getHighScoresArray(this.highScoresHelper)
            if nextIndex >= Int32(Base.length(highScoresArray))
                nextIndex = Int32(0)
            end
            if Int32(Base.length(highScoresArray)) > Int32(0)
                AllBinary.setHighScores(AllBinary.getHighScoresPaintable(this), highScoresArray[index + 1])
            else
                AllBinary.setHighScores(AllBinary.getHighScoresPaintable(this), AllBinary.getInstance(NullHighScoresSingletonFactory))
            end
            if index != nextIndex
                AllBinary.removeAllCommands(this)
                AllBinary.addCommand(this, gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
                AllBinary.addCommand(this, this.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[nextIndex + 1])
            end
        end
        this.currentCommand = command
        AllBinary.close(this)
        AllBinary.initMenu(this)
        AllBinary.open(this)
        AllBinary.onChangeRepaint(this.repaintBehavior, this)
        nothing
end


function getGameInfo(this::HighScoresCanvas)
        return this.gameInfo
end


function setPaintable(this::HighScoresCanvas, paintable)
        this.paintable = paintable
        AllBinary.onChangeRepaint(this.repaintBehavior, this)
        nothing
end

