# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

# extends ABTextItem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ABTextFieldItem <: JObject
    font::Any
    ABTextFieldItem() = new()
end


function initFieldsABTextFieldItem(this::ABTextFieldItem)
    this.font = nothing
    
    nothing
end


function initABTextFieldItem(this::ABTextFieldItem, canvas, visitor, label, value, maxSize, layout, altText, font, backgroundBasicColor, foregroundBasicColor)
        initABTextItem(this, label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        initFieldsABTextFieldItem(this)
        this.font = font
        nothing
end

function newABTextFieldItem(canvas, visitor, label, value, maxSize, layout, altText, font, backgroundBasicColor, foregroundBasicColor)
    this = ABTextFieldItem()
    initABTextFieldItem(this, canvas, visitor, label, value, maxSize, layout, altText, font, backgroundBasicColor, foregroundBasicColor)
    this
end


function getLabel(this::ABTextFieldItem)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function setLabel(this::ABTextFieldItem, label)
        nothing
        nothing
end


function getString(this::ABTextFieldItem)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function setString(this::ABTextFieldItem, string)
        nothing
        nothing
end


function setFocus(this::ABTextFieldItem, state)
        nothing
        nothing
end


function getFontHeight(this::ABTextFieldItem)
        return AllBinary.getHeight(this.font)
end


function setBackgroundBasicColorP(this::ABTextFieldItem, basicColor)
        nothing
        nothing
end


function setForegroundBasicColorP(this::ABTextFieldItem, basicColor)
        nothing
        nothing
end

