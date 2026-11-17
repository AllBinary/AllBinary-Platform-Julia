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
# package org.allbinary.graphics

# extends V: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CellPosition <: JObject
    id::Int32
    column::Int32
    row::Int32
    CellPosition() = new()
end


function initFieldsCellPosition(this::CellPosition)
    this.id = Int32(0)
    this.column = Int32(0)
    this.row = Int32(0)
    
    
    
    nothing
end


function initCellPosition(this::CellPosition, column, row, columns, rows)
        initV(this)
        initFieldsCellPosition(this)
        this.column = column
        this.row = row
        this.id = (row * columns) + column
        nothing
end

function newCellPosition(column, row, columns, rows)
    this = CellPosition()
    initCellPosition(this, column, row, columns, rows)
    this
end


function getColumn(this::CellPosition)
        return this.column
end


function getRow(this::CellPosition)
        return this.row
end


function toString(this::CellPosition)
        return AllBinary.toStringColRow(CellPosition, AllBinary.getColumn(this), AllBinary.getRow(this))
end


function toStringCellPosition(::Type{CellPosition}, basicGeographicMapCellPosition)
        return AllBinary.toStringColRow(CellPosition, AllBinary.getColumn(basicGeographicMapCellPosition), AllBinary.getRow(basicGeographicMapCellPosition))
end


function toStringColRow(::Type{CellPosition}, i_column, i_row)
        local stringBuffer = newStringMaker()
        local commonSeps = AllBinary.getInstance(CommonSeps)
        AllBinary.append(stringBuffer, commonSeps.PARENTHESIS_OPEN)
        AllBinary.appendint(stringBuffer, i_column)
        AllBinary.append(stringBuffer, commonSeps.COMMA)
        AllBinary.appendint(stringBuffer, i_row)
        AllBinary.append(stringBuffer, commonSeps.PARENTHESIS_CLOSE)
        return AllBinary.toString(stringBuffer)
end


function getId(this::CellPosition)
        return this.id
end

