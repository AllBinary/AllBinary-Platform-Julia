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
# package org.allbinary.graphics.draw

mutable struct KeyValueDrawString <: JObject
    myFontProcessor::Any
    LABEL::Any
    labelX::Int32
    valueX::Int32
    value::Any
    KeyValueDrawString() = new()
end


function initFieldsKeyValueDrawString(this::KeyValueDrawString)
    this.myFontProcessor = nothing
    this.LABEL = nothing
    this.labelX = Int32(0)
    this.valueX = Int32(0)
    this.value = nothing
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    
    
    this.valueX = Int32(0)
    this.value = AllBinary.getInstance(StringUtil).EMPTY_STRING
    nothing
end


function initKeyValueDrawString(this::KeyValueDrawString, label, x)
        initFieldsKeyValueDrawString(this)
        this.LABEL = label
        this.labelX = x
        nothing
end

function newKeyValueDrawString(label, x)
    this = KeyValueDrawString()
    initKeyValueDrawString(this, label, x)
    this
end


function updateMeasurement(this::KeyValueDrawString, graphics)
        local labelWidth::Int32 = AllBinary.stringWidth(AllBinary.getFont(graphics), this.LABEL) - jLength(this.LABEL)
        this.valueX = labelWidth + this.labelX
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function paint(this::KeyValueDrawString, graphics, y)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.drawString(graphics, this.LABEL, this.labelX, y, Int32(0))
        AllBinary.drawString(graphics, this.value, this.valueX, y, Int32(0))
        nothing
end


function update(this::KeyValueDrawString, value)
        this.value = value
        nothing
end

