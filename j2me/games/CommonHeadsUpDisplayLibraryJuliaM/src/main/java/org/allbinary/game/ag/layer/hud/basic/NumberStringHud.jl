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
# package org.allbinary.game.ag.layer.hud.basic

# extends BasicHud: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NumberStringHud <: JObject
    primitiveLongUtil::Any
    prependString::Any
    PREPEND_STRING::Any
    value::Int32
    max::Int32
    offset::Int32
    valueString::Any
    valueTotalDigits::Int32
    NumberStringHud() = new()
end


function initFieldsNumberStringHud(this::NumberStringHud)
    this.primitiveLongUtil = nothing
    this.prependString = nothing
    this.PREPEND_STRING = nothing
    this.value = Int32(0)
    this.max = Int32(0)
    this.offset = Int32(0)
    this.valueString = nothing
    this.valueTotalDigits = Int32(0)
    
    
    
    
    
    this.offset = Int32(0)
    
    this.valueTotalDigits = Int32(0)
    nothing
end


function initNumberStringHud(this::NumberStringHud, prependString, max, location, direction, bufferZone, basicColor)
        initBasicHud(this, location, direction, bufferZone, basicColor)
        initFieldsNumberStringHud(this)
        this.prependString = prependString
        this.PREPEND_STRING = jToCharArray(prependString)
        this.valueString = AllBinary.getInstance(PrimitiveLongSingleton).NUMBER_CHAR_ARRAYS[Int32(0) + 1]
        this.primitiveLongUtil = AllBinary.createPowerOfTen(PrimitiveLongUtil, max + Int32(1))
        this.max = max
        this.value = Int32(0)
        if direction == Int32(0)
            throw(jNewException("RuntimeException", AllBinary.getInstance(BasicHudFactory).DIRECTION_EXCEPTION))
        end
        nothing
end

function newNumberStringHud(prependString, max, location, direction, bufferZone, basicColor)
    this = NumberStringHud()
    initNumberStringHud(this, prependString, max, location, direction, bufferZone, basicColor)
    this
end


function updateMeasurement(this::NumberStringHud, graphics)
        local font = AllBinary.getFont(graphics)
        this.offset = AllBinary.stringWidth(font, this.prependString) + AllBinary.defaultCharWidth(MyFontProcessor, font)
        AllBinary.updateMeasurement(this, graphics)
        nothing
end


function get(this::NumberStringHud)
        return this.value
end


function add(this::NumberStringHud, value)
        AllBinary.set(this, this.value + value)
        nothing
end


function set(this::NumberStringHud, value)
        this.value = value
        if this.value > this.max
            this.value = Int32(0)
        end
        this.valueString = AllBinary.getCharArray(this.primitiveLongUtil, this.value)
        this.valueTotalDigits = AllBinary.getCurrentTotalDigits(this.primitiveLongUtil)
        nothing
end


function reduce(this::NumberStringHud, value)
        AllBinary.set(this, this.value - value)
        nothing
end


function paint(this::NumberStringHud, graphics)
        AllBinary.paintDX(this, graphics, this.PREPEND_STRING, Int32(0), Int32(Base.length(this.PREPEND_STRING)), this.valueString, Int32(0), this.valueTotalDigits, this.offset)
        nothing
end


function paintXY(this::NumberStringHud, graphics, x, y)
        AllBinary.process(this.myFontProcessor, graphics)
        local charArray = this.PREPEND_STRING
        local len::Int32 = Int32(Base.length(this.PREPEND_STRING))
        local charArray2 = this.valueString
        local len2::Int32 = this.valueTotalDigits
        AllBinary.setBasicColorP(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this))
        AllBinary.drawChars(graphics, charArray, Int32(0), len, x, y, Int32(0))
        AllBinary.drawChars(graphics, charArray2, Int32(0), len2, x - this.offset, y, Int32(0))
        nothing
end


function paintThreed(this::NumberStringHud, graphics)
        nothing
        nothing
end

