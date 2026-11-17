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

# extends GameCommandCanvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameInputMappingCanvas <: JObject
    paintable::Any
    helpPaintable::Any
    colorFillPaintable::Any
    inputMapping::Any
    NONE::Any
    abeClientInformation::Any
    selectedGameKey::Any
    selectedInput::Any
    inputFactory::Any
    GameInputMappingCanvas() = new()
end

const GameInputMappingCanvas_NAMEValue = Ref{Any}(nothing)
const GameInputMappingCanvas_NAMESet = Ref(false)
function staticGet_NAME(::Type{GameInputMappingCanvas})
    if !GameInputMappingCanvas_NAMESet[]
        GameInputMappingCanvas_NAMESet[] = true
        GameInputMappingCanvas_NAMEValue[] = "GameInputMappingCanvas"
    end
    GameInputMappingCanvas_NAMEValue[]
end
function staticSet_NAME(::Type{GameInputMappingCanvas}, value)
    GameInputMappingCanvas_NAMESet[] = true
    GameInputMappingCanvas_NAMEValue[] = value
end
const GameInputMappingCanvas_DISPLAYValue = Ref{Any}(nothing)
const GameInputMappingCanvas_DISPLAYSet = Ref(false)
function staticGet_DISPLAY(::Type{GameInputMappingCanvas})
    if !GameInputMappingCanvas_DISPLAYSet[]
        GameInputMappingCanvas_DISPLAYSet[] = true
        GameInputMappingCanvas_DISPLAYValue[] = newCommand("Controls", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(2))
    end
    GameInputMappingCanvas_DISPLAYValue[]
end
function staticSet_DISPLAY(::Type{GameInputMappingCanvas}, value)
    GameInputMappingCanvas_DISPLAYSet[] = true
    GameInputMappingCanvas_DISPLAYValue[] = value
end
const GameInputMappingCanvas_DEFAULTValue = Ref{Any}(nothing)
const GameInputMappingCanvas_DEFAULTSet = Ref(false)
function staticGet_DEFAULT(::Type{GameInputMappingCanvas})
    if !GameInputMappingCanvas_DEFAULTSet[]
        GameInputMappingCanvas_DEFAULTSet[] = true
        GameInputMappingCanvas_DEFAULTValue[] = newCommand("Default", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(2))
    end
    GameInputMappingCanvas_DEFAULTValue[]
end
function staticSet_DEFAULT(::Type{GameInputMappingCanvas}, value)
    GameInputMappingCanvas_DEFAULTSet[] = true
    GameInputMappingCanvas_DEFAULTValue[] = value
end

function initFieldsGameInputMappingCanvas(this::GameInputMappingCanvas)
    this.paintable = nothing
    this.helpPaintable = nothing
    this.colorFillPaintable = nothing
    this.inputMapping = nothing
    this.NONE = nothing
    this.abeClientInformation = nothing
    this.selectedGameKey = nothing
    this.selectedInput = nothing
    this.inputFactory = nothing
    
    
    
    
    this.NONE = AllBinary.getInstance(GameKeyFactory).NONE
    
    this.selectedGameKey = this.NONE
    this.selectedInput = this.NONE
    this.inputFactory = AllBinary.getInstance(InputFactory)
    nothing
end


function initGameInputMappingCanvas(this::GameInputMappingCanvas, abeClientInformation, commandListener, allBinaryGameLayerManager, helpPaintable)
        initGameCommandCanvas(this, commandListener, staticGet_NAME(GameInputMappingCanvas), AllBinary.getBackgroundBasicColor(allBinaryGameLayerManager), AllBinary.getForegroundBasicColor(allBinaryGameLayerManager))
        initFieldsGameInputMappingCanvas(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        if helpPaintable === nothing
            throw(jNewException("Exception", "Help Paintable Exception"))
        end
        this.abeClientInformation = abeClientInformation
        this.helpPaintable = (helpPaintable)
        this.inputMapping = AllBinary.getPersistentInputMappingInstance(AllBinary.getInstance(PlatformInputMappingFactory))
        this.paintable = newProcessPaintable()
        this.colorFillPaintable = AllBinary.getInstance(AllBinary.getInstance(ColorFillPaintableFactory), AllBinary.getBackgroundBasicColor(allBinaryGameLayerManager), false)
        nothing
end

function newGameInputMappingCanvas(abeClientInformation, commandListener, allBinaryGameLayerManager, helpPaintable)
    this = GameInputMappingCanvas()
    initGameInputMappingCanvas(this, abeClientInformation, commandListener, allBinaryGameLayerManager, helpPaintable)
    this
end


function close(this::GameInputMappingCanvas)
        AllBinary.close(this)
        AllBinary.process(this.paintable)
        this.selectedGameKey = this.NONE
        this.selectedInput = this.NONE
        AllBinary.update(this)
        nothing
end


function initCommands(this::GameInputMappingCanvas, cmdListener)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommand(this, AllBinary.getInstance(GameCommandsFactory).CLOSE_AND_SHOW_GAME_CANVAS)
        AllBinary.addCommand(this, staticGet_DEFAULT(GameInputMappingCanvas))
        AllBinary.addCommand(this, staticGet_DISPLAY(GameInputMappingInstructionsCanvas))
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function keyPressed(this::GameInputMappingCanvas, keyCode)
        AllBinary.keyPressedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyReleased(this::GameInputMappingCanvas, keyCode)
        AllBinary.keyReleasedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyRepeated(this::GameInputMappingCanvas, keyCode)
        AllBinary.keyRepeatedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyPressedByDevice(this::GameInputMappingCanvas, keyCode, deviceId)
        AllBinary.addGameKey(this, keyCode, false)
        AllBinary.keyPressedByDevice(this, keyCode, Int32(0))
        nothing
end


function addGameKey(this::GameInputMappingCanvas, keyCode, repeated)
        try
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Raw Device Key Code: "), AllBinary.toHexString(Integer, keyCode))), this, this.gameInputStrings.ADD_KEY_EVENT)
            local gameKey = AllBinary.getInstanceForCanvas(this.inputToGameKeyMapping, this, keyCode)
            local input = AllBinary.getInstanceById(this.inputFactory, keyCode)
            AllBinary.processInputMapping(this, gameKey, input)
        catch e
            AllBinary.put(this.logUtil, "Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)
        end
        nothing
end


function processInputMapping(this::GameInputMappingCanvas, gameKey, input)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Start Passed GameKey: ")
        AllBinary.append(stringBuffer, AllBinary.toString(this.stringUtil, gameKey))
        AllBinary.append(stringBuffer, " Input: ")
        AllBinary.append(stringBuffer, AllBinary.toString(this.stringUtil, input))
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, this.commonStrings.PROCESS)
        if this.selectedGameKey !== this.NONE
            AllBinary.gameActionCrud(this, gameKey, input)
        else
            AllBinary.setSelectedAction(this, gameKey)
        end
        nothing
end


function setSelectedAction(this::GameInputMappingCanvas, gameKey)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Selected GameKey: "), AllBinary.toString(this.stringUtil, gameKey))), this, "setSelectedAction")
        this.selectedGameKey = gameKey
        this.selectedInput = this.NONE
        AllBinary.update(this.helpPaintable, this.selectedGameKey, this.selectedInput)
        AllBinary.onChangeRepaint(this.repaintBehavior, this)
        nothing
end


function gameActionCrud(this::GameInputMappingCanvas, gameKey, input)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Start GameKey: ")
        AllBinary.append(stringBuffer, AllBinary.toString(this.stringUtil, this.selectedGameKey))
        AllBinary.append(stringBuffer, " Input: ")
        AllBinary.append(stringBuffer, AllBinary.toString(this.stringUtil, this.selectedInput))
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, "gameActionCrud")
        if this.selectedInput === this.NONE
            local list = AllBinary.getMappedInput(AllBinary.getInputMapping(this.inputMapping), this.selectedGameKey)
            local isInputAlreadyMappedToSelectedAction::Bool = AllBinary.contains(list, input)
            if isInputAlreadyMappedToSelectedAction
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Already Mapped Input: "), AllBinary.toString(this.stringUtil, input))), this, "gameActionCrud")
                this.selectedInput = input
                AllBinary.update(this.helpPaintable, this.selectedGameKey, this.selectedInput)
                AllBinary.onChangeRepaint(this.repaintBehavior, this)
            else
                AllBinary.addNewMapping(this, gameKey, input)
            end
        elseif AllBinary.isDelete(this.inputMapping, input)
            AllBinary.deleteCurrentMapping(this)
        else
            AllBinary.setSelectedAction(this, gameKey)
        end
        nothing
end


function addNewMapping(this::GameInputMappingCanvas, gameKey, input)
        local METHOD_NAME = "addNewMapping"
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, METHOD_NAME)
        local isInputAlreadyMapped::Bool = AllBinary.isMapped(AllBinary.getInputMapping(this.inputMapping), input)
        if !isInputAlreadyMapped && !AllBinary.isSystemInput(this.inputMapping, input)
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, "Add Key Mapping : GameKey: ")
            AllBinary.append(stringBuffer, AllBinary.toString(this.stringUtil, this.selectedGameKey))
            AllBinary.append(stringBuffer, " Input: ")
            AllBinary.append(stringBuffer, AllBinary.toString(this.stringUtil, this.selectedInput))
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, METHOD_NAME)
            AllBinary.add(AllBinary.getInputMapping(this.inputMapping), this.selectedGameKey, input)
            this.selectedInput = input
            AllBinary.update(this)
        else
            AllBinary.putF(this.logUtil, "Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", this, METHOD_NAME)
            AllBinary.setSelectedAction(this, gameKey)
        end
        nothing
end


function deleteCurrentMapping(this::GameInputMappingCanvas)
        local METHOD_NAME = "deleteCurrentMapping"
        local list = AllBinary.getMappedInput(AllBinary.getInputMapping(this.inputMapping), this.selectedGameKey)
        if AllBinary.size(list) > Int32(1)
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, "Start GameKey: ")
            AllBinary.append(stringBuffer, "Remove Key Mapping: GameKey: ")
            AllBinary.append(stringBuffer, AllBinary.toString(this.stringUtil, this.selectedGameKey))
            AllBinary.append(stringBuffer, " Input: ")
            AllBinary.append(stringBuffer, AllBinary.toString(this.stringUtil, this.selectedInput))
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, METHOD_NAME)
            AllBinary.remove(AllBinary.getInputMapping(this.inputMapping), this.selectedGameKey, this.selectedInput)
            this.selectedInput = this.NONE
            AllBinary.update(this)
        else
            AllBinary.putF(this.logUtil, "Can't Remove Last Key Mapping", this, METHOD_NAME)
        end
        nothing
end


function setDefault(this::GameInputMappingCanvas)
        AllBinary.setDefault(this.inputMapping, this.abeClientInformation)
        AllBinary.update(this.helpPaintable, this.NONE, this.NONE)
        AllBinary.onChangeRepaint(this.repaintBehavior, this)
        nothing
end


function update(this::GameInputMappingCanvas)
        AllBinary.update(this.inputMapping, this.abeClientInformation)
        AllBinary.update(this.helpPaintable, this.selectedGameKey, this.selectedInput)
        AllBinary.onChangeRepaint(this.repaintBehavior, this)
        nothing
end


function paint(this::GameInputMappingCanvas, graphics)
        AllBinary.paint(this.colorFillPaintable, graphics)
        AllBinary.paint(this.helpPaintable, graphics)
        AllBinary.paint(this.paintable, graphics)
        AllBinary.paint(this, graphics)
        nothing
end

