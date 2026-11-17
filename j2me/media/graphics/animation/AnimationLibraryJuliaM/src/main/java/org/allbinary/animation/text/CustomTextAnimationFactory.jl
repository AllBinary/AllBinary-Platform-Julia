#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.animation.text

mutable struct CustomTextAnimationFactory <: JObject
    logUtil::Any
    animationBehaviorFactory::Any
    basicColor::Any
    text::Any
    initScaleHeight::Int32
    dx::Int32
    dy::Int32
    font::Any
    scaleProperties::Any
    CustomTextAnimationFactory() = new()
end


function initFieldsCustomTextAnimationFactory(this::CustomTextAnimationFactory)
    this.logUtil = nothing
    this.animationBehaviorFactory = nothing
    this.basicColor = nothing
    this.text = nothing
    this.initScaleHeight = Int32(0)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.font = nothing
    this.scaleProperties = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    this.basicColor = AllBinary.getInstance(BasicColorFactory).BLACK
    
    
    this.dx = Int32(0)
    this.dy = Int32(0)
    
    
    nothing
end


function createDXY(::Type{CustomTextAnimationFactory}, text, fontSize, dx, dy, animationBehaviorFactory)
        local customTextAnimationFactory = newCustomTextAnimationFactory(text, fontSize, animationBehaviorFactory)
        customTextAnimationFactory.dx = dx
        customTextAnimationFactory.dy = dy
        return customTextAnimationFactory
end


function initCustomTextAnimationFactory(this::CustomTextAnimationFactory, text, fontSize, animationBehaviorFactory)
        initFieldsCustomTextAnimationFactory(this)
        this.scaleProperties = newScaleProperties()
        this.text = text
        this.scaleProperties.scaleHeight = fontSize - (fontSize ÷ Int32(4))
        this.initScaleHeight = this.scaleProperties.scaleHeight
        this.animationBehaviorFactory = animationBehaviorFactory
        this.font = AllBinary.getFont(Font, staticGet_FACE_SYSTEM(Font), staticGet_STYLE_PLAIN(Font), this.initScaleHeight)
        nothing
end

function newCustomTextAnimationFactory(text, fontSize, animationBehaviorFactory)
    this = CustomTextAnimationFactory()
    initCustomTextAnimationFactory(this, text, fontSize, animationBehaviorFactory)
    this
end


function getInstance(this::CustomTextAnimationFactory, instanceId)
        local customTextAnimation = nothing
        if this.dx != Int32(0) || this.dy != Int32(0)
            customTextAnimation = newAdjustCustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.dx, this.dy, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        else
            customTextAnimation = newCustomTextAnimation(this.text, this.scaleProperties.scaleHeight, AllBinary.getOrCreateInstance(this.animationBehaviorFactory))
        end
        AllBinary.setBasicColorP(customTextAnimation, this.basicColor)
        return customTextAnimation
end


function setInitialScale(this::CustomTextAnimationFactory, scaleProperties)
        nothing
        nothing
end


function getWidth(this::CustomTextAnimationFactory)
        return AllBinary.stringWidth(this.font, this.text)
end


function getHeight(this::CustomTextAnimationFactory)
        return AllBinary.getHeight(this.font)
end

