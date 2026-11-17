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
# package org.allbinary.input.motion.button

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TouchButton <: JObject
    logUtil::Any
    commonStrings::Any
    touchButtonInput::Any
    animationInterface::Any
    rawRectangle::Any
    xBorder::Int32
    yBorder::Int32
    rectangle::Any
    cellPosition::Any
    animationX::Int32
    animationY::Int32
    TouchButton() = new()
end


function initFieldsTouchButton(this::TouchButton)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.touchButtonInput = nothing
    this.animationInterface = nothing
    this.rawRectangle = nothing
    this.xBorder = Int32(0)
    this.yBorder = Int32(0)
    this.rectangle = nothing
    this.cellPosition = nothing
    this.animationX = Int32(0)
    this.animationY = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    
    
    
    this.rectangle = staticGet_SINGLETON(RectangleFactory)
    
    this.animationX = Int32(0)
    this.animationY = Int32(0)
    nothing
end


function initTouchButton(this::TouchButton, touchButtonInput, animationInterface, rawRectangle, cellPosition, xBorder, yBorder)
        initPaintable(this)
        initFieldsTouchButton(this)
        this.touchButtonInput = touchButtonInput
        this.animationInterface = (animationInterface)
        this.rawRectangle = rawRectangle
        this.cellPosition = cellPosition
        this.xBorder = xBorder
        this.yBorder = yBorder
        AllBinary.updateRectangle(this)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Created: "), AllBinary.toString(this))), this, this.commonStrings.CONSTRUCTOR)
        nothing
end

function newTouchButton(touchButtonInput, animationInterface, rawRectangle, cellPosition, xBorder, yBorder)
    this = TouchButton()
    initTouchButton(this, touchButtonInput, animationInterface, rawRectangle, cellPosition, xBorder, yBorder)
    this
end


function paint(this::TouchButton, graphics)
        AllBinary.paintXY(this.animationInterface, graphics, this.animationX, this.animationY)
        nothing
end


function updateRectangle(this::TouchButton)
        try
            local x::Int32 = AllBinary.getWidth(this.rawRectangle) * AllBinary.getColumn(this.cellPosition)
            local y::Int32 = AllBinary.getHeight(this.rawRectangle) * AllBinary.getRow(this.cellPosition)
            local pointFactory = AllBinary.getInstance(PointFactory)
            this.rectangle = newRectangle(AllBinary.createXY(pointFactory, x + this.xBorder, y + this.yBorder), AllBinary.getWidth(this.rawRectangle), AllBinary.getHeight(this.rawRectangle))
            local point = AllBinary.getPoint(this.rectangle)
            this.animationX = AllBinary.getX(point)
            this.animationY = AllBinary.getY(point)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "updateRectangle", e)
        end
        nothing
end


function getCellPositionP(this::TouchButton)
        return this.cellPosition
end


function getRectangleP(this::TouchButton)
        return this.rectangle
end


function getTouchButtonInput(this::TouchButton)
        return this.touchButtonInput
end


function toString(this::TouchButton)
        local stringBuffer = newStringMaker()
        local stringUtil = AllBinary.getInstance(StringUtil)
        AllBinary.append(stringBuffer, "TouchButton: ")
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, this.rectangle))
        AllBinary.append(stringBuffer, " CellPosition: ")
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, this.cellPosition))
        AllBinary.append(stringBuffer, " xBorder: ")
        AllBinary.appendint(stringBuffer, this.xBorder)
        AllBinary.append(stringBuffer, " yBorder: ")
        AllBinary.appendint(stringBuffer, this.yBorder)
        return AllBinary.toString(stringBuffer)
end

