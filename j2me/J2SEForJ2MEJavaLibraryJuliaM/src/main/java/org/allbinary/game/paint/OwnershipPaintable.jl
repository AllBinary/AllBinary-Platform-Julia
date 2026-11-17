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
# package org.allbinary.game.paint

#J2SEForJ2ME
# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct OwnershipPaintable <: JObject
    logUtil::Any
    displayInfo::Any
    myFontProcessor::Any
    COPYRIGHT::Any
    basicColor::Any
    color::Int32
    anchor::Int32
    COPYRIGHT_Y::Int32
    beginWidth::Int32
    OwnershipPaintable() = new()
end


function initFieldsOwnershipPaintable(this::OwnershipPaintable)
    this.logUtil = nothing
    this.displayInfo = nothing
    this.myFontProcessor = nothing
    this.COPYRIGHT = nothing
    this.basicColor = nothing
    this.color = Int32(0)
    this.anchor = Int32(0)
    this.COPYRIGHT_Y = Int32(0)
    this.beginWidth = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.COPYRIGHT = "AllBinary Copyright (c) 2011"
    this.basicColor = AllBinary.getInstance(BasicColorFactory).WHITE
    this.color = AllBinary.intValue(this.basicColor)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    this.COPYRIGHT_Y = Int32(0)
    this.beginWidth = Int32(0)
    nothing
end


function getInstance(::Type{OwnershipPaintable})
        return newOwnershipPaintable()
end


function initOwnershipPaintable(this::OwnershipPaintable)
        initPaintable(this)
        initFieldsOwnershipPaintable(this)
        nothing
        nothing
end

function newOwnershipPaintable()
    this = OwnershipPaintable()
    initOwnershipPaintable(this)
    this
end


function updateMeasurement(this::OwnershipPaintable, graphics)
        local font = AllBinary.getFont(graphics)
        this.COPYRIGHT_Y = Int32(2) * AllBinary.getHeight(font)
        this.beginWidth = (AllBinary.stringWidth(font, this.COPYRIGHT) >> Int32(1))
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function setBasicColorP(this::OwnershipPaintable, basicColor)
        this.basicColor = basicColor
        this.color = AllBinary.intValue(basicColor)
        nothing
end


function getBasicColorP(this::OwnershipPaintable)
        return this.basicColor
end


function paint(this::OwnershipPaintable, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.setColor(graphics, this.color)
        local halfWidth::Int32 = AllBinary.getLastHalfWidth(this.displayInfo)
        local height::Int32 = AllBinary.getLastHeight(this.displayInfo)
        AllBinary.drawString(graphics, this.COPYRIGHT, halfWidth - this.beginWidth, height - this.COPYRIGHT_Y, this.anchor)
        nothing
end

