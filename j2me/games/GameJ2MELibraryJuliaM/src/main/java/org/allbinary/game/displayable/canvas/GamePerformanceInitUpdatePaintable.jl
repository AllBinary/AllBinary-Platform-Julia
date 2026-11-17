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
mutable struct GamePerformanceInitUpdatePaintable <: JObject
    halfHeight::Int32
    yArray::Any
    myFontProcessor::Any
    baseRefreshHelperCharArray::Any
    defaultStringWidth::Int32
    RED::Int32
    GamePerformanceInitUpdatePaintable() = new()
end


function initFieldsGamePerformanceInitUpdatePaintable(this::GamePerformanceInitUpdatePaintable)
    this.halfHeight = Int32(0)
    this.yArray = nothing
    this.myFontProcessor = nothing
    this.baseRefreshHelperCharArray = nothing
    this.defaultStringWidth = Int32(0)
    this.RED = Int32(0)
    this.halfHeight = AllBinary.getLastHalfHeight(AllBinary.getInstance(DisplayInfoSingleton))
    this.yArray = Int32[this.halfHeight + Int32(30), this.halfHeight + Int32(30), this.halfHeight + Int32(30) + Int32(15), this.halfHeight + Int32(30) + Int32(15), this.halfHeight + Int32(30) + Int32(30), this.halfHeight + Int32(30) + Int32(30), this.halfHeight + Int32(30) + Int32(45), this.halfHeight + Int32(30) + Int32(45)]
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.baseRefreshHelperCharArray = jNewArrayOf(Vector{UInt16}, Int32(0), () -> jNewArray(UInt16, Int32(0), UInt16(0)))
    this.defaultStringWidth = Int32(0)
    this.RED = AllBinary.intValue(AllBinary.getInstance(BasicColorFactory).RED)
    nothing
end

function initGamePerformanceInitUpdatePaintable(this::GamePerformanceInitUpdatePaintable)
    initInitUpdatePaintable(this)
    initFieldsGamePerformanceInitUpdatePaintable(this)
end

function newGamePerformanceInitUpdatePaintable()
    this = GamePerformanceInitUpdatePaintable()
    initGamePerformanceInitUpdatePaintable(this)
    this
end


function updateMeasurement(this::GamePerformanceInitUpdatePaintable, graphics)
        local font = AllBinary.getFont(graphics)
        this.defaultStringWidth = AllBinary.defaultStringWidth(MyFontProcessor, font, Int32(2))
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function init(this::GamePerformanceInitUpdatePaintable)
        nothing
        nothing
end


function update(this::GamePerformanceInitUpdatePaintable)
        this.baseRefreshHelperCharArray = AllBinary.to2DCharArray(AllBinary.getInstance(GameStatisticsFactory))
        nothing
end


function paint(this::GamePerformanceInitUpdatePaintable, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.setColor(graphics, this.RED)
        local charArray = nothing
        local charArray2 = nothing
        local size2::Int32 = Int32(0)
        local size3::Int32 = Int32(0)
        local size::Int32 = Int32(Base.length(this.baseRefreshHelperCharArray)) - Int32(2)
        let
            local index::Int32 = size
            while index >= Int32(0)
            try
            charArray = this.baseRefreshHelperCharArray[index + 1]
            charArray2 = this.baseRefreshHelperCharArray[index + Int32(1) + 1]
            size2 = Int32(Base.length(charArray))
            size3 = Int32(Base.length(charArray2))
            AllBinary.drawChars(graphics, charArray, Int32(0), size2, Int32(0), this.yArray[index + 1], Int32(0))
            AllBinary.drawChars(graphics, charArray2, Int32(0), size3, size2 * this.defaultStringWidth, this.yArray[index + Int32(1) + 1], Int32(0))
            finally
                index -= Int32(2)
            end
            end
        end
        nothing
end

