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
# package org.allbinary.input.motion.button

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TouchButtonsMappingPaintable <: JObject
    logUtil::Any
    foregroundColor::Int32
    paintableTable::Any
    touchButtonLocationHelper::Any
    TouchButtonsMappingPaintable() = new()
end


function initFieldsTouchButtonsMappingPaintable(this::TouchButtonsMappingPaintable)
    this.logUtil = nothing
    this.foregroundColor = Int32(0)
    this.paintableTable = nothing
    this.touchButtonLocationHelper = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    this.paintableTable = jNewArrayOf(Vector{Any}, Int32(0), () -> jNewArray(Any, Int32(0), nothing))
    this.touchButtonLocationHelper = newTouchButtonLocationHelper()
    nothing
end


function initTouchButtonsMappingPaintable(this::TouchButtonsMappingPaintable, basicColor)
        initPaintable(this)
        initFieldsTouchButtonsMappingPaintable(this)
        this.foregroundColor = AllBinary.intValue(basicColor)
        AllBinary.init(this)
        nothing
end

function newTouchButtonsMappingPaintable(basicColor)
    this = TouchButtonsMappingPaintable()
    initTouchButtonsMappingPaintable(this, basicColor)
    this
end


function init(this::TouchButtonsMappingPaintable)
        try
            this.paintableTable = AllBinary.createPaintableTable(this)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, "updateRectangle", e)
        end
        nothing
end


function createPaintableTable(this::TouchButtonsMappingPaintable)
        local totalColumns::Int32 = AllBinary.getTotalColumns(this.touchButtonLocationHelper)
        local totalRows::Int32 = AllBinary.getTotalRows(this.touchButtonLocationHelper)
        local paintableTable = jNewArrayOf(Vector{Any}, totalColumns, () -> jNewArray(Any, totalRows, nothing))
        local cellPositionFactory = AllBinary.getInstance(CellPositionFactory)
        local commonButtons = AllBinary.getInstance(CommonButtons)
        let
            local index::Int32 = totalColumns - Int32(1)
            while index >= Int32(0)
            try
            let
                local rowIndex::Int32 = totalRows - Int32(1)
                while rowIndex >= Int32(0)
                try
                this.paintableTable[index + 1][rowIndex + 1] = AllBinary.createButton(TouchButton, AllBinary.getInstance(BasicTouchInputFactory).NONE, AllBinary.getInstance(TouchButtonBlankResource), commonButtons.NORMAL_BUTTON, AllBinary.getInstanceColRow(cellPositionFactory, index, rowIndex), AllBinary.getColumnsRemainderHalf(this.touchButtonLocationHelper), AllBinary.getRowsRemainderHalf(this.touchButtonLocationHelper))
                finally
                    rowIndex -= Int32(1)
                end
                end
            end
            finally
                index -= Int32(1)
            end
            end
        end
        return paintableTable
end


function paint(this::TouchButtonsMappingPaintable, graphics)
        local totalColumns::Int32 = AllBinary.getTotalColumns(this.touchButtonLocationHelper)
        local totalRows::Int32 = AllBinary.getTotalRows(this.touchButtonLocationHelper)
        let
            local index::Int32 = totalColumns - Int32(1)
            while index >= Int32(0)
            try
            let
                local rowIndex::Int32 = totalRows - Int32(1)
                while rowIndex >= Int32(0)
                try
                AllBinary.paint(this.paintableTable[index + 1][rowIndex + 1], graphics)
                finally
                    rowIndex -= Int32(1)
                end
                end
            end
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end

