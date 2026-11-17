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

# extends InitUpdatePaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct StartIntermissionPaintable <: JObject
    fontDebugFactory::Any
    basicSetColorUtil::Any
    gameCanvas::Any
    stringArray::Any
    fontSize::Int32
    font::Any
    lastWidth::Any
    updateMyFontProcessor::Any
    myFontProcessor::Any
    basicColor::Any
    color::Int32
    lineYOffsetArray::Any
    hasChanged::Bool
    anchor::Int32
    fontHeightP::Int32
    BEGIN_LEVEL::Any
    EMPTY_STRING::Any
    StartIntermissionPaintable() = new()
end


function initFieldsStartIntermissionPaintable(this::StartIntermissionPaintable)
    this.fontDebugFactory = nothing
    this.basicSetColorUtil = nothing
    this.gameCanvas = nothing
    this.stringArray = nothing
    this.fontSize = Int32(0)
    this.font = nothing
    this.lastWidth = nothing
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.basicColor = nothing
    this.color = Int32(0)
    this.lineYOffsetArray = nothing
    this.hasChanged = false
    this.anchor = Int32(0)
    this.fontHeightP = Int32(0)
    this.BEGIN_LEVEL = nothing
    this.EMPTY_STRING = nothing
    this.fontDebugFactory = AllBinary.getInstance(FontDebugFactory)
    this.basicSetColorUtil = AllBinary.getInstance(BasicColorSetUtil)
    
    
    
    
    
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.basicColor = AllBinary.getInstance(BasicColorFactory).BLACK
    
    this.lineYOffsetArray = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY
    this.hasChanged = true
    this.anchor = staticGet_TOP_LEFT(Anchor)
    this.fontHeightP = Int32(0)
    this.BEGIN_LEVEL = "Begin Level "
    this.EMPTY_STRING = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function initStartIntermissionPaintable(this::StartIntermissionPaintable, gameCanvas, stringArray, basicColor, font)
        initInitUpdatePaintable(this)
        initFieldsStartIntermissionPaintable(this)
        this.gameCanvas = gameCanvas
        this.stringArray = stringArray
        this.lastWidth = jNewArray(Int32, Int32(Base.length(this.stringArray)), Int32(0))
        AllBinary.setBasicColorP(this, basicColor)
        this.color = AllBinary.intValue(basicColor)
        this.fontSize = AllBinary.getSize(font)
        this.font = font
        nothing
end

function newStartIntermissionPaintable(gameCanvas, stringArray, basicColor, font)
    this = StartIntermissionPaintable()
    initStartIntermissionPaintable(this, gameCanvas, stringArray, basicColor, font)
    this
end


function updateMeasurement(this::StartIntermissionPaintable, graphics)
        local font = AllBinary.getFont(graphics)
        this.fontHeightP = AllBinary.getHeight(font)
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function paint(this::StartIntermissionPaintable, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        local existingFont = AllBinary.getFont(graphics)
        AllBinary.setFont(this.fontDebugFactory, this.font, graphics)
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, this.basicColor, this.color)
        local beginWidth::Int32 = Int32(0)
        let
            local index::Int32 = Int32(Base.length(this.lineYOffsetArray)) - Int32(1)
            while index >= Int32(0)
            try
            if this.hasChanged
                this.lastWidth[index + 1] = (AllBinary.stringWidth(AllBinary.getFont(graphics), this.stringArray[index + 1]) >> Int32(1))
            end
            beginWidth = this.lastWidth[index + 1]
            AllBinary.drawString(graphics, this.stringArray[index + 1], AllBinary.getLastHalfWidth(displayInfo) - beginWidth, AllBinary.getLastHalfHeight(displayInfo) - this.lineYOffsetArray[index + 1], this.anchor)
            finally
                index -= Int32(1)
            end
            end
        end
        this.hasChanged = false
        AllBinary.setFont(this.fontDebugFactory, existingFont, graphics)
        nothing
end


function update(this::StartIntermissionPaintable)
        local level::Int32 = AllBinary.getCurrentLevel(AllBinary.getGameInfo(AllBinary.getLayerManager(this.gameCanvas)))
        this.stringArray[Int32(0) + 1] = AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.BEGIN_LEVEL), level))
        let
            local index::Int32 = Int32(Base.length(this.stringArray)) - Int32(1)
            while index >= Int32(1)
            try
            this.stringArray[index + 1] = this.EMPTY_STRING
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function setBasicColorP(this::StartIntermissionPaintable, basicColor)
        this.basicColor = basicColor
        nothing
end


function getBasicColorP(this::StartIntermissionPaintable)
        return this.basicColor
end

