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
mutable struct FormInputProcessor <: JObject
    logUtil::Any
    commonStrings::Any
    gameKeyEventFactory::Any
    downKeyEventHandler::Any
    upGameKeyEventHandler::Any
    inputFactory::Any
    platformKeyFactory::Any
    allBinaryGameCanvas::Any
    FormInputProcessor() = new()
end


function initFieldsFormInputProcessor(this::FormInputProcessor)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.gameKeyEventFactory = nothing
    this.downKeyEventHandler = nothing
    this.upGameKeyEventHandler = nothing
    this.inputFactory = nothing
    this.platformKeyFactory = nothing
    this.allBinaryGameCanvas = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.gameKeyEventFactory = AllBinary.getInstance(GameKeyEventFactory)
    this.downKeyEventHandler = AllBinary.getInstance(DownKeyEventHandler)
    this.upGameKeyEventHandler = AllBinary.getInstance(UpGameKeyEventHandler)
    this.inputFactory = AllBinary.getInstance(InputFactory)
    this.platformKeyFactory = AllBinary.getInstance(PlatformKeyFactory)
    
    nothing
end


function initFormInputProcessor(this::FormInputProcessor, allBinaryGameCanvas)
        initInputProcessor(this)
        initFieldsFormInputProcessor(this)
        this.allBinaryGameCanvas = allBinaryGameCanvas
        nothing
end

function newFormInputProcessor(allBinaryGameCanvas)
    this = FormInputProcessor()
    initFormInputProcessor(this, allBinaryGameCanvas)
    this
end


function keyPressedByDevice(this::FormInputProcessor, keyCode, deviceId)
        try
            AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.append(AllBinary.appendint(AllBinary.append(newStringMaker(), this.inputFactory.KEY_CODE_LABEL), keyCode), AllBinary.getInstance(CommonSeps).SPACE), this.inputFactory.DEVICE_ID_LABEL), deviceId)), this, this.gameInputStrings.KEY_PRESSED)
            local input = AllBinary.getInstanceById(this.inputFactory, keyCode)
            local gameKeyEvent = AllBinary.getInstanceForInput(this.gameKeyEventFactory, this.allBinaryGameCanvas, input)
            AllBinary.fireEventForGameKeyEvent(this.downKeyEventHandler, gameKeyEvent)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e)
        end
        nothing
end


function keyReleasedByDevice(this::FormInputProcessor, canvas, keyCode, deviceId)
        try
            local input = AllBinary.getInstanceById(this.inputFactory, keyCode)
            if AllBinary.isEnter(this.platformKeyFactory, input)
                AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.append(AllBinary.appendint(AllBinary.append(newStringMaker(), this.inputFactory.KEY_CODE_LABEL), keyCode), AllBinary.getInstance(CommonSeps).SPACE), this.inputFactory.DEVICE_ID_LABEL), deviceId)), this, this.gameInputStrings.KEY_RELEASED)
                local gameKey = AllBinary.getInstance(GameKeyFactory).KEY_NUM0
                local gameKeyEventSourceInterface = (canvas)
                local gameKeyEvent = AllBinary.getInstanceForInput(this.gameKeyEventFactory, gameKeyEventSourceInterface, gameKey)
                AllBinary.fireEvent(this.upGameKeyEventHandler, gameKeyEvent)
                AllBinary.fireEvent(AllBinary.getInstanceForDevice(this.upGameKeyEventHandler, deviceId), gameKeyEvent)
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e)
        end
        nothing
end

