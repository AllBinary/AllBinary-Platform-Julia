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
# package org.allbinary.graphics.draw

mutable struct CanvasDrawLineString <: JObject
    drawStringUtil::Any
    myFontProcessor::Any
    x::Int32
    y::Int32
    fontHeight::Int32
    CanvasDrawLineString() = new()
end

const CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGValue = Ref{Any}(nothing)
const CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGSet = Ref(false)
function staticGet_NULL_CANVAS_DRAW_LINE_STRING(::Type{CanvasDrawLineString})
    if !CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGSet[]
        CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGSet[] = true
        CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGValue[] = newCanvasDrawLineString(Int32(0), Int32(0))
    end
    CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGValue[]
end
function staticSet_NULL_CANVAS_DRAW_LINE_STRING(::Type{CanvasDrawLineString}, value)
    CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGSet[] = true
    CanvasDrawLineString_NULL_CANVAS_DRAW_LINE_STRINGValue[] = value
end

function initFieldsCanvasDrawLineString(this::CanvasDrawLineString)
    this.drawStringUtil = nothing
    this.myFontProcessor = nothing
    this.x = Int32(0)
    this.y = Int32(0)
    this.fontHeight = Int32(0)
    this.drawStringUtil = AllBinary.getInstance(DrawStringUtil)
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    
    
    this.fontHeight = Int32(0)
    nothing
end


function initCanvasDrawLineString(this::CanvasDrawLineString, x, y)
        initFieldsCanvasDrawLineString(this)
        this.x = x
        this.y = y
        nothing
end

function newCanvasDrawLineString(x, y)
    this = CanvasDrawLineString()
    initCanvasDrawLineString(this, x, y)
    this
end


function updateMeasurement(this::CanvasDrawLineString, graphics)
        local font = AllBinary.getFont(graphics)
        this.fontHeight = AllBinary.getHeight(font)
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function paint(this::CanvasDrawLineString, graphics, string, line)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.drawCenterString(this.drawStringUtil, graphics, string, Int32(0), jLength(string), this.x, this.y + (line * this.fontHeight))
        nothing
end

