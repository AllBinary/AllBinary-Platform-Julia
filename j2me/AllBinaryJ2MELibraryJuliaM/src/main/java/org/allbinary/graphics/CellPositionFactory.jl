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

mutable struct CellPositionFactory <: JObject
    logUtil::Any
    NONE::Any
    cellPositionArray::Any
    columns::Int32
    rows::Int32
    CellPositionFactory() = new()
end

const CellPositionFactory_SINGLETONValue = Ref{Any}(nothing)
const CellPositionFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{CellPositionFactory})
    if !CellPositionFactory_SINGLETONSet[]
        CellPositionFactory_SINGLETONSet[] = true
        CellPositionFactory_SINGLETONValue[] = newCellPositionFactory()
    end
    CellPositionFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{CellPositionFactory}, value)
    CellPositionFactory_SINGLETONSet[] = true
    CellPositionFactory_SINGLETONValue[] = value
end

function initFieldsCellPositionFactory(this::CellPositionFactory)
    this.logUtil = nothing
    this.NONE = nothing
    this.cellPositionArray = nothing
    this.columns = Int32(0)
    this.rows = Int32(0)
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.NONE = newCellPosition(-Int32(1), -Int32(1), -Int32(1), -Int32(1))
    this.cellPositionArray = jNewArrayOf(Vector{Any}, Int32(0), () -> jNewArray(Any, Int32(0), nothing))
    this.columns = Int32(0)
    this.rows = Int32(0)
    nothing
end


function getInstance(::Type{CellPositionFactory})
        return staticGet_SINGLETON(CellPositionFactory)
end


function initCellPositionFactory(this::CellPositionFactory)
        initFieldsCellPositionFactory(this)
        nothing
        nothing
end

function newCellPositionFactory()
    this = CellPositionFactory()
    initCellPositionFactory(this)
    this
end


function init(this::CellPositionFactory, columns, rows)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "Init: columns: ")
        AllBinary.appendint(stringBuffer, columns)
        AllBinary.append(stringBuffer, " rows: ")
        AllBinary.appendint(stringBuffer, rows)
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, commonStrings.INIT)
        this.cellPositionArray = jNewArrayOf(Vector{Any}, columns, () -> jNewArray(Any, rows, nothing))
        this.columns = columns
        this.rows = rows
        let
            local column::Int32 = Int32(0)
            while column < columns
            try
            let
                local row::Int32 = Int32(0)
                while row < rows
                try
                AllBinary.createInstance(this, column, row)
                finally
                    row += Int32(1)
                end
                end
            end
            finally
                column += Int32(1)
            end
            end
        end
        nothing
end


function getInstanceColRow(this::CellPositionFactory, i_column, i_row)
        try
            return this.cellPositionArray[i_column + 1][i_row + 1]
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(AllBinary.appendint(AllBinary.append(newStringMaker(), "columns: "), AllBinary.getColumns(this)), " rows: "), AllBinary.getRows(this)), " col: "), i_column), " row: "), i_row)), this, commonStrings.GET_INSTANCE, e)
            return this.NONE
        end
end


function createInstance(this::CellPositionFactory, i_column, i_row)
        local cellPositionCanBeNull = this.cellPositionArray[i_column + 1][i_row + 1]
        if cellPositionCanBeNull === nothing
            cellPositionCanBeNull = newCellPosition(i_column, i_row, this.columns, this.rows)
            this.cellPositionArray[i_column + 1][i_row + 1] = cellPositionCanBeNull
        end
        return cellPositionCanBeNull
end


function getColumns(this::CellPositionFactory)
        return this.columns
end


function getRows(this::CellPositionFactory)
        return this.rows
end

