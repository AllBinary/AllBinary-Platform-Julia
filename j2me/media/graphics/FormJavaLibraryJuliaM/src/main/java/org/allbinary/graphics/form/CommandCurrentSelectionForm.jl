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

# extends ScrollCurrentSelectionForm: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CommandCurrentSelectionForm <: JObject
    selectedAnimationArray::Any
    unSelectedAnimationArray::Any
    CommandCurrentSelectionForm() = new()
end


function initFieldsCommandCurrentSelectionForm(this::CommandCurrentSelectionForm)
    this.selectedAnimationArray = nothing
    this.unSelectedAnimationArray = nothing
    this.selectedAnimationArray = jNewArray(Any, Int32(16), nothing)
    this.unSelectedAnimationArray = jNewArray(Any, Int32(16), nothing)
    nothing
end


function initCommandCurrentSelectionForm(this::CommandCurrentSelectionForm, title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        initScrollCurrentSelectionForm(this, title, items, AllBinary.getInstance(ItemPaintableFactory), border, -Int32(3), moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        initFieldsCommandCurrentSelectionForm(this)
        AllBinary.initAnimations(this)
        AllBinary.addAll(this, items)
        nothing
end

function newCommandCurrentSelectionForm(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
    this = CommandCurrentSelectionForm()
    initCommandCurrentSelectionForm(this, title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
    this
end


function updateMeasurement(this::CommandCurrentSelectionForm, graphics)
        AllBinary.updateAll(this, graphics, AllBinary.getAllitems(this))
        AllBinary.updateMeasurement(this, graphics)
        nothing
end


function initAnimations(this::CommandCurrentSelectionForm)
        local nullAnimation = AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
        let
            local index::Int32 = Int32(Base.length(this.selectedAnimationArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            this.selectedAnimationArray[index + 1] = nullAnimation
            finally
            end
            end
        end
        let
            index = Int32(Base.length(this.unSelectedAnimationArray))
            while (index -= Int32(1)) >= Int32(0)
            try
            this.unSelectedAnimationArray[index + 1] = nullAnimation
            finally
            end
            end
        end
        nothing
end


function addAll(this::CommandCurrentSelectionForm, items)
        let
            local index::Int32 = Int32(Base.length(items))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.addAt(this, index, items[index + 1])
            finally
            end
            end
        end
        nothing
end


function addAt(this::CommandCurrentSelectionForm, index, item)
        local basicColorFactory = AllBinary.getInstance(BasicColorFactory)
        local buttonColor = basicColorFactory.TRANSPARENT_GREY
        local selectedButtonColor = basicColorFactory.TRANSPARENT_RED
        local width::Int32 = AllBinary.getMinimumWidth(item)
        local height::Int32 = AllBinary.getMinimumHeight(item)
        local adjustedBorder::Int32 = Int32(3)
        local offset::Int32 = -(this.halfBorder + adjustedBorder)
        local rectWidth::Int32 = width + this.border - adjustedBorder
        local rectHeight::Int32 = height + this.border - adjustedBorder
        if AllBinary.isJ2ME(J2MEUtil) || AllBinary.isHTML(J2MEUtil)
            this.selectedAnimationArray[index + 1] = newRectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        else
            this.selectedAnimationArray[index + 1] = newRectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        end
        adjustedBorder = Int32(4)
        if AllBinary.isJ2ME(J2MEUtil) || AllBinary.isHTML(J2MEUtil)
            this.unSelectedAnimationArray[index + 1] = newRectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor)
        else
            this.unSelectedAnimationArray[index + 1] = newRectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor)
        end
        nothing
end


function updateAll(this::CommandCurrentSelectionForm, graphics, items)
        let
            local index::Int32 = Int32(Base.length(items))
            while (index -= Int32(1)) >= Int32(0)
            try
            AllBinary.preMeasurement(items[index + 1], graphics)
            AllBinary.updateAt(this, index, items[index + 1])
            finally
            end
            end
        end
        nothing
end


function updateAt(this::CommandCurrentSelectionForm, index, item)
        local basicColorFactory = AllBinary.getInstance(BasicColorFactory)
        local buttonColor = basicColorFactory.TRANSPARENT_GREY
        local selectedButtonColor = basicColorFactory.TRANSPARENT_RED
        local width::Int32 = AllBinary.getMinimumWidth(item)
        local height::Int32 = AllBinary.getMinimumHeight(item)
        local adjustedBorder::Int32 = Int32(3)
        local offset::Int32 = -(this.halfBorder + adjustedBorder)
        local rectWidth::Int32 = width + this.border - adjustedBorder
        local rectHeight::Int32 = height + this.border - adjustedBorder
        if AllBinary.isJ2ME(J2MEUtil) || AllBinary.isHTML(J2MEUtil)
            rectangleAdjustedAnimation = (this.selectedAnimationArray[index + 1])
            AllBinary.setWidth(rectangleAdjustedAnimation, rectWidth)
            AllBinary.setHeight(rectangleAdjustedAnimation, rectHeight)
            AllBinary.setOffsetX(rectangleAdjustedAnimation, offset)
            AllBinary.setOffsetY(rectangleAdjustedAnimation, offset)
            AllBinary.setBasicColorP(rectangleAdjustedAnimation, selectedButtonColor)
        else
            local rectangleAdjustedAnimation = (this.selectedAnimationArray[index + 1])
            AllBinary.setWidth(rectangleAdjustedAnimation, rectWidth)
            AllBinary.setHeight(rectangleAdjustedAnimation, rectHeight)
            AllBinary.setOffsetX(rectangleAdjustedAnimation, offset)
            AllBinary.setOffsetY(rectangleAdjustedAnimation, offset)
            AllBinary.setBasicColorP(rectangleAdjustedAnimation, selectedButtonColor)
        end
        adjustedBorder = Int32(4)
        if AllBinary.isJ2ME(J2MEUtil) || AllBinary.isHTML(J2MEUtil)
            rectangleAdjustedAnimation = (this.unSelectedAnimationArray[index + 1])
            AllBinary.setWidth(rectangleAdjustedAnimation, rectWidth)
            AllBinary.setHeight(rectangleAdjustedAnimation, rectHeight)
            AllBinary.setOffsetX(rectangleAdjustedAnimation, offset)
            AllBinary.setOffsetY(rectangleAdjustedAnimation, offset)
            AllBinary.setBasicColorP(rectangleAdjustedAnimation, buttonColor)
        else
            rectangleAdjustedAnimation = (this.unSelectedAnimationArray[index + 1])
            AllBinary.setWidth(rectangleAdjustedAnimation, rectWidth)
            AllBinary.setHeight(rectangleAdjustedAnimation, rectHeight)
            AllBinary.setOffsetX(rectangleAdjustedAnimation, offset)
            AllBinary.setOffsetY(rectangleAdjustedAnimation, offset)
            AllBinary.setBasicColorP(rectangleAdjustedAnimation, buttonColor)
        end
        nothing
end


function getSelectedCommand(this::CommandCurrentSelectionForm)
        local index::Int32 = AllBinary.getSelectedIndex(this)
        local commandTextItem = (AllBinary.get(this, index))
        return AllBinary.getCommand(commandTextItem)
end


function append(this::CommandCurrentSelectionForm, item)
        local result::Int32 = AllBinary.append(this, item)
        AllBinary.addAt(this, result, item)
        return result
end


function delete(this::CommandCurrentSelectionForm, itemNum)
        AllBinary.delete(this, itemNum)
        nothing
end


function deleteAll(this::CommandCurrentSelectionForm)
        AllBinary.initAnimations(this)
        AllBinary.deleteAll(this)
        nothing
end


function insert(this::CommandCurrentSelectionForm, itemNum, item)
        AllBinary.insert(this, itemNum, item)
        nothing
end


function set(this::CommandCurrentSelectionForm, itemNum, item)
        AllBinary.set(this, itemNum, item)
        nothing
end


function paint(this::CommandCurrentSelectionForm, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        AllBinary.paint(this, graphics)
        nothing
end


function paintItem(this::CommandCurrentSelectionForm, graphics, index, item, x, y)
        AllBinary.paintXY(this.selectedAnimationArray[index + 1], graphics, x, y)
        return AllBinary.paintItem(this, graphics, index, item, x, y)
end


function paintUnselectedItem(this::CommandCurrentSelectionForm, graphics, index, item, x, y)
        AllBinary.paintXY(this.unSelectedAnimationArray[index + 1], graphics, x, y)
        return AllBinary.paintUnselectedItem(this, graphics, index, item, x, y)
end

