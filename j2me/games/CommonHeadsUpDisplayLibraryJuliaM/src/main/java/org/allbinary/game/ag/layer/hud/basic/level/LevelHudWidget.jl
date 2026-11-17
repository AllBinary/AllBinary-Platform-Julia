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
# package org.allbinary.game.ag.layer.hud.basic.level

# extends BasicHud: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LevelHudWidget <: JObject
    level::Int32
    maxlevel::Int32
    levelString::Any
    levelNumberCharArray::Any
    levelNumberTotalDigits::Int32
    offset::Int32
    primitiveLongUtil::Any
    LevelHudWidget() = new()
end


function initFieldsLevelHudWidget(this::LevelHudWidget)
    this.level = Int32(0)
    this.maxlevel = Int32(0)
    this.levelString = nothing
    this.levelNumberCharArray = nothing
    this.levelNumberTotalDigits = Int32(0)
    this.offset = Int32(0)
    this.primitiveLongUtil = nothing
    
    
    
    this.levelNumberCharArray = AllBinary.getInstance(NullUtil).NULL_CHAR_ARRAY
    this.levelNumberTotalDigits = Int32(0)
    this.offset = Int32(0)
    
    nothing
end


function createHud(::Type{LevelHudWidget}, maxlevel, location, direction)
        return newLevelHudWidget(maxlevel, location, direction)
end


function initLevelHudWidget(this::LevelHudWidget, maxlevel, location, direction)
        initBasicHud(this, location, direction, Int32(2), AllBinary.getInstance(BasicColorFactory).GREY)
        initFieldsLevelHudWidget(this)
        this.primitiveLongUtil = AllBinary.createPowerOfTen(PrimitiveLongUtil, Int32(1000))
        local LEVEL = "Lv "
        this.levelString = jToCharArray(LEVEL)
        this.maxlevel = maxlevel
        this.level = maxlevel
        AllBinary.update(this)
        this.updateMaxHeight = Int32(14)
        nothing
end

function newLevelHudWidget(maxlevel, location, direction)
    this = LevelHudWidget()
    initLevelHudWidget(this, maxlevel, location, direction)
    this
end


function updateMeasurement(this::LevelHudWidget, graphics)
        local font = AllBinary.getFont(graphics)
        this.updateMaxWidth = AllBinary.getSize(font) * Int32(4)
        this.offset = AllBinary.charsWidth(font, this.levelString, Int32(0), Int32(Base.length(this.levelString))) + AllBinary.getSize(font)
        AllBinary.updateMeasurement(this, graphics)
        nothing
end


function update(this::LevelHudWidget)
        this.levelNumberCharArray = AllBinary.getCharArray(this.primitiveLongUtil, this.level)
        this.levelNumberTotalDigits = AllBinary.getCurrentTotalDigits(this.primitiveLongUtil)
        nothing
end


function setLevel(this::LevelHudWidget, level)
        this.level = level
        AllBinary.update(this)
        nothing
end


function nextLevel(this::LevelHudWidget)
        this.level += Int32(1)
        AllBinary.update(this)
        nothing
end


function previousLevel(this::LevelHudWidget)
        this.level -= Int32(1)
        if this.level < Int32(0)
            this.level = Int32(0)
        end
        AllBinary.update(this)
        nothing
end


function isComplete(this::LevelHudWidget)
        if this.level <= this.maxlevel
            return false
        else
            return true
        end
end


function paint(this::LevelHudWidget, graphics)
        AllBinary.paintDX(this, graphics, this.levelString, Int32(0), Int32(Base.length(this.levelString)), this.levelNumberCharArray, Int32(0), this.levelNumberTotalDigits, this.offset)
        nothing
end


function paintThreed(this::LevelHudWidget, graphics)
        nothing
        nothing
end

