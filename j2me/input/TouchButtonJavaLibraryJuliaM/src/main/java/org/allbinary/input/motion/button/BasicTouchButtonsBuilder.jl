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

# extends BaseTouchInput: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct BasicTouchButtonsBuilder <: JObject
    logUtil::Any
    BasicTouchButtonsBuilder() = new()
end


function initFieldsBasicTouchButtonsBuilder(this::BasicTouchButtonsBuilder)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initBasicTouchButtonsBuilder(this::BasicTouchButtonsBuilder)
    initBaseTouchInput(this)
    initFieldsBasicTouchButtonsBuilder(this)
end

function newBasicTouchButtonsBuilder()
    this = BasicTouchButtonsBuilder()
    initBasicTouchButtonsBuilder(this)
    this
end


function getList(this::BasicTouchButtonsBuilder)
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
            local list = newBasicArrayListD()
            local commonButtons = AllBinary.getInstance(CommonButtons)
            local touchButtonLocationHelper = newTouchButtonLocationHelper()
            local basicTouchButtonCellPositionFactory = newBasicTouchButtonCellPositionFactory()
            local UP = AllBinary.createButton(TouchButton, AllBinary.getInstance(BasicTouchInputFactory).UP, AllBinary.getInstance(TouchButtonUpResource), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, AllBinary.getColumnsRemainderHalf(touchButtonLocationHelper), AllBinary.getRowsRemainderHalf(touchButtonLocationHelper))
            local DOWN = AllBinary.createButton(TouchButton, AllBinary.getInstance(BasicTouchInputFactory).DOWN, AllBinary.getInstance(TouchButtonDownResource), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, AllBinary.getColumnsRemainderHalf(touchButtonLocationHelper), AllBinary.getRowsRemainderHalf(touchButtonLocationHelper))
            local LEFT = AllBinary.createButton(TouchButton, AllBinary.getInstance(BasicTouchInputFactory).SPECIAL_BUTTON_FOUR, AllBinary.getInstance(TouchButtonTurnLeftResource), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, AllBinary.getColumnsRemainderHalf(touchButtonLocationHelper), AllBinary.getRowsRemainderHalf(touchButtonLocationHelper))
            local RIGHT = AllBinary.createButton(TouchButton, AllBinary.getInstance(BasicTouchInputFactory).SPECIAL_BUTTON_THREE, AllBinary.getInstance(TouchButtonTurnRightResource), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, AllBinary.getColumnsRemainderHalf(touchButtonLocationHelper), AllBinary.getRowsRemainderHalf(touchButtonLocationHelper))
            AllBinary.add(list, UP)
            AllBinary.add(list, LEFT)
            AllBinary.add(list, RIGHT)
            AllBinary.add(list, DOWN)
            return list
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e)
            return AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
        end
end

