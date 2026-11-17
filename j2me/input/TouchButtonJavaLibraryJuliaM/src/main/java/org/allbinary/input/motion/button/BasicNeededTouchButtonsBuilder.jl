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
mutable struct BasicNeededTouchButtonsBuilder <: JObject
    logUtil::Any
    BasicNeededTouchButtonsBuilder() = new()
end


function initFieldsBasicNeededTouchButtonsBuilder(this::BasicNeededTouchButtonsBuilder)
    this.logUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    nothing
end

function initBasicNeededTouchButtonsBuilder(this::BasicNeededTouchButtonsBuilder)
    initBaseTouchInput(this)
    initFieldsBasicNeededTouchButtonsBuilder(this)
end

function newBasicNeededTouchButtonsBuilder()
    this = BasicNeededTouchButtonsBuilder()
    initBasicNeededTouchButtonsBuilder(this)
    this
end


function getList(this::BasicNeededTouchButtonsBuilder)
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
            local list = newBasicArrayListD()
            local touchButtonLocationHelper = newTouchButtonLocationHelper()
            local basicTouchButtonCellPositionFactory = newBasicTouchButtonCellPositionFactory()
            local commonButtons = AllBinary.getInstance(CommonButtons)
            local animationInterface = AllBinary.getInstance(AllBinary.getFactoryInstance(NullAnimationFactory), Int32(0))
            local UP = newTouchButton(AllBinary.getInstance(BasicTouchInputFactory).UP, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, AllBinary.getColumnsRemainderHalf(touchButtonLocationHelper), AllBinary.getRowsRemainderHalf(touchButtonLocationHelper))
            local DOWN = newTouchButton(AllBinary.getInstance(BasicTouchInputFactory).DOWN, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, AllBinary.getColumnsRemainderHalf(touchButtonLocationHelper), AllBinary.getRowsRemainderHalf(touchButtonLocationHelper))
            local LEFT = newTouchButton(AllBinary.getInstance(BasicTouchInputFactory).LEFT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, AllBinary.getColumnsRemainderHalf(touchButtonLocationHelper), AllBinary.getRowsRemainderHalf(touchButtonLocationHelper))
            local RIGHT = newTouchButton(AllBinary.getInstance(BasicTouchInputFactory).RIGHT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, AllBinary.getColumnsRemainderHalf(touchButtonLocationHelper), AllBinary.getRowsRemainderHalf(touchButtonLocationHelper))
            AllBinary.add(list, UP)
            AllBinary.add(list, DOWN)
            AllBinary.add(list, LEFT)
            AllBinary.add(list, RIGHT)
            return list
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e)
            return AllBinary.getImmutableInstance(AllBinary.getInstance(BasicArrayListUtil))
        end
end

