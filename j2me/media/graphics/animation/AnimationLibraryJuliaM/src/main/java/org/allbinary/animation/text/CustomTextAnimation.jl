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
# package org.allbinary.animation.text

# extends TextAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CustomTextAnimation <: JObject
    fontDebugFactory::Any
    fontSize::Int32
    font::Any
    lastText::Any
    hasChanged::Bool
    textWidth::Int32
    CustomTextAnimation() = new()
end


function initFieldsCustomTextAnimation(this::CustomTextAnimation)
    this.fontDebugFactory = nothing
    this.fontSize = Int32(0)
    this.font = nothing
    this.lastText = nothing
    this.hasChanged = false
    this.textWidth = Int32(0)
    this.fontDebugFactory = AllBinary.getInstance(FontDebugFactory)
    
    
    this.lastText = AllBinary.getInstance(StringUtil).INIT_STRING
    this.hasChanged = true
    this.textWidth = Int32(0)
    nothing
end


function initCustomTextAnimation(this::CustomTextAnimation, text, fontSize, animationBehavior)
        initTextAnimation(this, text, animationBehavior)
        initFieldsCustomTextAnimation(this)
        this.fontSize = fontSize
        this.font = AllBinary.getFont(Font, staticGet_FACE_SYSTEM(Font), staticGet_STYLE_PLAIN(Font), fontSize)
        nothing
end

function newCustomTextAnimation(text, fontSize, animationBehavior)
    this = CustomTextAnimation()
    initCustomTextAnimation(this, text, fontSize, animationBehavior)
    this
end


function paintXY(this::CustomTextAnimation, graphics, x, y)
        AllBinary.process(this.myFontProcessor, graphics)
        local existingFont = AllBinary.getFont(graphics)
        AllBinary.setFont(this.fontDebugFactory, this.font, graphics)
        AllBinary.paintXYNoUpdate(this, graphics, x, y)
        AllBinary.setFont(this.fontDebugFactory, existingFont, graphics)
        nothing
end


function setScale(this::CustomTextAnimation, scaleX, scaleY)
        if scaleX != scaleY
            throw(jNewException("RuntimeException", ""))
        end
        this.hasChanged = true
        this.font = AllBinary.getFont(Font, staticGet_FACE_SYSTEM(Font), staticGet_STYLE_PLAIN(Font), (jToInt32((Float32(this.fontSize) * scaleX)) % Int32))
        nothing
end


function setTextWithOnMeasure(this::CustomTextAnimation, text, textChangeListener)
        AllBinary.setTextWithOnMeasure(this, text, textChangeListener)
        nothing
end


function setText(this::CustomTextAnimation, text)
        if this.lastText != text
            this.hasChanged = true
            this.lastText = text
            AllBinary.setText(this, text)
        end
        nothing
end


function getText(this::CustomTextAnimation)
        return this.lastText
end


function getWidth(this::CustomTextAnimation)
        if this.hasChanged
            this.textWidth = AllBinary.stringWidth(this.font, this.textArrayP[Int32(0) + 1])
            this.hasChanged = false
        end
        return this.textWidth
end


function getFontHeight(this::CustomTextAnimation)
        return AllBinary.getHeight(this.font)
end

