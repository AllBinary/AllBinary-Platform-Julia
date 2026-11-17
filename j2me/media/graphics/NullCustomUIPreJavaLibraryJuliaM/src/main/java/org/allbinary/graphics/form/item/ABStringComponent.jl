# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

mutable struct ABStringComponent <: JObject
    ABStringComponent() = new()
end

const ABStringComponent_NULL_STRING_COMPONENTValue = Ref{Any}(nothing)
const ABStringComponent_NULL_STRING_COMPONENTSet = Ref(false)
function staticGet_NULL_STRING_COMPONENT(::Type{ABStringComponent})
    if !ABStringComponent_NULL_STRING_COMPONENTSet[]
        ABStringComponent_NULL_STRING_COMPONENTSet[] = true
        ABStringComponent_NULL_STRING_COMPONENTValue[] = newABStringComponent(AllBinary.getInstance(BasicColorFactory).BLACK, AllBinary.getInstance(BasicColorFactory).WHITE)
    end
    ABStringComponent_NULL_STRING_COMPONENTValue[]
end
function staticSet_NULL_STRING_COMPONENT(::Type{ABStringComponent}, value)
    ABStringComponent_NULL_STRING_COMPONENTSet[] = true
    ABStringComponent_NULL_STRING_COMPONENTValue[] = value
end

function initFieldsABStringComponent(this::ABStringComponent)
    nothing
end


function getBackgroundBasicColor(this::ABStringComponent)
        return AllBinary.getInstance(BasicColorFactory).WHITE
end


function initABStringComponent(this::ABStringComponent, backgroundBasicColor, foregroundBasicColor)
        initFieldsABStringComponent(this)
        nothing
        nothing
end

function newABStringComponent(backgroundBasicColor, foregroundBasicColor)
    this = ABStringComponent()
    initABStringComponent(this, backgroundBasicColor, foregroundBasicColor)
    this
end


function getForegroundBasicColor(this::ABStringComponent)
        return AllBinary.getInstance(BasicColorFactory).WHITE
end


function setForegroundBasicColor(this::ABStringComponent, foregroundBasicColor)
        nothing
        nothing
end

