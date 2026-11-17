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
    hintAnimationInterface::Any
    rawRectangle::Any
    xBorder::Int32
    yBorder::Int32
    rectangleP::Any
    cellPositionP::Any
    animationX::Int32
    animationY::Int32
    hintAnimationY::Int32
    TouchButton() = new()
end


function initFieldsTouchButton(this::TouchButton)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.touchButtonInput = nothing
    this.animationInterface = nothing
    this.hintAnimationInterface = nothing
    this.rawRectangle = nothing
    this.xBorder = Int32(0)
    this.yBorder = Int32(0)
    this.rectangleP = nothing
    this.cellPositionP = nothing
    this.animationX = Int32(0)
    this.animationY = Int32(0)
    this.hintAnimationY = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    
    
    
    
    this.rectangleP = staticGet_SINGLETON(RectangleFactory)
    
    this.animationX = Int32(0)
    this.animationY = Int32(0)
    this.hintAnimationY = Int32(0)
    nothing
end


function createButton(::Type{TouchButton}, touchButtonInput, touchButtonResource, rawRectangle, cellPosition, xBorder, yBorder)
        return newTouchButton(touchButtonInput, AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), touchButtonResource.RESOURCE), Int32(0)), AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), touchButtonResource.HINT), Int32(0)), rawRectangle, cellPosition, xBorder, yBorder)
end


function initTouchButton(this::TouchButton, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
        initPaintable(this)
        initFieldsTouchButton(this)
        this.touchButtonInput = touchButtonInput
        this.animationInterface = animationInterface
        this.hintAnimationInterface = hintAnimationInterface
        this.rawRectangle = rawRectangle
        this.cellPositionP = cellPosition
        this.xBorder = xBorder
        this.yBorder = yBorder
        AllBinary.updateRectangle(this)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Created: "), AllBinary.toString(this))), this, this.commonStrings.CONSTRUCTOR)
        nothing
end

function newTouchButton(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
    this = TouchButton()
    initTouchButton(this, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
    this
end


function paintHint(this::TouchButton, graphics)
        AllBinary.paintXY(this.hintAnimationInterface, graphics, this.animationX, this.hintAnimationY)
        nothing
end


function paint(this::TouchButton, graphics)
        AllBinary.paintXY(this.animationInterface, graphics, this.animationX, this.animationY)
        nothing
end


function updateRectangle(this::TouchButton)
        try
            local pointFactory = AllBinary.getInstance(PointFactory)
            local x::Int32 = AllBinary.getWidth(this.rawRectangle) * AllBinary.getColumn(this.cellPositionP)
            local y::Int32 = AllBinary.getHeight(this.rawRectangle) * AllBinary.getRow(this.cellPositionP)
            this.rectangleP = newRectangle(AllBinary.createXY(pointFactory, x + this.xBorder, y + this.yBorder), AllBinary.getWidth(this.rawRectangle), AllBinary.getHeight(this.rawRectangle))
            local point = AllBinary.getPoint(this.rectangleP)
            this.animationX = AllBinary.getX(point)
            this.animationY = AllBinary.getY(point)
            this.hintAnimationY = this.animationY - Int32(32)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "updateRectangle", e)
        end
        nothing
end


function getCellPosition(this::TouchButton)
        return this.cellPositionP
end


function getRectangle(this::TouchButton)
        return this.rectangleP
end


function getTouchButtonInput(this::TouchButton)
        return this.touchButtonInput
end


function toString(this::TouchButton)
        local stringBuffer = newStringMaker()
        local stringUtil = AllBinary.getInstance(StringUtil)
        AllBinary.append(stringBuffer, "TouchButton: ")
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, AllBinary.getRectangle(this)))
        AllBinary.append(stringBuffer, " CellPosition: ")
        AllBinary.append(stringBuffer, AllBinary.toString(stringUtil, this.cellPositionP))
        AllBinary.append(stringBuffer, " xBorder: ")
        AllBinary.appendint(stringBuffer, this.xBorder)
        AllBinary.append(stringBuffer, " yBorder: ")
        AllBinary.appendint(stringBuffer, this.yBorder)
        return AllBinary.toString(stringBuffer)
end

