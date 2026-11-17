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

# extends ProcessPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BufferedGameCanvasPaintHelper <: JObject
    gameCanvas::Any
    offScreenImage::Any
    previousImage::Any
    circularIndexUtil::Any
    drawCircularIndexUtil::Any
    anchor::Int32
    BufferedGameCanvasPaintHelper() = new()
end

const BufferedGameCanvasPaintHelper_MAX_IMAGESValue = Ref{Any}(nothing)
const BufferedGameCanvasPaintHelper_MAX_IMAGESSet = Ref(false)
function staticGet_MAX_IMAGES(::Type{BufferedGameCanvasPaintHelper})
    if !BufferedGameCanvasPaintHelper_MAX_IMAGESSet[]
        BufferedGameCanvasPaintHelper_MAX_IMAGESSet[] = true
        BufferedGameCanvasPaintHelper_MAX_IMAGESValue[] = Int32(4)
    end
    BufferedGameCanvasPaintHelper_MAX_IMAGESValue[]
end
function staticSet_MAX_IMAGES(::Type{BufferedGameCanvasPaintHelper}, value)
    BufferedGameCanvasPaintHelper_MAX_IMAGESSet[] = true
    BufferedGameCanvasPaintHelper_MAX_IMAGESValue[] = value
end

function initFieldsBufferedGameCanvasPaintHelper(this::BufferedGameCanvasPaintHelper)
    this.gameCanvas = nothing
    this.offScreenImage = nothing
    this.previousImage = nothing
    this.circularIndexUtil = nothing
    this.drawCircularIndexUtil = nothing
    this.anchor = Int32(0)
    this.gameCanvas = staticGet_NULL_CANVAS(NullCanvas)
    this.offScreenImage = jNewArray(Any, staticGet_MAX_IMAGES(BufferedGameCanvasPaintHelper), nothing)
    this.previousImage = staticGet_NULL_IMAGE(NullImage)
    this.circularIndexUtil = AllBinary.createInstance(CircularIndexUtil, staticGet_MAX_IMAGES(BufferedGameCanvasPaintHelper))
    this.drawCircularIndexUtil = AllBinary.createInstanceAt(CircularIndexUtil, staticGet_MAX_IMAGES(BufferedGameCanvasPaintHelper) - Int32(1), staticGet_MAX_IMAGES(BufferedGameCanvasPaintHelper))
    this.anchor = staticGet_TOP_LEFT(Anchor)
    nothing
end


function initBufferedGameCanvasPaintHelper(this::BufferedGameCanvasPaintHelper, gameCanvas)
        initProcessPaintable(this)
        initFieldsBufferedGameCanvasPaintHelper(this)
        throw(jNewException("Exception", "No Longer Used"))
        nothing
end

function newBufferedGameCanvasPaintHelper(gameCanvas)
    this = BufferedGameCanvasPaintHelper()
    initBufferedGameCanvasPaintHelper(this, gameCanvas)
    this
end


function process(this::BufferedGameCanvasPaintHelper)
        local myCanvas = ((this.gameCanvas))
        AllBinary.draw(myCanvas, AllBinary.getGraphics(this.offScreenImage[AllBinary.getIndex(this.circularIndexUtil) + 1]))
        AllBinary.next(this.circularIndexUtil)
        AllBinary.next(this.drawCircularIndexUtil)
        nothing
end


function paint(this::BufferedGameCanvasPaintHelper, graphics)
        this.previousImage = this.offScreenImage[AllBinary.getIndex(this.drawCircularIndexUtil) + 1]
        AllBinary.drawImage(graphics, this.previousImage, Int32(0), Int32(0), this.anchor)
        nothing
end

