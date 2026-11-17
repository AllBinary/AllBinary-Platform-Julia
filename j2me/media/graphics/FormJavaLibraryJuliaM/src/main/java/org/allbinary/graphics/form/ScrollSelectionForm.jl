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
# package org.allbinary.graphics.form

# extends PaintableForm: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ScrollSelectionForm <: JObject
    rectangleCollisionUtil::Any
    border::Int32
    halfBorder::Int32
    buttonBasicColor::Any
    scrollSelectionFormFormTypeItemIndexPaintable::Any
    formTypeItemIndexDx::Any
    paintable::Any
    adjustedExtraBorder::Int32
    ScrollSelectionForm() = new()
end

const ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMValue = Ref{Any}(nothing)
const ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMSet = Ref(false)
function staticGet_NULL_SCROLL_SELECTION_FORM(::Type{ScrollSelectionForm})
    if !ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMSet[]
        ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMSet[] = true
        ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMValue[]
end
function staticSet_NULL_SCROLL_SELECTION_FORM(::Type{ScrollSelectionForm}, value)
    ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMSet[] = true
    ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMValue[] = value
end
const ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue = Ref{Any}(nothing)
const ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet = Ref(false)
function staticGet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(::Type{ScrollSelectionForm})
    if !ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet[]
        ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet[] = true
        ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue[]
end
function staticSet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(::Type{ScrollSelectionForm}, value)
    ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet[] = true
    ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue[] = value
end
const ScrollSelectionForm_INSIDE_FORMValue = Ref{Any}(nothing)
const ScrollSelectionForm_INSIDE_FORMSet = Ref(false)
function staticGet_INSIDE_FORM(::Type{ScrollSelectionForm})
    if !ScrollSelectionForm_INSIDE_FORMSet[]
        ScrollSelectionForm_INSIDE_FORMSet[] = true
        ScrollSelectionForm_INSIDE_FORMValue[] = " inside form"
    end
    ScrollSelectionForm_INSIDE_FORMValue[]
end
function staticSet_INSIDE_FORM(::Type{ScrollSelectionForm}, value)
    ScrollSelectionForm_INSIDE_FORMSet[] = true
    ScrollSelectionForm_INSIDE_FORMValue[] = value
end
const ScrollSelectionForm_IS_IN_FORMValue = Ref{Any}(nothing)
const ScrollSelectionForm_IS_IN_FORMSet = Ref(false)
function staticGet_IS_IN_FORM(::Type{ScrollSelectionForm})
    if !ScrollSelectionForm_IS_IN_FORMSet[]
        ScrollSelectionForm_IS_IN_FORMSet[] = true
        ScrollSelectionForm_IS_IN_FORMValue[] = "isInForm"
    end
    ScrollSelectionForm_IS_IN_FORMValue[]
end
function staticSet_IS_IN_FORM(::Type{ScrollSelectionForm}, value)
    ScrollSelectionForm_IS_IN_FORMSet[] = true
    ScrollSelectionForm_IS_IN_FORMValue[] = value
end
const ScrollSelectionForm_GET_SELECTED_INDEXValue = Ref{Any}(nothing)
const ScrollSelectionForm_GET_SELECTED_INDEXSet = Ref(false)
function staticGet_GET_SELECTED_INDEX(::Type{ScrollSelectionForm})
    if !ScrollSelectionForm_GET_SELECTED_INDEXSet[]
        ScrollSelectionForm_GET_SELECTED_INDEXSet[] = true
        ScrollSelectionForm_GET_SELECTED_INDEXValue[] = "getSelectedIndexForPoint"
    end
    ScrollSelectionForm_GET_SELECTED_INDEXValue[]
end
function staticSet_GET_SELECTED_INDEX(::Type{ScrollSelectionForm}, value)
    ScrollSelectionForm_GET_SELECTED_INDEXSet[] = true
    ScrollSelectionForm_GET_SELECTED_INDEXValue[] = value
end

function initFieldsScrollSelectionForm(this::ScrollSelectionForm)
    this.rectangleCollisionUtil = nothing
    this.border = Int32(0)
    this.halfBorder = Int32(0)
    this.buttonBasicColor = nothing
    this.scrollSelectionFormFormTypeItemIndexPaintable = nothing
    this.formTypeItemIndexDx = nothing
    this.paintable = nothing
    this.adjustedExtraBorder = Int32(0)
    this.rectangleCollisionUtil = AllBinary.getInstance(RectangleCollisionUtil)
    
    
    
    this.scrollSelectionFormFormTypeItemIndexPaintable = AllBinary.getInstance(ItemIndexPaintable)
    this.formTypeItemIndexDx = AllBinary.getInstance(ItemIndexDx)
    this.paintable = AllBinary.getInstance(ItemPaintableFactory)
    
    nothing
end


function createForm(::Type{ScrollSelectionForm}, title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor)
        try
            if formPaintableFactory === AllBinary.getInstance(ItemPaintableFactory)
                return newScrollSelectionForm(title, items, formPaintableFactory, border, -Int32(3), backgroundBasicColor, foregroundBasicColor)
            else
                local commonStrings = AllBinary.getInstance(CommonStrings)
                local logUtil = AllBinary.getInstance(LogUtil)
                AllBinary.putF(logUtil, commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION)
                return AllBinary.getNullPaintableForm(PaintableForm)
            end
        catch e
            commonStrings = AllBinary.getInstance(CommonStrings)
            logUtil = AllBinary.getInstance(LogUtil)
            AllBinary.put(logUtil, commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION, e)
            return AllBinary.getNullPaintableForm(PaintableForm)
        end
end


function getNullScrollSelectionForm(::Type{ScrollSelectionForm})
        if staticGet_NULL_SCROLL_SELECTION_FORM(ScrollSelectionForm) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_SCROLL_SELECTION_FORM(ScrollSelectionForm, AllBinary.createForm(ScrollSelectionForm, AllBinary.getInstance(StringUtil).EMPTY_STRING, jNewArray(Any, Int32(0), nothing), AllBinary.getInstance(ItemPaintableFactory), Int32(0), AllBinary.getInstance(BasicColorFactory).BLACK, AllBinary.getInstance(BasicColorFactory).WHITE))
        end
        return (staticGet_NULL_SCROLL_SELECTION_FORM(ScrollSelectionForm))
end


function getNullScrollSelectionFormHorizontal(::Type{ScrollSelectionForm})
        if staticGet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(ScrollSelectionForm) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(ScrollSelectionForm, AllBinary.createForm(ScrollSelectionForm, AllBinary.getInstance(StringUtil).EMPTY_STRING, jNewArray(Any, Int32(0), nothing), AllBinary.getInstance(ItemPaintableFactory), Int32(0), AllBinary.getInstance(BasicColorFactory).BLACK, AllBinary.getInstance(BasicColorFactory).WHITE))
        end
        return (staticGet_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(ScrollSelectionForm))
end


function initScrollSelectionForm(this::ScrollSelectionForm, title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
        initPaintableForm(this, title, items, backgroundBasicColor, foregroundBasicColor)
        initFieldsScrollSelectionForm(this)
        this.adjustedExtraBorder = adjustedExtraBorder
        this.buttonBasicColor = foregroundBasicColor
        this.border = border
        this.halfBorder = (border >> Int32(1))
        this.paintable = AllBinary.getInstanceItemPaintable(formPaintableFactory, this)
        nothing
end

function newScrollSelectionForm(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
    this = ScrollSelectionForm()
    initScrollSelectionForm(this, title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
    this
end


function init(this::ScrollSelectionForm, rectangle, formType)
        AllBinary.init(this, rectangle, formType)
        local formTypeFactory = AllBinary.getInstance(FormTypeFactory)
        if formType === formTypeFactory.HORIZONTAL_FORM
            this.scrollSelectionFormFormTypeItemIndexPaintable = newScrollSelectionFormHorizontalPaintable(this)
            this.formTypeItemIndexDx = newScrollSelectionFormHorizontalDx(this)
        elseif formType === formTypeFactory.VERTICAL_CENTER_FORM
            this.scrollSelectionFormFormTypeItemIndexPaintable = newScrollSelectionFormVerticalPaintable(this)
            this.formTypeItemIndexDx = newScrollSelectionFormVericalDx(this)
        elseif formType === formTypeFactory.TEMP_HORIZONTAL_FORM
            this.scrollSelectionFormFormTypeItemIndexPaintable = newScrollSelectionFormTempHorizontalPaintable(this)
            this.formTypeItemIndexDx = newScrollSelectionFormTempHorizontalDx(this)
        elseif formType === formTypeFactory.NULL_FORM_TYPE
            nothing
        else
            throw(jNewException("Exception", formTypeFactory.UNK))
        end
        nothing
end


function paintItemHorizontal(this::ScrollSelectionForm, graphics, index, item, x, y)
        local width::Int32 = AllBinary.getMinimumWidth(item)
        return x + width + this.border
end


function paintItemVertical(this::ScrollSelectionForm, graphics, index, item, x, y)
        local height::Int32 = AllBinary.getMinimumHeight(item)
        return y + height + this.border
end


function paintItemTempHorizontal(this::ScrollSelectionForm, graphics, index, item, x, y)
        return Int32(0)
end


function getSelectedIndexForPointHorizontalDx(this::ScrollSelectionForm, index, item, dx, dy)
        return dx - this.halfBorder
end


function getSelectedIndexForPointVerticalDx(this::ScrollSelectionForm, index, item, dx, dy)
        return dx + AllBinary.getDiffX(this, item)
end


function getSelectedIndexForPointTempHorizontalDx(this::ScrollSelectionForm, index, item, dx, dy)
        return dx + AllBinary.getDiffX(this, item)
end


function append(this::ScrollSelectionForm, item)
        return AllBinary.append(this, item)
end


function getSelectedItem(this::ScrollSelectionForm, point)
        local index::Int32 = AllBinary.getSelectedIndexForPoint(this, point)
        if index != -Int32(1)
            return AllBinary.get(this, index)
        else
            return AllBinary.getNullInstance(ABCustomItem)
        end
end


function getItemIndex(this::ScrollSelectionForm, item)
        local nextItem = nothing
        local size::Int32 = AllBinary.size(this)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            nextItem = (AllBinary.get(this, index))
            if nextItem === item
                return index
            end
            finally
                index += Int32(1)
            end
            end
        end
        return -Int32(1)
end


function getStartIndex(this::ScrollSelectionForm)
        return Int32(0)
end


function getSelectedIndexForPoint(this::ScrollSelectionForm, point)
        local start::Int32 = AllBinary.getStartIndex(this)
        local size::Int32 = AllBinary.size(this)
        local dx::Int32 = AllBinary.getDx(this)
        local dy::Int32 = AllBinary.getDy(this)
        local formTypeFactory = AllBinary.getInstance(FormTypeFactory)
        local commonLabels = AllBinary.getInstance(CommonLabels)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, commonLabels.START_LABEL)
        AllBinary.appendint(stringBuffer, start)
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, commonLabels.TOTAL_LABEL)
        AllBinary.appendint(stringBuffer, size)
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, staticGet_GET_SELECTED_INDEX(ScrollSelectionForm))
        local item = nothing
        local width::Int32 = Int32(0)
        local height::Int32 = Int32(0)
        local diffX::Int32 = Int32(0)
        let
            local index::Int32 = start
            while index < size
            try
            item = AllBinary.get(this, index)
            width = AllBinary.getMinimumWidth(item)
            height = AllBinary.getMinimumHeight(item)
            diffX = AllBinary.getDx(this.formTypeItemIndexDx, index, item, dx, dy)
            if AllBinary.isInside(this.rectangleCollisionUtil, diffX, dy - this.halfBorder, diffX + width + this.border, dy + height + this.halfBorder + Int32(1), AllBinary.getX(point), AllBinary.getY(point))
                AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
                AllBinary.append(stringBuffer, commonLabels.ITEM_LABEL)
                AllBinary.append(stringBuffer, AllBinary.getLabel(item))
                AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
                AllBinary.append(stringBuffer, commonLabels.INDEX_LABEL)
                AllBinary.appendint(stringBuffer, index)
                AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, staticGet_GET_SELECTED_INDEX(ScrollSelectionForm))
                return index
            end
            if this.formType == formTypeFactory.HORIZONTAL_FORM
                dx = dx + width + this.border
                if dx > AllBinary.getMaxX(this.rectangle)
                    break
                end
            elseif this.formType == formTypeFactory.VERTICAL_CENTER_FORM
                dy = dy + height + this.border
                if dy > AllBinary.getMaxY(this.rectangle)
                    break
                end
            elseif this.formType == formTypeFactory.NULL_FORM_TYPE
                nothing
            else
                throw(jNewException("Exception", formTypeFactory.UNK))
            end
            finally
                index += Int32(1)
            end
            end
        end
        return -Int32(1)
end


function processInputKey(this::ScrollSelectionForm, gameKeyCode)
        local formTypeFactory = AllBinary.getInstance(FormTypeFactory)
        if AllBinary.size(this) == Int32(0)
            return -Int32(1)
        end
        local index::Int32 = AllBinary.getSelectedIndex(this)
        if this.formType == formTypeFactory.HORIZONTAL_FORM || this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM
            if gameKeyCode == staticGet_RIGHT(Canvas)
                index += Int32(1)
            elseif gameKeyCode == staticGet_LEFT(Canvas)
                index -= Int32(1)
            end
        elseif this.formType == formTypeFactory.VERTICAL_CENTER_FORM
            if gameKeyCode == staticGet_DOWN(Canvas)
                index += Int32(1)
            elseif gameKeyCode == staticGet_UP(Canvas)
                index -= Int32(1)
            end
        elseif this.formType == formTypeFactory.NULL_FORM_TYPE
            nothing
        else
            throw(jNewException("Exception", formTypeFactory.UNK))
        end
        local max::Int32 = AllBinary.size(this) - Int32(1)
        if index < Int32(0)
            AllBinary.setSelectedIndex(this, Int32(0))
        elseif index > max
            AllBinary.setSelectedIndex(this, max)
        else
            AllBinary.setSelectedIndex(this, index)
        end
        return -Int32(1)
end


function isInForm(this::ScrollSelectionForm, point)
        if AllBinary.isInside(this.rectangleCollisionUtil, this.x, this.y - this.halfBorder, AllBinary.getMaxX(this.rectangle) + this.border, AllBinary.getMaxY(this.rectangle) + this.border, AllBinary.getX(point), AllBinary.getY(point))
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.toString(AllBinary.getInstance(StringUtil), point)), staticGet_INSIDE_FORM(ScrollSelectionForm))), this, staticGet_IS_IN_FORM(ScrollSelectionForm))
            return true
        end
        return false
end


function paintItem(this::ScrollSelectionForm, graphics, index, item, x, y)
        AllBinary.paintXY(item, graphics, x, y)
        local width::Int32 = AllBinary.getMinimumWidth(item)
        local height::Int32 = AllBinary.getMinimumHeight(item)
        AllBinary.setColor(graphics, AllBinary.intValue(AllBinary.getButtonBasicColor(this)))
        local adjustedBorder::Int32 = Int32(3)
        AllBinary.drawRect(graphics, x - this.halfBorder - adjustedBorder, y - this.halfBorder - adjustedBorder, width + this.border + this.adjustedExtraBorder, height + this.border + this.adjustedExtraBorder)
        return AllBinary.paint(this.scrollSelectionFormFormTypeItemIndexPaintable, graphics, index, item, x, y)
end


function paintUnselectedItem(this::ScrollSelectionForm, graphics, index, item, x, y)
        AllBinary.setColor(graphics, AllBinary.intValue(AllBinary.getButtonBasicColor(this)))
        AllBinary.paintUnselected(item, graphics, x, y)
        return AllBinary.paint(this.scrollSelectionFormFormTypeItemIndexPaintable, graphics, index, item, x, y)
end


function getDiffX(this::ScrollSelectionForm, item)
        return Int32(0)
end


function getDx(this::ScrollSelectionForm)
        return this.x
end


function getDy(this::ScrollSelectionForm)
        return this.y
end


function setButtonBasicColor(this::ScrollSelectionForm, buttonBasicColor)
        this.buttonBasicColor = buttonBasicColor
        nothing
end


function getButtonBasicColor(this::ScrollSelectionForm)
        return this.buttonBasicColor
end

