# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

mutable struct ABCustomItem <: JObject
    ABCustomItem() = new()
end

const ABCustomItem_NULL_CUSTOM_ITEMValue = Ref{Any}(nothing)
const ABCustomItem_NULL_CUSTOM_ITEMSet = Ref(false)
function staticGet_NULL_CUSTOM_ITEM(::Type{ABCustomItem})
    if !ABCustomItem_NULL_CUSTOM_ITEMSet[]
        ABCustomItem_NULL_CUSTOM_ITEMSet[] = true
        ABCustomItem_NULL_CUSTOM_ITEMValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    ABCustomItem_NULL_CUSTOM_ITEMValue[]
end
function staticSet_NULL_CUSTOM_ITEM(::Type{ABCustomItem}, value)
    ABCustomItem_NULL_CUSTOM_ITEMSet[] = true
    ABCustomItem_NULL_CUSTOM_ITEMValue[] = value
end

function initFieldsABCustomItem(this::ABCustomItem)
    nothing
end


function getNullInstance(::Type{ABCustomItem})
        if staticGet_NULL_CUSTOM_ITEM(ABCustomItem) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_CUSTOM_ITEM(ABCustomItem, newABCustomItem(AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(BasicColorFactory).BLACK, AllBinary.getInstance(BasicColorFactory).WHITE))
        end
        return (staticGet_NULL_CUSTOM_ITEM(ABCustomItem))
end


function initABCustomItem(this::ABCustomItem, label, backgroundBasicColor, foregroundBasicColor)
        initFieldsABCustomItem(this)
        nothing
        nothing
end

function newABCustomItem(label, backgroundBasicColor, foregroundBasicColor)
    this = ABCustomItem()
    initABCustomItem(this, label, backgroundBasicColor, foregroundBasicColor)
    this
end


function setOwner(this::ABCustomItem, owner)
        nothing
        nothing
end


function paintXY(this::ABCustomItem, graphics, x, y)
        nothing
        nothing
end


function paintUnselected(this::ABCustomItem, graphics, x, y)
        nothing
        nothing
end


function isFocusable(this::ABCustomItem)
        return false
end


function getLabel(this::ABCustomItem)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function setLabel(this::ABCustomItem, label)
        nothing
        nothing
end


function getHeight(this::ABCustomItem)
        return Int32(0)
end


function setHeight(this::ABCustomItem, height)
        nothing
        nothing
end


function getValue(this::ABCustomItem)
        return 0.0f0
end


function setValue(this::ABCustomItem, value)
        nothing
        nothing
end


function getMinimumWidth(this::ABCustomItem)
        return Int32(0)
end


function getMinimumHeight(this::ABCustomItem)
        return Int32(0)
end


function preMeasurement(this::ABCustomItem, graphics)
        nothing
        nothing
end

