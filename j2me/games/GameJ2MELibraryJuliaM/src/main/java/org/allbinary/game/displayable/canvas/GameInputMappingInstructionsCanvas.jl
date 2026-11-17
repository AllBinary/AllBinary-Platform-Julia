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
mutable struct GameInputMappingInstructionsCanvas <: JObject
    drawStringUtil::Any
    TITLE::Any
    instructions::Any
    colorFillPaintable::Any
    anchor::Int32
    GameInputMappingInstructionsCanvas() = new()
end

const GameInputMappingInstructionsCanvas_DISPLAYValue = Ref{Any}(nothing)
const GameInputMappingInstructionsCanvas_DISPLAYSet = Ref(false)
function staticGet_DISPLAY(::Type{GameInputMappingInstructionsCanvas})
    if !GameInputMappingInstructionsCanvas_DISPLAYSet[]
        GameInputMappingInstructionsCanvas_DISPLAYSet[] = true
        GameInputMappingInstructionsCanvas_DISPLAYValue[] = newCommand("Help", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    end
    GameInputMappingInstructionsCanvas_DISPLAYValue[]
end
function staticSet_DISPLAY(::Type{GameInputMappingInstructionsCanvas}, value)
    GameInputMappingInstructionsCanvas_DISPLAYSet[] = true
    GameInputMappingInstructionsCanvas_DISPLAYValue[] = value
end
const GameInputMappingInstructionsCanvas_CLOSEValue = Ref{Any}(nothing)
const GameInputMappingInstructionsCanvas_CLOSESet = Ref(false)
function staticGet_CLOSE(::Type{GameInputMappingInstructionsCanvas})
    if !GameInputMappingInstructionsCanvas_CLOSESet[]
        GameInputMappingInstructionsCanvas_CLOSESet[] = true
        GameInputMappingInstructionsCanvas_CLOSEValue[] = newCommand("Close", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    end
    GameInputMappingInstructionsCanvas_CLOSEValue[]
end
function staticSet_CLOSE(::Type{GameInputMappingInstructionsCanvas}, value)
    GameInputMappingInstructionsCanvas_CLOSESet[] = true
    GameInputMappingInstructionsCanvas_CLOSEValue[] = value
end
const GameInputMappingInstructionsCanvas_NAMEValue = Ref{Any}(nothing)
const GameInputMappingInstructionsCanvas_NAMESet = Ref(false)
function staticGet_NAME(::Type{GameInputMappingInstructionsCanvas})
    if !GameInputMappingInstructionsCanvas_NAMESet[]
        GameInputMappingInstructionsCanvas_NAMESet[] = true
        GameInputMappingInstructionsCanvas_NAMEValue[] = "GameInputMappingInstructionsCanvas"
    end
    GameInputMappingInstructionsCanvas_NAMEValue[]
end
function staticSet_NAME(::Type{GameInputMappingInstructionsCanvas}, value)
    GameInputMappingInstructionsCanvas_NAMESet[] = true
    GameInputMappingInstructionsCanvas_NAMEValue[] = value
end

function initFieldsGameInputMappingInstructionsCanvas(this::GameInputMappingInstructionsCanvas)
    this.drawStringUtil = nothing
    this.TITLE = nothing
    this.instructions = nothing
    this.colorFillPaintable = nothing
    this.anchor = Int32(0)
    this.drawStringUtil = AllBinary.getInstance(DrawStringUtil)
    this.TITLE = "Input Instructions"
    this.instructions = Any["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", AllBinary.getInstance(StringUtil).EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."]
    
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initGameInputMappingInstructionsCanvas(this::GameInputMappingInstructionsCanvas, commandListener, allBinaryGameLayerManager)
        initGameCommandCanvas(this, commandListener, staticGet_NAME(GameInputMappingInstructionsCanvas), AllBinary.getBackgroundBasicColor(allBinaryGameLayerManager), AllBinary.getForegroundBasicColor(allBinaryGameLayerManager))
        initFieldsGameInputMappingInstructionsCanvas(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.colorFillPaintable = AllBinary.getInstance(AllBinary.getInstance(ColorFillPaintableFactory), AllBinary.getBackgroundBasicColor(allBinaryGameLayerManager), false)
        nothing
end

function newGameInputMappingInstructionsCanvas(commandListener, allBinaryGameLayerManager)
    this = GameInputMappingInstructionsCanvas()
    initGameInputMappingInstructionsCanvas(this, commandListener, allBinaryGameLayerManager)
    this
end


function initCommands(this::GameInputMappingInstructionsCanvas, cmdListener)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommand(this, staticGet_CLOSE(GameInputMappingInstructionsCanvas))
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function paint(this::GameInputMappingInstructionsCanvas, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.paint(this.colorFillPaintable, graphics)
        local halfWidth::Int32 = AllBinary.getLastHalfWidth(this.displayInfo)
        local beginWidth::Int32 = (AllBinary.stringWidth(AllBinary.getFont(graphics), this.TITLE) >> Int32(1))
        AllBinary.setColor(graphics, this.foregroundColor)
        AllBinary.drawString(graphics, this.TITLE, halfWidth - beginWidth, this.fontHeight, this.anchor)
        AllBinary.drawCenterStrings(this.drawStringUtil, graphics, this.instructions, AllBinary.getLastWidth(this.displayInfo), this.fontHeight, halfWidth, Int32(3) * this.fontHeight)
        AllBinary.paint(this, graphics)
        nothing
end

