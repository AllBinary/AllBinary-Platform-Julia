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
# package org.allbinary.graphics.form.item

# extends ABTextItem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SelectableTextItem <: JObject
    SelectableTextItem() = new()
end


function initFieldsSelectableTextItem(this::SelectableTextItem)
    nothing
end


function initSelectableTextItem(this::SelectableTextItem, label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        initABTextItem(this, label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        nothing
end

function newSelectableTextItem(label, layout, altText, backgroundBasicColor, foregroundBasicColor)
    this = SelectableTextItem()
    initSelectableTextItem(this, label, layout, altText, backgroundBasicColor, foregroundBasicColor)
    this
end


function isFocusable(this::SelectableTextItem)
        return true
end


function paintXY(this::SelectableTextItem, graphics, x, y)
        AllBinary.process(this.myFontProcessor, graphics)
        local stringComponent = AllBinary.getLabelStringComponent(this)
        if stringComponent !== nothing
            AllBinary.setColor(graphics, AllBinary.intValue(AllBinary.getForegroundBasicColor(stringComponent)))
        end
        AllBinary.drawString(graphics, AllBinary.getLabel(this), x + Int32(2), y, Int32(0))
        nothing
end

