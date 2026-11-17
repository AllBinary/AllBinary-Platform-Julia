# Generated Code Do Not Modify
# package org.allbinary.graphics.form

# extends ABCustomForm: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct PaintableForm <: JObject
    canvasStrings::Any
    rectangle::Any
    x::Int32
    y::Int32
    formType::Any
    PaintableForm() = new()
end

const PaintableForm_NULL_PAINTABLE_FORMValue = Ref{Any}(nothing)
const PaintableForm_NULL_PAINTABLE_FORMSet = Ref(false)
function staticGet_NULL_PAINTABLE_FORM(::Type{PaintableForm})
    if !PaintableForm_NULL_PAINTABLE_FORMSet[]
        PaintableForm_NULL_PAINTABLE_FORMSet[] = true
        PaintableForm_NULL_PAINTABLE_FORMValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    PaintableForm_NULL_PAINTABLE_FORMValue[]
end
function staticSet_NULL_PAINTABLE_FORM(::Type{PaintableForm}, value)
    PaintableForm_NULL_PAINTABLE_FORMSet[] = true
    PaintableForm_NULL_PAINTABLE_FORMValue[] = value
end

function initFieldsPaintableForm(this::PaintableForm)
    this.canvasStrings = nothing
    this.rectangle = nothing
    this.x = Int32(0)
    this.y = Int32(0)
    this.formType = nothing
    this.canvasStrings = AllBinary.getInstance(CanvasStrings)
    this.rectangle = staticGet_SINGLETON(RectangleFactory)
    this.x = Int32(0)
    this.y = Int32(0)
    this.formType = AllBinary.getInstance(FormTypeFactory).NULL_FORM_TYPE
    nothing
end


function getNullPaintableForm(::Type{PaintableForm})
        if staticGet_NULL_PAINTABLE_FORM(PaintableForm) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_PAINTABLE_FORM(PaintableForm, newPaintableForm(AllBinary.getInstance(StringUtil).EMPTY_STRING, jNewArray(Any, Int32(0), nothing), AllBinary.getInstance(BasicColorFactory).BLACK, AllBinary.getInstance(BasicColorFactory).WHITE))
        end
        return (staticGet_NULL_PAINTABLE_FORM(PaintableForm))
end


function initPaintableForm(this::PaintableForm, title, items, backgroundBasicColor, foregroundBasicColor)
        initABCustomForm(this, title, items, backgroundBasicColor, foregroundBasicColor)
        initFieldsPaintableForm(this)
        AllBinary.setSelectedIndex(this, Int32(0))
        nothing
end

function newPaintableForm(title, items, backgroundBasicColor, foregroundBasicColor)
    this = PaintableForm()
    initPaintableForm(this, title, items, backgroundBasicColor, foregroundBasicColor)
    this
end


function init(this::PaintableForm, rectangle, formType)
        this.rectangle = rectangle
        local point = AllBinary.getPoint(this.rectangle)
        this.x = AllBinary.getX(point)
        this.y = AllBinary.getY(point)
        this.formType = formType
        nothing
end


function getWidth(this::PaintableForm)
        return AllBinary.getWidth(this.rectangle)
end

