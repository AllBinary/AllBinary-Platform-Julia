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

mutable struct TouchButtonLocationHelper <: JObject
    totalColumns::Int32
    totalRows::Int32
    columnsRemainder::Int32
    rowsRemainder::Int32
    columnsRemainderHalf::Int32
    rowsRemainderHalf::Int32
    TouchButtonLocationHelper() = new()
end


function initFieldsTouchButtonLocationHelper(this::TouchButtonLocationHelper)
    this.totalColumns = Int32(0)
    this.totalRows = Int32(0)
    this.columnsRemainder = Int32(0)
    this.rowsRemainder = Int32(0)
    this.columnsRemainderHalf = Int32(0)
    this.rowsRemainderHalf = Int32(0)
    
    
    
    
    
    
    nothing
end


function initTouchButtonLocationHelper(this::TouchButtonLocationHelper)
        initFieldsTouchButtonLocationHelper(this)
        local buttonSize::Int32 = AllBinary.getInstance(CommonButtons).STANDARD_BUTTON_SIZE
        local displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
        this.totalColumns = Base.round(Float32(AllBinary.getLastWidth(displayInfo)) ÷ Float32(buttonSize))
        this.totalRows = Base.round(Float32(AllBinary.getLastHeight(displayInfo)) ÷ Float32(buttonSize))
        this.columnsRemainder = AllBinary.getLastWidth(displayInfo) % buttonSize
        this.columnsRemainderHalf = (this.columnsRemainder >> Int32(1))
        this.rowsRemainder = AllBinary.getLastHeight(displayInfo) % buttonSize
        this.rowsRemainderHalf = (this.rowsRemainder >> Int32(1))
        nothing
end

function newTouchButtonLocationHelper()
    this = TouchButtonLocationHelper()
    initTouchButtonLocationHelper(this)
    this
end


function getTotalColumns(this::TouchButtonLocationHelper)
        return this.totalColumns
end


function getTotalRows(this::TouchButtonLocationHelper)
        return this.totalRows
end


function getColumnsRemainder(this::TouchButtonLocationHelper)
        return this.columnsRemainder
end


function getRowsRemainder(this::TouchButtonLocationHelper)
        return this.rowsRemainder
end


function getColumnsRemainderHalf(this::TouchButtonLocationHelper)
        return this.columnsRemainderHalf
end


function getRowsRemainderHalf(this::TouchButtonLocationHelper)
        return this.rowsRemainderHalf
end


function toString(this::TouchButtonLocationHelper)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "totalColumns: ")
        AllBinary.appendint(stringBuffer, this.totalColumns)
        AllBinary.append(stringBuffer, " totalRows: ")
        AllBinary.appendint(stringBuffer, this.totalRows)
        AllBinary.append(stringBuffer, " columnsRemainder: ")
        AllBinary.appendint(stringBuffer, this.columnsRemainder)
        AllBinary.append(stringBuffer, " rowsRemainder: ")
        AllBinary.appendint(stringBuffer, this.rowsRemainder)
        AllBinary.append(stringBuffer, " columnsRemainderHalf: ")
        AllBinary.appendint(stringBuffer, this.columnsRemainderHalf)
        AllBinary.append(stringBuffer, " rowsRemainderHalf: ")
        AllBinary.appendint(stringBuffer, this.rowsRemainderHalf)
        return AllBinary.toString(stringBuffer)
end

