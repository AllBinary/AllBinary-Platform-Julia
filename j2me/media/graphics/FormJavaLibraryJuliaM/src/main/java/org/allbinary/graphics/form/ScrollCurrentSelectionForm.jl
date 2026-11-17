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

# extends ScrollSelectionForm: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct ScrollCurrentSelectionForm <: JObject
    moveForSmallScreen::Bool
    updateMyFontProcessor::Any
    myFontProcessor::Any
    processor::Any
    preItemIndexDx::Any
    dx::Int32
    dy::Int32
    maxWidth::Int32
    ScrollCurrentSelectionForm() = new()
end


function initFieldsScrollCurrentSelectionForm(this::ScrollCurrentSelectionForm)
    this.moveForSmallScreen = false
    this.updateMyFontProcessor = nothing
    this.myFontProcessor = nothing
    this.processor = nothing
    this.preItemIndexDx = nothing
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.maxWidth = Int32(0)
    
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.processor = AllBinary.getInstance(Processor)
    this.preItemIndexDx = AllBinary.getInstance(ItemIndexDx)
    this.dx = Int32(0)
    this.dy = Int32(0)
    this.maxWidth = Int32(0)
    nothing
end


function initScrollCurrentSelectionForm(this::ScrollCurrentSelectionForm, title, items, formPaintableFactory, border, adjustedExtraBorder, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        initScrollSelectionForm(this, title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
        initFieldsScrollCurrentSelectionForm(this)
        this.moveForSmallScreen = moveForSmallScreen
        nothing
end

function newScrollCurrentSelectionForm(title, items, formPaintableFactory, border, adjustedExtraBorder, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
    this = ScrollCurrentSelectionForm()
    initScrollCurrentSelectionForm(this, title, items, formPaintableFactory, border, adjustedExtraBorder, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
    this
end


function init(this::ScrollCurrentSelectionForm, rectangle, formType)
        AllBinary.init(this, rectangle, formType)
        local formTypeFactory = AllBinary.getInstance(FormTypeFactory)
        if formType === formTypeFactory.TEMP_HORIZONTAL_FORM
            this.processor = newTempHorizontalFormProcessor(this)
            this.preItemIndexDx = newTempHorizontalItemIndexDx(this)
        elseif formType === formTypeFactory.HORIZONTAL_FORM
            this.processor = newHorizontalFormProcessor(this)
            this.preItemIndexDx = newHorizontalItemIndexDx(this)
        elseif formType === formTypeFactory.VERTICAL_CENTER_FORM
            this.processor = newVerticalFormProcessor(this)
            this.preItemIndexDx = newVerticalItemIndexDx(this)
        elseif formType === formTypeFactory.NULL_FORM_TYPE
            nothing
        else
            AllBinary.putF(this.logUtil, formTypeFactory.UNK, this, this.commonStrings.INIT)
        end
        this.myFontProcessor = this.updateMyFontProcessor
        nothing
end


function updateMeasurement(this::ScrollCurrentSelectionForm, graphics)
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function processTempHorizontalForm(this::ScrollCurrentSelectionForm)
        this.dx = this.x - Int32(30) + (AllBinary.getWidth(this.rectangle) >> Int32(1))
        this.dy = this.y
        nothing
end


function processHorizontalForm(this::ScrollCurrentSelectionForm)
        local size::Int32 = AllBinary.size(this)
        local totalWidth::Int32 = Int32(0)
        local item = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            item = AllBinary.get(this, index)
            totalWidth += AllBinary.getMinimumWidth(item) + this.border
            finally
                index += Int32(1)
            end
            end
        end
        this.dx = this.x + (AllBinary.getWidth(this.rectangle) >> Int32(1)) - (totalWidth >> Int32(1))
        this.dy = this.y + (AllBinary.getHeight(this.rectangle) >> Int32(1))
        if this.moveForSmallScreen
            local maxTitleHeight::Int32 = Int32(175)
            if this.dy < maxTitleHeight
                this.dy = maxTitleHeight
            end
        end
        nothing
end


function processVerticalForm(this::ScrollCurrentSelectionForm)
        local totalHeight::Int32 = Int32(0)
        local size::Int32 = AllBinary.size(this)
        local item2 = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            item2 = AllBinary.get(this, index)
            if this.maxWidth < AllBinary.getMinimumWidth(item2)
                this.maxWidth = AllBinary.getMinimumWidth(item2)
            end
            totalHeight += AllBinary.getMinimumHeight(item2) + this.border
            finally
                index += Int32(1)
            end
            end
        end
        this.dx = ((AllBinary.getWidth(this.rectangle) - this.maxWidth) ÷ Int32(2))
        if AllBinary.size(this) > Int32(0)
            this.dy = this.y + ((AllBinary.getHeight(this.rectangle) - totalHeight) ÷ Int32(2))
            if this.moveForSmallScreen
                local maxTitleHeight::Int32 = Int32(175)
                if this.dy < maxTitleHeight
                    this.dy = maxTitleHeight
                end
            end
        else
            this.dy = this.y
        end
        nothing
end


function getXTempHorizontalForm(this::ScrollCurrentSelectionForm, index, item, dx, dy)
        return AllBinary.getDiffX(this, item)
end


function getXHorizontalForm(this::ScrollCurrentSelectionForm, index, item, dx, dy)
        return Int32(0)
end


function getXVerticalForm(this::ScrollCurrentSelectionForm, index, item, dx, dy)
        return AllBinary.getDiffX(this, item) + this.halfBorder
end


function getDiffX(this::ScrollCurrentSelectionForm, item)
        return ((this.maxWidth - AllBinary.getMinimumWidth(item)) >> Int32(1))
end


function getDx(this::ScrollCurrentSelectionForm)
        return this.dx
end


function getDy(this::ScrollCurrentSelectionForm)
        return this.dy
end


function paint(this::ScrollCurrentSelectionForm, graphics)
        try
            AllBinary.process(this.processor)
            local delta::Int32 = Int32(0)
            local deltaX::Int32 = AllBinary.getDx(this)
            local deltaY::Int32 = AllBinary.getDy(this)
            local size::Int32 = AllBinary.size(this)
            local formTypeFactory = AllBinary.getInstance(FormTypeFactory)
            local item = nothing
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                item = AllBinary.get(this, index)
                local diffX::Int32 = AllBinary.getDx(this.preItemIndexDx, index, item, this.dx, this.dy)
                if index == AllBinary.getSelectedIndex(this)
                    delta = AllBinary.paintItem(this, graphics, index, item, deltaX + diffX, deltaY)
                    AllBinary.paint(this.paintable, graphics, index, deltaX + diffX, deltaY)
                else
                    delta = AllBinary.paintUnselectedItem(this, graphics, index, item, deltaX + diffX, deltaY)
                    AllBinary.paint(this.paintable, graphics, index, deltaX + diffX, deltaY)
                end
                if this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM
                    nothing
                elseif this.formType == formTypeFactory.HORIZONTAL_FORM
                    deltaX = delta
                elseif this.formType == formTypeFactory.VERTICAL_CENTER_FORM
                    deltaY = delta
                else
                    throw(jNewException("Exception", formTypeFactory.UNK))
                end
                finally
                    index += Int32(1)
                end
                end
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT, e)
        end
        nothing
end

