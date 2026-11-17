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

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PressStartMenuPaintable <: JObject
    displayInfo::Any
    PRESS_START::Any
    KEY_START::Any
    MENU_START::Any
    myFontProcessor::Any
    startString::Any
    timeDelayHelper::Any
    flash::Bool
    anchor::Int32
    beginWidth::Int32
    line::Int32
    PressStartMenuPaintable() = new()
end


function initFieldsPressStartMenuPaintable(this::PressStartMenuPaintable)
    this.displayInfo = nothing
    this.PRESS_START = nothing
    this.KEY_START = nothing
    this.MENU_START = nothing
    this.myFontProcessor = nothing
    this.startString = nothing
    this.timeDelayHelper = nothing
    this.flash = false
    this.anchor = Int32(0)
    this.beginWidth = Int32(0)
    this.line = Int32(0)
    this.displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
    this.PRESS_START = "Press Screen To Start"
    this.KEY_START = "Press or Click F2 To Begin"
    this.MENU_START = "Press Start From The Menu To Begin"
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.startString = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.timeDelayHelper = newTimeDelayHelper(Int32(1100))
    this.flash = false
    this.anchor = staticGet_TOP_LEFT(Anchor)
    this.beginWidth = Int32(0)
    this.line = Int32(0)
    nothing
end


function initPressStartMenuPaintable(this::PressStartMenuPaintable)
        initPaintable(this)
        initFieldsPressStartMenuPaintable(this)
        if AllBinary.isTouch(AllBinary.getInstance(TouchScreenFactory))
            this.startString = this.PRESS_START
        elseif AllBinary.isAppletLoader(AppletUtil, this)
            this.startString = this.KEY_START
        else
            this.startString = this.MENU_START
        end
        nothing
end

function newPressStartMenuPaintable()
    this = PressStartMenuPaintable()
    initPressStartMenuPaintable(this)
    this
end


function updateMeasurement(this::PressStartMenuPaintable, graphics)
        local font = AllBinary.getFont(graphics)
        this.beginWidth = (AllBinary.stringWidth(AllBinary.getFont(graphics), this.startString) >> Int32(1))
        this.line = (Int32(4) * AllBinary.defaultCharWidth(MyFontProcessor, font)) + (AllBinary.getHeight(font) >> Int32(1))
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function paint(this::PressStartMenuPaintable, graphics)
        if AllBinary.isTimeTNT(this.timeDelayHelper)
            if AllBinary.isFlash(this)
                AllBinary.setFlash(this, false)
            else
                AllBinary.setFlash(this, true)
            end
        end
        if AllBinary.isFlash(this)
            AllBinary.process(this.myFontProcessor, graphics)
            AllBinary.drawString(graphics, this.startString, AllBinary.getLastHalfWidth(this.displayInfo) - this.beginWidth, AllBinary.getLastHeight(this.displayInfo) - this.line, this.anchor)
        end
        nothing
end


function setFlash(this::PressStartMenuPaintable, flash)
        this.flash = flash
        nothing
end


function isFlash(this::PressStartMenuPaintable)
        return this.flash
end

