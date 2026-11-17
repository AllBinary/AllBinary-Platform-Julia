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

# extends IndexedAnimation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TextAnimation <: JObject
    updateMyFontProcessor::Any
    myFontProcessor::Any
    textArrayP::Any
    anchor::Int32
    fontHeight::Int32
    offsetY::Int32
    textChangeListener::Any
    TextAnimation() = new()
end


function initFieldsTextAnimation(this::TextAnimation)
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.textArrayP = nothing
    this.anchor = Int32(0)
    this.fontHeight = Int32(0)
    this.offsetY = Int32(0)
    this.textChangeListener = nothing
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.textArrayP = AllBinary.getInstance(StringUtil).ONE_EMPTY_STRING_ARRAY
    this.anchor = staticGet_TOP_LEFT(Anchor)
    this.fontHeight = Int32(0)
    this.offsetY = Int32(0)
    this.textChangeListener = AllBinary.getInstance(TextChangeListener)
    nothing
end


function initTextAnimation(this::TextAnimation, text, animationBehavior)
        initIndexedAnimation(this, animationBehavior)
        initFieldsTextAnimation(this)
        AllBinary.setText(this, text)
        nothing
end

function newTextAnimation(text, animationBehavior)
    this = TextAnimation()
    initTextAnimation(this, text, animationBehavior)
    this
end


function updateMeasurement(this::TextAnimation, graphics)
        local font = AllBinary.getFont(graphics)
        this.fontHeight = AllBinary.getHeight(font)
        local adjustedFontHeight::Int32 = (jToInt32(-(Float64(this.fontHeight) * 2.00)) % Int32)
        this.offsetY = (AllBinary.isJOGL(AllBinary.getInstance(SWTJOGLProcessor)) ? adjustedFontHeight : Int32(0))
        AllBinary.onMeasure(this.textChangeListener)
        this.textChangeListener = AllBinary.getInstance(TextChangeListener)
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function nextFrame(this::TextAnimation)
        nothing
        nothing
end


function paintXY(this::TextAnimation, graphics, x, y)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.paintXYNoUpdate(this, graphics, x, y)
        nothing
end


function paintXYNoUpdate(this::TextAnimation, graphics, x, y)
        AllBinary.setBasicColorP3(this.basicSetColorUtil, graphics, AllBinary.getBasicColorP(this), AllBinary.getColor(this))
        local size::Int32 = Int32(Base.length(this.textArrayP))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.drawString(graphics, this.textArrayP[index + 1], x, y + this.offsetY + (index * this.fontHeight), this.anchor)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function setTextWithOnMeasure(this::TextAnimation, text, textChangeListener)
        AllBinary.setText(this, text)
        this.textChangeListener = textChangeListener
        nothing
end


function setText(this::TextAnimation, text)
        local list = newBasicArrayListD()
        if jLength(text) > Int32(0)
            local index::Int32 = Int32(0)
            local startIndex::Int32 = Int32(0)
            local endIndex::Int32 = Int32(0)
            while index >= Int32(0)
                startIndex = index
                index = jIndexOf(text, UInt16('\n'), startIndex)
                endIndex = index
                if index < Int32(0)
                    endIndex = jLength(text)
                end
                AllBinary.add(list, jSubstring(text, startIndex, endIndex))
                if index < Int32(0)
                    break
                end
                index += Int32(1)
            end
        end
        if AllBinary.size(list) > Int32(0)
            local textArray = jNewArray(Any, AllBinary.size(list), nothing)
            local size::Int32 = AllBinary.size(list)
            let
                index = Int32(0)
                while index < size
                try
                textArray[index + 1] = (AllBinary.get(list, index))
                finally
                    index += Int32(1)
                end
                end
            end
            this.textArrayP = textArray
        else
            this.textArrayP = AllBinary.getInstance(StringUtil).ONE_EMPTY_STRING_ARRAY
        end
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function getTextArray(this::TextAnimation)
        return this.textArrayP
end


function getFontHeight(this::TextAnimation)
        return this.fontHeight
end

