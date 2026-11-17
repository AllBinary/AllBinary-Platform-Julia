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
# package org.allbinary.graphics.paint

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SimpleTextPaintable <: JObject
    displayInfoSingleton::Any
    updateMyFontProcessor::Any
    myFontProcessor::Any
    text::Any
    basicColor::Any
    topScoresWidth::Int32
    fontHeight::Int32
    anchor::Int32
    SimpleTextPaintable() = new()
end


function initFieldsSimpleTextPaintable(this::SimpleTextPaintable)
    this.displayInfoSingleton = nothing
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.text = nothing
    this.basicColor = nothing
    this.topScoresWidth = Int32(0)
    this.fontHeight = Int32(0)
    this.anchor = Int32(0)
    this.displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    
    
    this.topScoresWidth = Int32(0)
    this.fontHeight = Int32(0)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initSimpleTextPaintable(this::SimpleTextPaintable, text, basicColor)
        initPaintable(this)
        initFieldsSimpleTextPaintable(this)
        this.text = text
        this.basicColor = basicColor
        nothing
end

function newSimpleTextPaintable(text, basicColor)
    this = SimpleTextPaintable()
    initSimpleTextPaintable(this, text, basicColor)
    this
end


function updateMeasurement(this::SimpleTextPaintable, graphics)
        local font = AllBinary.getFont(graphics)
        this.topScoresWidth = (AllBinary.stringWidth(font, this.text) >> Int32(1))
        this.fontHeight = AllBinary.getHeight(font)
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function paint(this::SimpleTextPaintable, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        local width::Int32 = AllBinary.getLast(this.displayInfoSingleton)[this.displayInfoSingleton.WIDTH + 1]
        AllBinary.setColor(graphics, AllBinary.intValue(AllBinary.getBasicColorP(this)))
        AllBinary.drawString(graphics, this.text, (width >> Int32(1)) - this.topScoresWidth, this.fontHeight, this.anchor)
        nothing
end


function setBasicColorP(this::SimpleTextPaintable, basicColor)
        this.basicColor = basicColor
        nothing
end


function getBasicColorP(this::SimpleTextPaintable)
        return this.basicColor
end


function setText(this::SimpleTextPaintable, text)
        this.text = text
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function getText(this::SimpleTextPaintable)
        return this.text
end

