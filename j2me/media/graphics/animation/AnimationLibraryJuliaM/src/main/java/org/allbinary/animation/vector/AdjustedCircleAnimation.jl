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
# package org.allbinary.animation.vector

# extends CircleAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct AdjustedCircleAnimation <: JObject
    xAdjustment::Int32
    yAdjustment::Int32
    AdjustedCircleAnimation() = new()
end


function initFieldsAdjustedCircleAnimation(this::AdjustedCircleAnimation)
    this.xAdjustment = Int32(0)
    this.yAdjustment = Int32(0)
    this.xAdjustment = Int32(0)
    this.yAdjustment = Int32(0)
    nothing
end


function createAnimation(::Type{AdjustedCircleAnimation}, width, height, xAdjustment, yAdjustment, basicColor)
        local adjustedCircleAnimation = newAdjustedCircleAnimation(width, height, basicColor)
        AllBinary.initXY(adjustedCircleAnimation, xAdjustment, yAdjustment)
        return adjustedCircleAnimation
end


function createW(::Type{AdjustedCircleAnimation}, width, height, innerWidth, basicColor)
        local adjustedCircleAnimation = newAdjustedCircleAnimation(width, height, basicColor)
        AllBinary.init(adjustedCircleAnimation, innerWidth)
        return adjustedCircleAnimation
end


function initAdjustedCircleAnimation(this::AdjustedCircleAnimation, width, height, basicColor)
        initCircleAnimation(this, width, height, basicColor)
        initFieldsAdjustedCircleAnimation(this)
        nothing
end

function newAdjustedCircleAnimation(width, height, basicColor)
    this = AdjustedCircleAnimation()
    initAdjustedCircleAnimation(this, width, height, basicColor)
    this
end


function initXY(this::AdjustedCircleAnimation, xAdjustment, yAdjustment)
        this.xAdjustment = xAdjustment
        this.yAdjustment = yAdjustment
        nothing
end


function init(this::AdjustedCircleAnimation, innerWidth)
        if AllBinary.isAndroid(AndroidUtil)
            local widthPortion::Int32 = (((innerWidth ÷ Int32(3)) * Int32(10)) ÷ Int32(7))
            this.xAdjustment = -((this.width >> Int32(1)) - widthPortion)
            this.yAdjustment = this.xAdjustment
        else
            this.xAdjustment = -((this.width >> Int32(1)) - innerWidth)
            this.yAdjustment = this.xAdjustment
        end
        nothing
end


function paintXY(this::AdjustedCircleAnimation, graphics, x, y)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this), AllBinary.getColor(this))
        AllBinary.drawArc(graphics, x + this.xAdjustment, y + this.yAdjustment, this.width, this.height, Int32(0), this.TOTAL_ANGLE)
        nothing
end

