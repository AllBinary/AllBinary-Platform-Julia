# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

# extends ABCustomItem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ABCustomGaugeItem <: JObject
    ABCustomGaugeItem() = new()
end

const ABCustomGaugeItem_NULL_GAUGE_ITEMValue = Ref{Any}(nothing)
const ABCustomGaugeItem_NULL_GAUGE_ITEMSet = Ref(false)
function staticGet_NULL_GAUGE_ITEM(::Type{ABCustomGaugeItem})
    if !ABCustomGaugeItem_NULL_GAUGE_ITEMSet[]
        ABCustomGaugeItem_NULL_GAUGE_ITEMSet[] = true
        ABCustomGaugeItem_NULL_GAUGE_ITEMValue[] = newABCustomGaugeItem(AllBinary.getInstance(StringUtil).EMPTY_STRING, Int32(1), Int32(0), AllBinary.getInstance(BasicColorFactory).BLACK, AllBinary.getInstance(BasicColorFactory).WHITE)
    end
    ABCustomGaugeItem_NULL_GAUGE_ITEMValue[]
end
function staticSet_NULL_GAUGE_ITEM(::Type{ABCustomGaugeItem}, value)
    ABCustomGaugeItem_NULL_GAUGE_ITEMSet[] = true
    ABCustomGaugeItem_NULL_GAUGE_ITEMValue[] = value
end

function initFieldsABCustomGaugeItem(this::ABCustomGaugeItem)
    nothing
end


function initABCustomGaugeItem(this::ABCustomGaugeItem, label, maxValue, initialValue, backgroundBasicColor, foregroundBasicColor)
        initABCustomItem(this, label, backgroundBasicColor, foregroundBasicColor)
        nothing
end

function newABCustomGaugeItem(label, maxValue, initialValue, backgroundBasicColor, foregroundBasicColor)
    this = ABCustomGaugeItem()
    initABCustomGaugeItem(this, label, maxValue, initialValue, backgroundBasicColor, foregroundBasicColor)
    this
end

