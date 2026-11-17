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

# extends TouchButton: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct FullTouchButton <: JObject
    FullTouchButton() = new()
end


function initFieldsFullTouchButton(this::FullTouchButton)
    nothing
end


function createButton(::Type{FullTouchButton}, touchButtonInput, touchButtonResource, rawRectangle, cellPosition, xBorder, yBorder)
        return newFullTouchButton(touchButtonInput, AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), touchButtonResource.RESOURCE), Int32(0)), AllBinary.getInstance(AllBinary.get(AllBinary.getInstance(FeaturedAnimationInterfaceFactoryInterfaceFactory), touchButtonResource.HINT), Int32(0)), rawRectangle, cellPosition, xBorder, yBorder)
end


function initFullTouchButton(this::FullTouchButton, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
        initTouchButton(this, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
        nothing
end

function newFullTouchButton(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
    this = FullTouchButton()
    initFullTouchButton(this, touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
    this
end


function updateRectangle(this::FullTouchButton)
        try
            local pointFactory = AllBinary.getInstance(PointFactory)
            local x::Int32 = AllBinary.getWidth(this.rawRectangle) * AllBinary.getColumn(this.cellPositionP)
            local y::Int32 = AllBinary.getHeight(this.rawRectangle) * AllBinary.getRow(this.cellPositionP)
            this.rectangleP = newRectangle(AllBinary.createXY(pointFactory, x, y), AllBinary.getWidth(this.rawRectangle) + (Int32(2) * this.xBorder), AllBinary.getHeight(this.rawRectangle) + (Int32(2) * this.yBorder))
            local point = AllBinary.getPoint(this.rectangleP)
            this.animationX = AllBinary.getX(point) + this.xBorder
            this.animationY = AllBinary.getY(point) + this.yBorder
            this.hintAnimationY = this.animationY - AllBinary.getHeight(this.rectangleP) >> Int32(1)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "updateRectangle", e)
        end
        nothing
end

