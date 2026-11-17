# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

# extends CustomCustomItem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ABTextItem <: JObject
    ABTextItem() = new()
end


function initFieldsABTextItem(this::ABTextItem)
    nothing
end


function initABTextItem(this::ABTextItem, label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        initCustomCustomItem(this, label, backgroundBasicColor, foregroundBasicColor)
        nothing
end

function newABTextItem(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
    this = ABTextItem()
    initABTextItem(this, label, layout, altText, backgroundBasicColor, foregroundBasicColor)
    this
end


function keyPressed(this::ABTextItem, keyCode)
        nothing
        nothing
end


function paintUnselected(this::ABTextItem, graphics, x, y)
        nothing
        nothing
end


function getLabelStringComponent(this::ABTextItem)
        return staticGet_NULL_STRING_COMPONENT(ABStringComponent)
end


function getMinimumWidth(this::ABTextItem)
        return AllBinary.getMinimumWidth(this)
end


function getMinimumHeight(this::ABTextItem)
        return AllBinary.getMinimumHeight(this)
end


function getLabel(this::ABTextItem)
        return AllBinary.getLabel(this)
end


function paintXY(this::ABTextItem, graphics, x, y)
        AllBinary.paintXY(this, graphics, x, y)
        nothing
end

