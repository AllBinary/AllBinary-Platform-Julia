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

mutable struct TouchScreenFactory <: JObject
    logUtil::Any
    touch::Bool
    multiTouch::Bool
    multiTouchDistinct::Bool
    touchScreenType::Any
    TouchScreenFactory() = new()
end

const TouchScreenFactory_SINGLETONValue = Ref{Any}(nothing)
const TouchScreenFactory_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{TouchScreenFactory})
    if !TouchScreenFactory_SINGLETONSet[]
        TouchScreenFactory_SINGLETONSet[] = true
        TouchScreenFactory_SINGLETONValue[] = newTouchScreenFactory()
    end
    TouchScreenFactory_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{TouchScreenFactory}, value)
    TouchScreenFactory_SINGLETONSet[] = true
    TouchScreenFactory_SINGLETONValue[] = value
end

function initFieldsTouchScreenFactory(this::TouchScreenFactory)
    this.logUtil = nothing
    this.touch = false
    this.multiTouch = false
    this.multiTouchDistinct = false
    this.touchScreenType = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.touch = false
    this.multiTouch = false
    this.multiTouchDistinct = false
    this.touchScreenType = AllBinary.getInstance(TouchScreenTypesFactory).NOTOUCH
    nothing
end


function initTouchScreenFactory(this::TouchScreenFactory)
        initFieldsTouchScreenFactory(this)
        try
            AllBinary.setTouch(this, true)
            AllBinary.setMultiTouch(this, false)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, staticGet_SINGLETON(TouchScreenFactory), commonStrings.GET_INSTANCE, e)
        end
        nothing
end

function newTouchScreenFactory()
    this = TouchScreenFactory()
    initTouchScreenFactory(this)
    this
end


function getInstance(::Type{TouchScreenFactory})
        return staticGet_SINGLETON(TouchScreenFactory)
end


function setMultiTouch(this::TouchScreenFactory, multiTouch)
        this.multiTouch = multiTouch
        nothing
end


function isMultiTouch(this::TouchScreenFactory)
        return this.multiTouch
end


function setTouch(this::TouchScreenFactory, touch)
        this.touch = touch
        nothing
end


function isTouch(this::TouchScreenFactory)
        return this.touch
end


function setMultiTouchDistinct(this::TouchScreenFactory, multiTouchDistinct)
        this.multiTouchDistinct = multiTouchDistinct
        nothing
end


function isMultiTouchDistinct(this::TouchScreenFactory)
        return this.multiTouchDistinct
end


function setTouchScreenType(this::TouchScreenFactory, touchScreenType)
        this.touchScreenType = touchScreenType
        nothing
end


function getTouchScreenType(this::TouchScreenFactory)
        return this.touchScreenType
end


function toString(this::TouchScreenFactory)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "TouchScreen: ")
        AllBinary.appendboolean(stringBuffer, AllBinary.isTouch(this))
        AllBinary.append(stringBuffer, " MultiTouch: ")
        AllBinary.appendboolean(stringBuffer, AllBinary.isMultiTouch(this))
        AllBinary.append(stringBuffer, " Distinct MultiTouch: ")
        AllBinary.appendboolean(stringBuffer, AllBinary.isMultiTouchDistinct(this))
        AllBinary.append(stringBuffer, " TouchScreenType: ")
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), AllBinary.getTouchScreenType(this)))
        return AllBinary.toString(stringBuffer)
end

