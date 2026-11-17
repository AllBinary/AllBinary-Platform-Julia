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
# package org.allbinary.game.paint.help

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HelpPaintable <: JObject
    displayInfo::Any
    updateMyFontProcessor::Any
    myFontProcessor::Any
    anchor::Int32
    title::Any
    inputInfo::Any
    basicColor::Any
    titleBeginWidth::Int32
    beginWidthArray::Any
    charHeight::Int32
    HelpPaintable() = new()
end


function initFieldsHelpPaintable(this::HelpPaintable)
    this.displayInfo = nothing
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.anchor = Int32(0)
    this.title = nothing
    this.inputInfo = nothing
    this.basicColor = nothing
    this.titleBeginWidth = Int32(0)
    this.beginWidthArray = nothing
    this.charHeight = Int32(0)
    this.displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.anchor = staticGet_TOP_LEFT(Anchor)
    
    this.inputInfo = AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil))
    
    this.titleBeginWidth = Int32(0)
    this.beginWidthArray = AllBinary.getInstance(NullUtil).NULL_INT_ARRAY
    this.charHeight = Int32(0)
    nothing
end


function initHelpPaintable(this::HelpPaintable, title, backgroundBasicColor, basicColor)
        initPaintable(this)
        initFieldsHelpPaintable(this)
        this.title = title
        this.basicColor = basicColor
        nothing
end

function newHelpPaintable(title, backgroundBasicColor, basicColor)
    this = HelpPaintable()
    initHelpPaintable(this, title, backgroundBasicColor, basicColor)
    this
end


function updateMeasurement(this::HelpPaintable, graphics)
        local font = AllBinary.getFont(graphics)
        this.titleBeginWidth = (AllBinary.stringWidth(font, this.title) >> Int32(1))
        this.charHeight = AllBinary.getHeight(font)
        local size::Int32 = Int32(Base.length(this.inputInfo))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            this.beginWidthArray[index + 1] = (AllBinary.stringWidth(font, this.inputInfo[index + 1]) >> Int32(1))
            finally
                index += Int32(1)
            end
            end
        end
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function setInputInfoP(this::HelpPaintable, inputInfo)
        this.inputInfo = inputInfo
        this.beginWidthArray = jNewArray(Int32, Int32(Base.length(this.inputInfo)), Int32(0))
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function paint(this::HelpPaintable, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        local halfWidth::Int32 = AllBinary.getLastHalfWidth(this.displayInfo)
        AllBinary.setColor(graphics, AllBinary.intValue(this.basicColor))
        AllBinary.drawString(graphics, this.title, halfWidth - this.titleBeginWidth, this.charHeight, this.anchor)
        local size::Int32 = Int32(Base.length(this.inputInfo))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.drawString(graphics, this.inputInfo[index + 1], halfWidth - this.beginWidthArray[index + 1], (index + Int32(3)) * this.charHeight, this.anchor)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

