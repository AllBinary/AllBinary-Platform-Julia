# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

# extends ABCustomItem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CustomCustomItem <: JObject
    updateMyFontProcessor::Any
    myFontProcessor::Any
    CustomCustomItem() = new()
end


function initFieldsCustomCustomItem(this::CustomCustomItem)
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    nothing
end


function initCustomCustomItem(this::CustomCustomItem, label, backgroundBasicColor, foregroundBasicColor)
        initABCustomItem(this, label, backgroundBasicColor, foregroundBasicColor)
        initFieldsCustomCustomItem(this)
        nothing
end

function newCustomCustomItem(label, backgroundBasicColor, foregroundBasicColor)
    this = CustomCustomItem()
    initCustomCustomItem(this, label, backgroundBasicColor, foregroundBasicColor)
    this
end


function updateMeasurement(this::CustomCustomItem, graphics)
        nothing
        nothing
end

