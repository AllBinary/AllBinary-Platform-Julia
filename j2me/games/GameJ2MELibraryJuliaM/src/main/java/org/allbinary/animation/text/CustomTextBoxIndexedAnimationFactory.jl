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

mutable struct CustomTextBoxIndexedAnimationFactory <: JObject
    logUtil::Any
    scaleProperties::Any
    maxLength::Int32
    CustomTextBoxIndexedAnimationFactory() = new()
end


function initFieldsCustomTextBoxIndexedAnimationFactory(this::CustomTextBoxIndexedAnimationFactory)
    this.logUtil = nothing
    this.scaleProperties = nothing
    this.maxLength = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    
    nothing
end


function initCustomTextBoxIndexedAnimationFactory(this::CustomTextBoxIndexedAnimationFactory, fontSize, maxLength)
        initFieldsCustomTextBoxIndexedAnimationFactory(this)
        this.scaleProperties = newScaleProperties()
        this.scaleProperties.scaleHeight = fontSize
        this.maxLength = maxLength
        nothing
end

function newCustomTextBoxIndexedAnimationFactory(fontSize, maxLength)
    this = CustomTextBoxIndexedAnimationFactory()
    initCustomTextBoxIndexedAnimationFactory(this, fontSize, maxLength)
    this
end


function getInstance(this::CustomTextBoxIndexedAnimationFactory, instanceId)
        local abToGBUtil = AllBinary.getInstance(ABToGBUtil)
        local abCanvas = (abToGBUtil.abCanvas)
        local font = AllBinary.getFont(Font, staticGet_FACE_SYSTEM(Font), staticGet_STYLE_PLAIN(Font), this.scaleProperties.scaleHeight)
        local customTextBox = newCustomTextBox2(AllBinary.getCustomCommandListener(abCanvas), AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(StringUtil).EMPTY_STRING, this.maxLength, staticGet_ANY(TextField), font, AllBinary.getBackgroundBasicColor(AllBinary.getLayerManager(abCanvas)), AllBinary.getForegroundBasicColor(AllBinary.getLayerManager(abCanvas)))
        return newCustomTextBoxIndexedAnimation(customTextBox)
end


function setInitialScale(this::CustomTextBoxIndexedAnimationFactory, scaleProperties)
        local fontSize::Int32 = this.scaleProperties.scaleHeight
        this.scaleProperties = scaleProperties
        if this.scaleProperties.scaleHeight < Int32(6)
            this.scaleProperties.scaleHeight = fontSize
        end
        nothing
end

