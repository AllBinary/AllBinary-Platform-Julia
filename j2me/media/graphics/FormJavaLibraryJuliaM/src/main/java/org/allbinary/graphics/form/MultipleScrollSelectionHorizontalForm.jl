# Generated Code Do Not Modify
# package org.allbinary.graphics.form

# extends ScrollSelectionForm: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MultipleScrollSelectionHorizontalForm <: JObject
    rectPaintable::Any
    multipleScrollSelectionHorizontalFormTypeItemIndexPaintable::Any
    backgroundColor::Int32
    myFontProcessor::Any
    logged::Bool
    fontHeight::Int32
    MultipleScrollSelectionHorizontalForm() = new()
end


function initFieldsMultipleScrollSelectionHorizontalForm(this::MultipleScrollSelectionHorizontalForm)
    this.rectPaintable = nothing
    this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = nothing
    this.backgroundColor = Int32(0)
    this.myFontProcessor = nothing
    this.logged = false
    this.fontHeight = Int32(0)
    this.rectPaintable = AllBinary.getInstance(NullPaintable)
    this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = AllBinary.getInstance(ItemIndexPaintable)
    this.backgroundColor = AllBinary.intValue(AllBinary.getInstance(BasicColorFactory).TRANSPARENT_GREY)
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.logged = false
    this.fontHeight = Int32(0)
    nothing
end


function createForm(::Type{MultipleScrollSelectionHorizontalForm}, title, items, rectangle, formType, border, backgroundBasicColor, foregroundBasicColor)
        local scrollSelectionForm = newMultipleScrollSelectionHorizontalForm(title, items, AllBinary.getInstance(ItemPaintableFactory), border, backgroundBasicColor, foregroundBasicColor)
        AllBinary.init(scrollSelectionForm, rectangle, formType)
        return scrollSelectionForm
end


function initMultipleScrollSelectionHorizontalForm(this::MultipleScrollSelectionHorizontalForm, title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor)
        initScrollSelectionForm(this, title, items, formPaintableFactory, border, Int32(3), backgroundBasicColor, foregroundBasicColor)
        initFieldsMultipleScrollSelectionHorizontalForm(this)
        if AllBinary.isJ2ME(J2MEUtil) || AllBinary.isHTML(J2MEUtil)
            nothing
        else
            this.rectPaintable = newMultipleScrollSelectionFormRectPaintable(this)
        end
        nothing
end

function newMultipleScrollSelectionHorizontalForm(title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor)
    this = MultipleScrollSelectionHorizontalForm()
    initMultipleScrollSelectionHorizontalForm(this, title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor)
    this
end


function fillRect(this::MultipleScrollSelectionHorizontalForm, graphics)
        AllBinary.setColor(graphics, this.backgroundColor)
        AllBinary.fillRect(graphics, this.x, this.y, AllBinary.getWidth(this.rectangle), AllBinary.getHeight(this.rectangle))
        nothing
end


function init(this::MultipleScrollSelectionHorizontalForm, rectangle, formType)
        AllBinary.init(this, rectangle, formType)
        local formTypeFactory = AllBinary.getInstance(FormTypeFactory)
        if formType === formTypeFactory.HORIZONTAL_FORM
            this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = newMultipleScrollSelectionFormHorizontalPaintable(this)
        elseif formType === formTypeFactory.VERTICAL_CENTER_FORM
            this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = newMultipleScrollSelectionFormVerticalPaintable(this)
        elseif formType === formTypeFactory.NULL_FORM_TYPE
            nothing
        else
            throw(jNewException("Exception", formTypeFactory.UNK))
        end
        nothing
end


function updateMeasurement(this::MultipleScrollSelectionHorizontalForm, graphics)
        local font = AllBinary.getFont(graphics)
        this.fontHeight = AllBinary.getHeight(font)
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function paintHorizontal(this::MultipleScrollSelectionHorizontalForm, graphics, index, item, dx, dy)
        local dx2::Int32 = AllBinary.paintItem(this, graphics, index, item, dx, dy) + this.border
        AllBinary.paint(this.paintable, graphics, index, dx, dy)
        dx = dx2
        return dx
end


function paintVertical(this::MultipleScrollSelectionHorizontalForm, graphics, index, item, dx, dy)
        AllBinary.paintItem(this, graphics, index, item, dx, dy)
        AllBinary.paint(this.paintable, graphics, index, dx, dy)
        return dx
end


function getStartIndex(this::MultipleScrollSelectionHorizontalForm)
        return AllBinary.getSelectedIndex(this)
end


function paint(this::MultipleScrollSelectionHorizontalForm, graphics)
        try
            AllBinary.process(this.myFontProcessor, graphics)
            local start::Int32 = AllBinary.getStartIndex(this)
            local size::Int32 = AllBinary.size(this)
            local dx::Int32 = this.x
            local dy::Int32 = this.y
            AllBinary.paint(this.rectPaintable, graphics)
            AllBinary.drawString(graphics, AllBinary.getTitle(this), this.x, this.y - this.fontHeight, Int32(0))
            local item = nothing
            let
                local index::Int32 = start
                while index < size
                try
                item = AllBinary.get(this, index)
                if dx >= AllBinary.getMaxX(this.rectangle)
                    if this.logged
                        nothing
                    else
                        this.logged = true
                        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "painting beyond maxx: "), ((AllBinary.getMaxX(this.rectangle)) % Int32))), this, this.canvasStrings.PAINT)
                    end
                end
                dx = AllBinary.paint(this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable, graphics, index, item, dx, dy)
                finally
                    index += Int32(1)
                end
                end
            end
        catch e
            AllBinary.put(PreLogUtil, this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT)
        end
        nothing
end

