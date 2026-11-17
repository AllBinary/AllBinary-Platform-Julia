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

mutable struct BasicTouchButtonCellPositionFactory <: JObject
    logUtil::Any
    commonStrings::Any
    TOP_RIGHT::Any
    TOP_LEFT::Any
    SECOND_FROM_TOP_LEFT::Any
    SECOND_FROM_TOP_RIGHT::Any
    TOP_SECOND_FROM_LEFT::Any
    TOP_SECOND_FROM_RIGHT::Any
    BOTTOM_RIGHT::Any
    BOTTOM_SECOND_FROM_RIGHT::Any
    SECOND_FROM_BOTTOM_RIGHT::Any
    THIRD_FROM_BOTTOM_RIGHT::Any
    FOURTH_FROM_BOTTOM_RIGHT::Any
    SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT::Any
    SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT::Any
    SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT::Any
    BOTTOM_THIRD_FROM_RIGHT::Any
    BOTTOM_FOURTH_FROM_RIGHT::Any
    BOTTOM_SECOND_FROM_LEFT::Any
    SECOND_FROM_BOTTOM_LEFT::Any
    THIRD_FROM_BOTTOM_LEFT::Any
    BOTTOM_LEFT::Any
    SECOND_FROM_BOTTOM_SECOND_FROM_LEFT::Any
    BasicTouchButtonCellPositionFactory() = new()
end


function initFieldsBasicTouchButtonCellPositionFactory(this::BasicTouchButtonCellPositionFactory)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.TOP_RIGHT = nothing
    this.TOP_LEFT = nothing
    this.SECOND_FROM_TOP_LEFT = nothing
    this.SECOND_FROM_TOP_RIGHT = nothing
    this.TOP_SECOND_FROM_LEFT = nothing
    this.TOP_SECOND_FROM_RIGHT = nothing
    this.BOTTOM_RIGHT = nothing
    this.BOTTOM_SECOND_FROM_RIGHT = nothing
    this.SECOND_FROM_BOTTOM_RIGHT = nothing
    this.THIRD_FROM_BOTTOM_RIGHT = nothing
    this.FOURTH_FROM_BOTTOM_RIGHT = nothing
    this.SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = nothing
    this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = nothing
    this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = nothing
    this.BOTTOM_THIRD_FROM_RIGHT = nothing
    this.BOTTOM_FOURTH_FROM_RIGHT = nothing
    this.BOTTOM_SECOND_FROM_LEFT = nothing
    this.SECOND_FROM_BOTTOM_LEFT = nothing
    this.THIRD_FROM_BOTTOM_LEFT = nothing
    this.BOTTOM_LEFT = nothing
    this.SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    this.SECOND_FROM_TOP_LEFT = nothing
    this.SECOND_FROM_TOP_RIGHT = nothing
    this.TOP_SECOND_FROM_LEFT = nothing
    this.TOP_SECOND_FROM_RIGHT = nothing
    
    
    
    this.THIRD_FROM_BOTTOM_RIGHT = nothing
    this.FOURTH_FROM_BOTTOM_RIGHT = nothing
    
    this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = nothing
    this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = nothing
    this.BOTTOM_THIRD_FROM_RIGHT = nothing
    this.BOTTOM_FOURTH_FROM_RIGHT = nothing
    
    
    this.THIRD_FROM_BOTTOM_LEFT = nothing
    
    
    nothing
end


function initBasicTouchButtonCellPositionFactory(this::BasicTouchButtonCellPositionFactory)
        initFieldsBasicTouchButtonCellPositionFactory(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        local touchButtonLocationHelper = newTouchButtonLocationHelper()
        local cellPositionFactory = AllBinary.getInstance(CellPositionFactory)
        AllBinary.init(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper), AllBinary.getTotalRows(touchButtonLocationHelper))
        this.TOP_LEFT = AllBinary.getInstanceColRow(cellPositionFactory, Int32(0), Int32(0))
        this.TOP_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(1), Int32(0))
        this.BOTTOM_LEFT = AllBinary.getInstanceColRow(cellPositionFactory, Int32(0), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(1))
        this.BOTTOM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(1), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(1))
        this.BOTTOM_SECOND_FROM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(2), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(1))
        this.SECOND_FROM_BOTTOM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(1), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(2))
        this.SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(2), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(2))
        this.BOTTOM_SECOND_FROM_LEFT = AllBinary.getInstanceColRow(cellPositionFactory, Int32(1), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(1))
        this.SECOND_FROM_BOTTOM_LEFT = AllBinary.getInstanceColRow(cellPositionFactory, Int32(0), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(2))
        this.SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = AllBinary.getInstanceColRow(cellPositionFactory, Int32(1), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(2))
        if AllBinary.getTotalRows(touchButtonLocationHelper) > Int32(2)
            this.SECOND_FROM_TOP_LEFT = AllBinary.getInstanceColRow(cellPositionFactory, Int32(0), Int32(1))
            this.SECOND_FROM_TOP_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(1), Int32(1))
        else
            this.SECOND_FROM_TOP_LEFT = cellPositionFactory.NONE
            this.SECOND_FROM_TOP_RIGHT = cellPositionFactory.NONE
        end
        if AllBinary.getTotalRows(touchButtonLocationHelper) >= Int32(4)
            this.THIRD_FROM_BOTTOM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(1), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(3))
            this.FOURTH_FROM_BOTTOM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(1), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(4))
            this.THIRD_FROM_BOTTOM_LEFT = AllBinary.getInstanceColRow(cellPositionFactory, Int32(0), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(3))
        else
            this.THIRD_FROM_BOTTOM_RIGHT = cellPositionFactory.NONE
            this.FOURTH_FROM_BOTTOM_RIGHT = cellPositionFactory.NONE
            this.THIRD_FROM_BOTTOM_LEFT = cellPositionFactory.NONE
        end
        if AllBinary.getTotalColumns(touchButtonLocationHelper) >= Int32(4)
            this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(3), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(2))
            this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(4), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(2))
            this.BOTTOM_THIRD_FROM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(3), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(1))
            this.BOTTOM_FOURTH_FROM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(4), AllBinary.getTotalRows(touchButtonLocationHelper) - Int32(1))
            this.TOP_SECOND_FROM_LEFT = AllBinary.getInstanceColRow(cellPositionFactory, Int32(1), Int32(0))
            this.TOP_SECOND_FROM_RIGHT = AllBinary.getInstanceColRow(cellPositionFactory, AllBinary.getTotalColumns(touchButtonLocationHelper) - Int32(2), Int32(0))
        else
            this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.NONE
            this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.NONE
            this.BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.NONE
            this.BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.NONE
            this.TOP_SECOND_FROM_LEFT = cellPositionFactory.NONE
            this.TOP_SECOND_FROM_RIGHT = cellPositionFactory.NONE
        end
        nothing
end

function newBasicTouchButtonCellPositionFactory()
    this = BasicTouchButtonCellPositionFactory()
    initBasicTouchButtonCellPositionFactory(this)
    this
end

