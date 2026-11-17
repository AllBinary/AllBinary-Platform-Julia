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

mutable struct BasicTouchInputFactory <: JObject
    logUtil::Any
    SPECIAL_BUTTON_SEVEN_TESTING_ONLY::Any
    SPECIAL_BUTTON_EIGHT_TESTING_ONLY::Any
    SPECIAL_BUTTON_SIX::Any
    SPECIAL_BUTTON_FIVE::Any
    SPECIAL_BUTTON_FOUR::Any
    SPECIAL_BUTTON_THREE::Any
    SPECIAL_BUTTON_TWO::Any
    SPECIAL_BUTTON_ONE::Any
    UP::Any
    LEFT::Any
    RIGHT::Any
    DOWN::Any
    NONE::Any
    initialized::Bool
    list::Any
    BasicTouchInputFactory() = new()
end

const BasicTouchInputFactory_instanceValue = Ref{Any}(nothing)
const BasicTouchInputFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{BasicTouchInputFactory})
    if !BasicTouchInputFactory_instanceSet[]
        BasicTouchInputFactory_instanceSet[] = true
        BasicTouchInputFactory_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    BasicTouchInputFactory_instanceValue[]
end
function staticSet_instance(::Type{BasicTouchInputFactory}, value)
    BasicTouchInputFactory_instanceSet[] = true
    BasicTouchInputFactory_instanceValue[] = value
end

function initFieldsBasicTouchInputFactory(this::BasicTouchInputFactory)
    this.logUtil = nothing
    this.SPECIAL_BUTTON_SEVEN_TESTING_ONLY = nothing
    this.SPECIAL_BUTTON_EIGHT_TESTING_ONLY = nothing
    this.SPECIAL_BUTTON_SIX = nothing
    this.SPECIAL_BUTTON_FIVE = nothing
    this.SPECIAL_BUTTON_FOUR = nothing
    this.SPECIAL_BUTTON_THREE = nothing
    this.SPECIAL_BUTTON_TWO = nothing
    this.SPECIAL_BUTTON_ONE = nothing
    this.UP = nothing
    this.LEFT = nothing
    this.RIGHT = nothing
    this.DOWN = nothing
    this.NONE = nothing
    this.initialized = false
    this.list = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    
    
    
    
    
    
    
    
    
    
    
    
    this.initialized = false
    this.list = newBasicArrayListD()
    nothing
end


function getInstance(::Type{BasicTouchInputFactory})
        if staticGet_instance(BasicTouchInputFactory) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(BasicTouchInputFactory, newBasicTouchInputFactory())
        end
        return (staticGet_instance(BasicTouchInputFactory))
end


function initBasicTouchInputFactory(this::BasicTouchInputFactory)
        initFieldsBasicTouchInputFactory(this)
        local MAX::Int32 = AllBinary.getInstance(InputFactory).MAX
        this.SPECIAL_BUTTON_SEVEN_TESTING_ONLY = newTouchButtonInput(MAX - Int32(41), "Button 7 - Testing Only May Cross Over Key Values")
        this.SPECIAL_BUTTON_EIGHT_TESTING_ONLY = newTouchButtonInput(MAX - Int32(42), "Button 8 - Testing Only May Cross Over Key Values")
        this.SPECIAL_BUTTON_SIX = newTouchButtonInput(MAX - Int32(30), "Button 6")
        this.SPECIAL_BUTTON_FIVE = newTouchButtonInput(MAX - Int32(31), "Button 5")
        this.SPECIAL_BUTTON_FOUR = newTouchButtonInput(MAX - Int32(32), "Button 4")
        this.SPECIAL_BUTTON_THREE = newTouchButtonInput(MAX - Int32(33), "Button 3")
        this.SPECIAL_BUTTON_TWO = newTouchButtonInput(MAX - Int32(34), "Button 2")
        this.SPECIAL_BUTTON_ONE = newTouchButtonInput(MAX - Int32(35), "Button 1")
        this.UP = newTouchButtonInput(MAX - Int32(36), "Up Button")
        this.LEFT = newTouchButtonInput(MAX - Int32(37), "Left Button")
        this.RIGHT = newTouchButtonInput(MAX - Int32(38), "Right Button")
        this.DOWN = newTouchButtonInput(MAX - Int32(39), "Down Button")
        this.NONE = newTouchButtonInput(MAX - Int32(40), "No Button")
        nothing
end

function newBasicTouchInputFactory()
    this = BasicTouchInputFactory()
    initBasicTouchInputFactory(this)
    this
end


function init(this::BasicTouchInputFactory, inputToGameKeyMapping)
        if !this.initialized
            this.initialized = true
            AllBinary.add(this.list, this.UP)
            AllBinary.add(this.list, this.LEFT)
            AllBinary.add(this.list, this.RIGHT)
            AllBinary.add(this.list, this.DOWN)
            AllBinary.add(this.list, this.SPECIAL_BUTTON_TWO)
            AllBinary.add(this.list, this.SPECIAL_BUTTON_FOUR)
            AllBinary.add(this.list, this.SPECIAL_BUTTON_THREE)
            AllBinary.add(this.list, this.SPECIAL_BUTTON_ONE)
            AllBinary.add(this.list, this.SPECIAL_BUTTON_FIVE)
            AllBinary.add(this.list, this.SPECIAL_BUTTON_SIX)
            AllBinary.add(this.list, this.SPECIAL_BUTTON_SIX)
            AllBinary.add(this.list, this.SPECIAL_BUTTON_SEVEN_TESTING_ONLY)
            AllBinary.add(this.list, this.SPECIAL_BUTTON_EIGHT_TESTING_ONLY)
            AllBinary.updateAllFromList(this, this.list, inputToGameKeyMapping)
        end
        nothing
end


function updateAll(this::BasicTouchInputFactory, inputToGameKeyMapping)
        AllBinary.updateAllFromList(this, this.list, inputToGameKeyMapping)
        nothing
end


function updateAllFromList(this::BasicTouchInputFactory, list, inputToGameKeyMapping)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).START_LABEL), AllBinary.size(list))), this, "updateAll")
        local touchButtonInput = nothing
        let
            local index::Int32 = AllBinary.size(list) - Int32(1)
            while index >= Int32(0)
            try
            touchButtonInput = (list.objectArray[index + 1])
            AllBinary.update(touchButtonInput, inputToGameKeyMapping)
            finally
                index -= Int32(1)
            end
            end
        end
        nothing
end


function getList(this::BasicTouchInputFactory)
        return this.list
end

