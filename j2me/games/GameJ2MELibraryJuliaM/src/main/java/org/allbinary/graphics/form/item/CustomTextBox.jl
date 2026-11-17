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

# extends GameCommandCanvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CustomTextBox <: JObject
    textFieldItem::Any
    inputFactory::Any
    CustomTextBox() = new()
end


function initFieldsCustomTextBox(this::CustomTextBox)
    this.textFieldItem = nothing
    this.inputFactory = nothing
    
    this.inputFactory = AllBinary.getInstance(InputFactory)
    nothing
end


function initCustomTextBox(this::CustomTextBox, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        initGameCommandCanvas(this, cmdListener, label, backgroundBasicColor, foregroundBasicColor)
        initFieldsCustomTextBox(this)
        local stringUtil = AllBinary.getInstance(StringUtil)
        local textFieldItem = newABTextFieldItem(this, newTextItemVisitor(), stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, Int32(0), stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor)
        AllBinary.setString(textFieldItem, text)
        this.textFieldItem = textFieldItem
        AllBinary.setTitle(this, label)
        nothing
end

function newCustomTextBox(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
    this = CustomTextBox()
    initCustomTextBox(this, cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
    this
end


function submit(this::CustomTextBox)
        nothing
        nothing
end


function onEventRaw(this::CustomTextBox, keyCode, deviceId, repeated)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), this.commonStrings.START), keyCode)), this, "onEvent")
        AllBinary.keyPressedByDevice(this, keyCode, deviceId)
        nothing
end


function keyPressed(this::CustomTextBox, keyCode)
        AllBinary.keyPressedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyReleased(this::CustomTextBox, keyCode)
        AllBinary.keyReleasedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyRepeated(this::CustomTextBox, keyCode)
        AllBinary.keyRepeatedByDevice(this, keyCode, Int32(0))
        nothing
end


function keyPressedByDevice(this::CustomTextBox, keyCode, deviceId)
        try
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonSeps).SPACE), keyCode)), this, this.gameInputStrings.KEY_PRESSED)
            local platformKeyFactory = AllBinary.getInstance(PlatformKeyFactory)
            local input = AllBinary.getInstanceById(this.inputFactory, keyCode)
            if AllBinary.isSubmission(platformKeyFactory, input)
                AllBinary.submit(this)
            else
                AllBinary.keyPressed(this.textFieldItem, keyCode)
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.gameInputStrings.KEY_PRESSED, e)
        end
        nothing
end


function keyReleasedByDevice(this::CustomTextBox, keyCode, deviceId)
        nothing
        nothing
end


function paint(this::CustomTextBox, graphics)
        AllBinary.setColor(graphics, this.backgroundColor)
        AllBinary.fillRect(graphics, Int32(0), Int32(0), AllBinary.getLastWidth(this.displayInfo), AllBinary.getLastHeight(this.displayInfo))
        AllBinary.setColor(graphics, this.foregroundColor)
        if !AllBinary.isJ2ME(J2MEUtil)
            AllBinary.drawString(graphics, AllBinary.getTitle(this), Int32(8), Int32(1), Int32(0))
        end
        AllBinary.paintXY(this, graphics, Int32(8), AllBinary.getHeight(AllBinary.getFont(graphics)) + Int32(2))
        AllBinary.paint(this, graphics)
        nothing
end


function paintXY(this::CustomTextBox, graphics, x, y)
        AllBinary.paintXY(this.textFieldItem, graphics, x, y)
        nothing
end


function getTextFieldItem(this::CustomTextBox)
        return this.textFieldItem
end

