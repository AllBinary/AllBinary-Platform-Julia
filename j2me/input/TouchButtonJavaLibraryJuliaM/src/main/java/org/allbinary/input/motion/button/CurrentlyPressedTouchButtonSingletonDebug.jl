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

# extends CurrentlyPressedTouchButtonSingleton: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CurrentlyPressedTouchButtonSingletonDebug <: JObject
    string::Any
    listString::Any
    appendText::Any
    PRESSED_AND_FIRED::Any
    PRESSED_AND_NOT_FIRED::Any
    ASSOCIATED_RELEASED_AND_FIRED::Any
    RELEASED_AND_FIRED::Any
    RELEASED_AND_FIRED_2::Any
    RELEASED_AND_NOT_FIRED::Any
    CurrentlyPressedTouchButtonSingletonDebug() = new()
end

const CurrentlyPressedTouchButtonSingletonDebug_instanceCValue = Ref{Any}(nothing)
const CurrentlyPressedTouchButtonSingletonDebug_instanceCSet = Ref(false)
function staticGet_instanceC(::Type{CurrentlyPressedTouchButtonSingletonDebug})
    if !CurrentlyPressedTouchButtonSingletonDebug_instanceCSet[]
        CurrentlyPressedTouchButtonSingletonDebug_instanceCSet[] = true
        CurrentlyPressedTouchButtonSingletonDebug_instanceCValue[] = newCurrentlyPressedTouchButtonSingletonDebug()
    end
    CurrentlyPressedTouchButtonSingletonDebug_instanceCValue[]
end
function staticSet_instanceC(::Type{CurrentlyPressedTouchButtonSingletonDebug}, value)
    CurrentlyPressedTouchButtonSingletonDebug_instanceCSet[] = true
    CurrentlyPressedTouchButtonSingletonDebug_instanceCValue[] = value
end

function initFieldsCurrentlyPressedTouchButtonSingletonDebug(this::CurrentlyPressedTouchButtonSingletonDebug)
    this.string = nothing
    this.listString = nothing
    this.appendText = nothing
    this.PRESSED_AND_FIRED = nothing
    this.PRESSED_AND_NOT_FIRED = nothing
    this.ASSOCIATED_RELEASED_AND_FIRED = nothing
    this.RELEASED_AND_FIRED = nothing
    this.RELEASED_AND_FIRED_2 = nothing
    this.RELEASED_AND_NOT_FIRED = nothing
    this.string = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.listString = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.appendText = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.PRESSED_AND_FIRED = "pressed & fired"
    this.PRESSED_AND_NOT_FIRED = "pressed in button but not fired"
    this.ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired"
    this.RELEASED_AND_FIRED = "rel & fired 1"
    this.RELEASED_AND_FIRED_2 = "rel & fired 2"
    this.RELEASED_AND_NOT_FIRED = "rel & not fired"
    nothing
end

function initCurrentlyPressedTouchButtonSingletonDebug(this::CurrentlyPressedTouchButtonSingletonDebug)
    initCurrentlyPressedTouchButtonSingleton(this)
    initFieldsCurrentlyPressedTouchButtonSingletonDebug(this)
end

function newCurrentlyPressedTouchButtonSingletonDebug()
    this = CurrentlyPressedTouchButtonSingletonDebug()
    initCurrentlyPressedTouchButtonSingletonDebug(this)
    this
end


function getInstance(::Type{CurrentlyPressedTouchButtonSingletonDebug})
        return staticGet_instanceC(CurrentlyPressedTouchButtonSingletonDebug)
end


function appendTouchButtonInput(this::CurrentlyPressedTouchButtonSingletonDebug, append, touchButtonInput)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, AllBinary.toString(touchButtonInput))
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, append)
        this.appendText = AllBinary.toString(stringBuffer)
        this.string = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.listString), this.appendText))
        nothing
end


function append(this::CurrentlyPressedTouchButtonSingletonDebug, append)
        this.appendText = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.appendText), append))
        this.string = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.listString), this.appendText))
        nothing
end


function clearLog(this::CurrentlyPressedTouchButtonSingletonDebug, x, y)
        this.appendText = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.toStringStatic(GPoint, x, y, Int32(0))), AllBinary.getInstance(CommonSeps).SPACE))
        this.string = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.listString), this.appendText))
        nothing
end


function releaseAndNotFired(this::CurrentlyPressedTouchButtonSingletonDebug)
        AllBinary.append(this, this.RELEASED_AND_NOT_FIRED)
        nothing
end


function releaseAndFired(this::CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput)
        AllBinary.appendTouchButtonInput(this, this.RELEASED_AND_FIRED, touchButtonInput)
        nothing
end


function releaseAndFired2(this::CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput)
        AllBinary.appendTouchButtonInput(this, this.RELEASED_AND_FIRED_2, touchButtonInput)
        nothing
end


function releaseAndFiredAssociated(this::CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput)
        AllBinary.appendTouchButtonInput(this, this.ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput)
        nothing
end


function pressedAndFired(this::CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput)
        AllBinary.appendTouchButtonInput(this, this.PRESSED_AND_FIRED, touchButtonInput)
        nothing
end


function pressedAndNotFired(this::CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput)
        AllBinary.appendTouchButtonInput(this, this.PRESSED_AND_NOT_FIRED, touchButtonInput)
        nothing
end


function removeAt(this::CurrentlyPressedTouchButtonSingletonDebug, index)
        local touchButtonInput = AllBinary.removeAt(this, index)
        this.listString = AllBinary.toString(this.list)
        this.string = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.listString), this.appendText))
        return touchButtonInput
end


function remove(this::CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput)
        local isRemoved::Bool = AllBinary.remove(this, touchButtonInput)
        this.listString = AllBinary.toString(this.list)
        this.string = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.listString), this.appendText))
        return isRemoved
end


function add(this::CurrentlyPressedTouchButtonSingletonDebug, touchButtonInput)
        AllBinary.add(this, touchButtonInput)
        this.listString = AllBinary.toString(this.list)
        this.string = AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.listString), this.appendText))
        nothing
end


function toString(this::CurrentlyPressedTouchButtonSingletonDebug)
        return this.string
end

