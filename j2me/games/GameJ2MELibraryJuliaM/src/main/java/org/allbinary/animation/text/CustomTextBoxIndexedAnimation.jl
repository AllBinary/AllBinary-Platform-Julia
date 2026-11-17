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

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CustomTextBoxIndexedAnimation <: JObject
    customTextBox::Any
    lastText::Any
    hasChanged::Bool
    textChangeListener::Any
    CustomTextBoxIndexedAnimation() = new()
end


function initFieldsCustomTextBoxIndexedAnimation(this::CustomTextBoxIndexedAnimation)
    this.customTextBox = nothing
    this.lastText = nothing
    this.hasChanged = false
    this.textChangeListener = nothing
    
    this.lastText = AllBinary.getInstance(StringUtil).INIT_STRING
    this.hasChanged = true
    this.textChangeListener = AllBinary.getInstance(TextChangeListener)
    nothing
end


function initCustomTextBoxIndexedAnimation(this::CustomTextBoxIndexedAnimation, customTextBox)
        initIndexedAnimation(this, AllBinary.getInstance(AnimationBehavior))
        initFieldsCustomTextBoxIndexedAnimation(this)
        this.customTextBox = customTextBox
        nothing
end

function newCustomTextBoxIndexedAnimation(customTextBox)
    this = CustomTextBoxIndexedAnimation()
    initCustomTextBoxIndexedAnimation(this, customTextBox)
    this
end


function setBasicColorP(this::CustomTextBoxIndexedAnimation, basicColor)
        AllBinary.setForegroundBasicColorP(AllBinary.getTextFieldItem(this.customTextBox), basicColor)
        nothing
end


function setBackgroundBasicColorP(this::CustomTextBoxIndexedAnimation, basicColor)
        AllBinary.setBackgroundBasicColorP(AllBinary.getTextFieldItem(this.customTextBox), basicColor)
        nothing
end


function setTextWithOnMeasure(this::CustomTextBoxIndexedAnimation, text, textChangeListener)
        AllBinary.setText(this, text)
        this.textChangeListener = textChangeListener
        nothing
end


function updateMeasurement(this::CustomTextBoxIndexedAnimation, graphics)
        local font = AllBinary.getFont(graphics)
        AllBinary.onMeasure(this.textChangeListener)
        this.textChangeListener = AllBinary.getInstance(TextChangeListener)
        nothing
end


function setText(this::CustomTextBoxIndexedAnimation, text)
        if this.lastText != text
            this.hasChanged = true
            this.lastText = text
            AllBinary.setString(AllBinary.getTextFieldItem(this.customTextBox), text)
        end
        nothing
end


function getText(this::CustomTextBoxIndexedAnimation)
        return AllBinary.getString(AllBinary.getTextFieldItem(this.customTextBox))
end


function onEventRaw(this::CustomTextBoxIndexedAnimation, keyCode, deviceId, repeated)
        AllBinary.onEventRaw(this.customTextBox, keyCode, deviceId, repeated)
        nothing
end


function getFontHeight(this::CustomTextBoxIndexedAnimation)
        return AllBinary.getFontHeight(AllBinary.getTextFieldItem(this.customTextBox))
end


function paintXY(this::CustomTextBoxIndexedAnimation, graphics, x, y)
        AllBinary.paintXY(this.customTextBox, graphics, x, y)
        nothing
end


function paintThreedXYZ(this::CustomTextBoxIndexedAnimation, graphics, x, y, z)
        nothing
        nothing
end


function getWidth(this::CustomTextBoxIndexedAnimation)
        return AllBinary.getWidth(this)
end

