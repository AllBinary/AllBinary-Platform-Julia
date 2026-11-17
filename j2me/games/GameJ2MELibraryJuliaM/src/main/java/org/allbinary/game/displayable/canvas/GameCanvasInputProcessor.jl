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

# extends InputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameCanvasInputProcessor <: JObject
    logUtil::Any
    allBinaryGameCanvas::Any
    downGameKeyEventHandler::Any
    upGameKeyEventHandler::Any
    downKeyEventHandler::Any
    smallIntegerSingletonFactory::Any
    inputToGameKeyMapping::Any
    NONE::Any
    gameKeyEventFactory::Any
    GameCanvasInputProcessor() = new()
end


function initFieldsGameCanvasInputProcessor(this::GameCanvasInputProcessor)
    this.logUtil = nothing
    this.allBinaryGameCanvas = nothing
    this.downGameKeyEventHandler = nothing
    this.upGameKeyEventHandler = nothing
    this.downKeyEventHandler = nothing
    this.smallIntegerSingletonFactory = nothing
    this.inputToGameKeyMapping = nothing
    this.NONE = nothing
    this.gameKeyEventFactory = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    this.downGameKeyEventHandler = AllBinary.getInstance(DownGameKeyEventHandler)
    this.upGameKeyEventHandler = AllBinary.getInstance(UpGameKeyEventHandler)
    this.downKeyEventHandler = AllBinary.getInstance(DownKeyEventHandler)
    this.smallIntegerSingletonFactory = AllBinary.getInstance(SmallIntegerSingletonFactory)
    this.inputToGameKeyMapping = AllBinary.getInputMapping(AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory)))
    this.NONE = AllBinary.getInstance(GameKeyFactory).NONE
    this.gameKeyEventFactory = AllBinary.getInstance(GameKeyEventFactory)
    nothing
end


function initGameCanvasInputProcessor(this::GameCanvasInputProcessor, allBinaryGameCanvas)
        initInputProcessor(this)
        initFieldsGameCanvasInputProcessor(this)
        this.allBinaryGameCanvas = allBinaryGameCanvas
        AllBinary.init(this.inputToGameKeyMapping, this.allBinaryGameCanvas)
        nothing
end

function newGameCanvasInputProcessor(allBinaryGameCanvas)
    this = GameCanvasInputProcessor()
    initGameCanvasInputProcessor(this, allBinaryGameCanvas)
    this
end


function keyPressedByDevice(this::GameCanvasInputProcessor, keyCode, deviceId)
        try
            local gameKey = AllBinary.getInstanceForCanvas(this.inputToGameKeyMapping, this.allBinaryGameCanvas, keyCode)
            if gameKey !== this.NONE
                local gameKeyEvent = AllBinary.getInstanceForInput(this.gameKeyEventFactory, this.allBinaryGameCanvas, gameKey)
                AllBinary.fireEvent(this.downGameKeyEventHandler, gameKeyEvent)
                AllBinary.fireEvent(AllBinary.getInstanceForDevice(this.downGameKeyEventHandler, deviceId), gameKeyEvent)
            else
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.gameInputStrings.NO_KEY), keyCode)), this, this.gameInputStrings.ADD_KEY_EVENT)
            end
            local keyCodeAsInteger = AllBinary.getAtNoThrow(this.smallIntegerSingletonFactory, keyCode)
            AllBinary.fireEventI(this.downKeyEventHandler, keyCodeAsInteger)
            AllBinary.fireEventI(AllBinary.getInstanceForDevice(this.downKeyEventHandler, deviceId), keyCodeAsInteger)
        catch e
            AllBinary.put(this.logUtil, "Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)
        end
        nothing
end


function keyReleasedByDevice(this::GameCanvasInputProcessor, canvas, keyCode, deviceId)
        AllBinary.removeGameKeyEvent(this, canvas, keyCode, deviceId, false)
        nothing
end


function removeGameKeyEvent(this::GameCanvasInputProcessor, canvas, keyCode, deviceId, repeated)
        try
            local gameKey = AllBinary.getInstanceForCanvas(this.inputToGameKeyMapping, canvas, keyCode)
            if gameKey !== this.NONE
                local gameKeyEventSourceInterface = (canvas)
                local gameKeyEvent = AllBinary.getInstanceForInput(this.gameKeyEventFactory, gameKeyEventSourceInterface, gameKey)
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

