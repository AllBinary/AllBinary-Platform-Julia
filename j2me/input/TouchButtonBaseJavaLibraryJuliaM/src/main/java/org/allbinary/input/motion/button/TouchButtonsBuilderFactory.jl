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

mutable struct TouchButtonsBuilderFactory <: JObject
    TouchButtonsBuilderFactory() = new()
end

const TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYValue = Ref{Any}(nothing)
const TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYSet = Ref(false)
function staticGet_NO_TOUCH_BUTTON_BUILDER_FACTORY(::Type{TouchButtonsBuilderFactory})
    if !TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYSet[]
        TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYSet[] = true
        TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYValue[] = newTouchButtonsBuilderFactory()
    end
    TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYValue[]
end
function staticSet_NO_TOUCH_BUTTON_BUILDER_FACTORY(::Type{TouchButtonsBuilderFactory}, value)
    TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYSet[] = true
    TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORYValue[] = value
end

function initFieldsTouchButtonsBuilderFactory(this::TouchButtonsBuilderFactory)
    nothing
end

function initTouchButtonsBuilderFactory(this::TouchButtonsBuilderFactory)
    initFieldsTouchButtonsBuilderFactory(this)
end

function newTouchButtonsBuilderFactory()
    this = TouchButtonsBuilderFactory()
    initTouchButtonsBuilderFactory(this)
    this
end


function getInstance(this::TouchButtonsBuilderFactory)
        return AllBinary.getInstance(NoButtonsTouchInputFactory)
end

