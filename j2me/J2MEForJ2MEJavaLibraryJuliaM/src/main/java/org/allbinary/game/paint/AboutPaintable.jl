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

#J2MEForJ2ME
# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AboutPaintable <: JObject
    displayInfoSingleton::Any
    ABOUT::Any
    info::Any
    developers::Any
    paintableArray::Any
    myFontProcessor::Any
    charHeight::Int32
    aboutBeginWidth::Int32
    infoBeginWidth::Any
    developersBeginWidth::Any
    anchor::Int32
    AboutPaintable() = new()
end


function initFieldsAboutPaintable(this::AboutPaintable)
    this.displayInfoSingleton = nothing
    this.ABOUT = nothing
    this.info = nothing
    this.developers = nothing
    this.paintableArray = nothing
    this.myFontProcessor = nothing
    this.charHeight = Int32(0)
    this.aboutBeginWidth = Int32(0)
    this.infoBeginWidth = nothing
    this.developersBeginWidth = nothing
    this.anchor = Int32(0)
    this.displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
    this.ABOUT = AllBinary.getInstance(CanvasStrings).ABOUT
    
    
    this.paintableArray = Any[this]
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.charHeight = Int32(0)
    this.aboutBeginWidth = Int32(0)
    
    
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function getInstance(::Type{AboutPaintable}, info, developers)
        return newAboutPaintable(info, developers)
end


function initAboutPaintable(this::AboutPaintable, info, developers)
        initPaintable(this)
        initFieldsAboutPaintable(this)
        this.info = info
        this.infoBeginWidth = jNewArray(Int32, Int32(Base.length(this.info)), Int32(0))
        this.developers = developers
        this.developersBeginWidth = jNewArray(Int32, Int32(Base.length(this.developers)), Int32(0))
        nothing
end

function newAboutPaintable(info, developers)
    this = AboutPaintable()
    initAboutPaintable(this, info, developers)
    this
end


function updateMeasurement(this::AboutPaintable, graphics)
        local font = AllBinary.getFont(graphics)
        this.charHeight = AllBinary.getHeight(font)
        this.aboutBeginWidth = (AllBinary.stringWidth(font, this.ABOUT) >> Int32(1))
        local infoSize::Int32 = Int32(Base.length(this.info))
        let
            local index::Int32 = Int32(0)
            while index < infoSize
            try
            this.infoBeginWidth[index + 1] = (AllBinary.stringWidth(font, this.info[index + 1]) >> Int32(1))
            finally
                index += Int32(1)
            end
            end
        end
        local size::Int32 = Int32(Base.length(this.developers))
        let
            index = Int32(0)
            while index < size
            try
            this.developersBeginWidth[index + 1] = (AllBinary.stringWidth(font, this.developers[index + 1]) >> Int32(1))
            finally
                index += Int32(1)
            end
            end
        end
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function getPaintableArrayInstance(this::AboutPaintable)
        return this.paintableArray
end


function paint(this::AboutPaintable, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        local halfWidth::Int32 = AllBinary.getLastHalfWidth(this.displayInfoSingleton)
        AllBinary.drawString(graphics, this.ABOUT, halfWidth - this.aboutBeginWidth, Int32(2) * this.charHeight, this.anchor)
        local infoSize::Int32 = Int32(Base.length(this.info))
        let
            local index::Int32 = Int32(0)
            while index < infoSize
            try
            AllBinary.drawString(graphics, this.info[index + 1], halfWidth - this.infoBeginWidth[index + 1], (Int32(4) + index) * this.charHeight, this.anchor)
            finally
                index += Int32(1)
            end
            end
        end
        local size::Int32 = Int32(Base.length(this.developers))
        let
            index = Int32(0)
            while index < size
            try
            AllBinary.drawString(graphics, this.developers[index + 1], halfWidth - this.developersBeginWidth[index + 1], (Int32(5) + infoSize + index) * this.charHeight, this.anchor)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

