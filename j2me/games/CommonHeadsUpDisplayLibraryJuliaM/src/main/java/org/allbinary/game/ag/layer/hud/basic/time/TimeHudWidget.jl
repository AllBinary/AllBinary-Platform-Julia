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
# package org.allbinary.game.ag.layer.hud.basic.time

# extends BasicHud: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TimeHudWidget <: JObject
    TIME_STRING::Any
    TIME_CHAR_ARRAY::Any
    offset::Int32
    string::Any
    totalDigits::Int32
    timer::Any
    TimeHudWidget() = new()
end


function initFieldsTimeHudWidget(this::TimeHudWidget)
    this.TIME_STRING = nothing
    this.TIME_CHAR_ARRAY = nothing
    this.offset = Int32(0)
    this.string = nothing
    this.totalDigits = Int32(0)
    this.timer = nothing
    this.TIME_STRING = "Time "
    this.TIME_CHAR_ARRAY = UInt16[UInt16('T'), UInt16('i'), UInt16('m'), UInt16('e'), UInt16(' ')]
    this.offset = Int32(0)
    this.string = AllBinary.getInstance(PrimitiveLongSingleton).ZERO
    this.totalDigits = Int32(1)
    
    nothing
end


function getInstance(::Type{TimeHudWidget}, location, direction, basicColor, timer)
        return newTimeHudWidget(location, direction, Int32(2), basicColor, timer)
end


function initTimeHudWidget(this::TimeHudWidget, location, direction, bufferZone, basicColor, timer)
        initBasicHud(this, location, direction, bufferZone, basicColor)
        initFieldsTimeHudWidget(this)
        this.timer = timer
        AllBinary.set(this)
        this.updateMaxHeight = Int32(14)
        nothing
end

function newTimeHudWidget(location, direction, bufferZone, basicColor, timer)
    this = TimeHudWidget()
    initTimeHudWidget(this, location, direction, bufferZone, basicColor, timer)
    this
end


function updateMeasurement(this::TimeHudWidget, graphics)
        local font = AllBinary.getFont(graphics)
        this.updateMaxWidth = AllBinary.getSize(font) * Int32(5)
        this.offset = AllBinary.stringWidth(font, this.TIME_STRING) + AllBinary.defaultStringWidth(MyFontProcessor, font, Int32(3))
        AllBinary.updateMeasurement(this, graphics)
        nothing
end


function update(this::TimeHudWidget)
        AllBinary.update(this.timer)
        AllBinary.set(this)
        nothing
end


function set(this::TimeHudWidget)
        this.string = AllBinary.getTimeChars(this.timer)
        this.totalDigits = AllBinary.getCurrentTotalDigits(this.timer)
        nothing
end


function getTimer(this::TimeHudWidget)
        return this.timer
end


function paint(this::TimeHudWidget, graphics)
        AllBinary.paintDX(this, graphics, this.TIME_CHAR_ARRAY, Int32(0), Int32(Base.length(this.TIME_CHAR_ARRAY)), this.string, Int32(0), this.totalDigits, this.offset)
        nothing
end

