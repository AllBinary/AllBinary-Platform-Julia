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

# extends ProcessPaintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct TouchButtonsPaintableComposite <: JObject
    logUtil::Any
    commonStrings::Any
    inputMappingInterface::Any
    touchButtonsPaintable::Any
    timeHelper::Any
    released::Bool
    METHOD_NAME::Any
    RELEASE::Any
    FAST_REPEAT::Any
    IGNORE::Any
    TouchButtonsPaintableComposite() = new()
end


function initFieldsTouchButtonsPaintableComposite(this::TouchButtonsPaintableComposite)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.inputMappingInterface = nothing
    this.touchButtonsPaintable = nothing
    this.timeHelper = nothing
    this.released = false
    this.METHOD_NAME = nothing
    this.RELEASE = nothing
    this.FAST_REPEAT = nothing
    this.IGNORE = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    this.timeHelper = newTimeDelayHelper(Int32(250))
    this.released = true
    this.METHOD_NAME = "onCompleteMotionGestureInputEvent"
    this.RELEASE = "Ignoring: MotionGestureInput Release"
    this.FAST_REPEAT = "Ignoring: MotionGestureInput Repeated To Quickly"
    this.IGNORE = "Ignoring: Until Released"
    nothing
end


function initTouchButtonsPaintableComposite(this::TouchButtonsPaintableComposite, inputMappingInterface, basicColor)
        initProcessPaintable(this)
        initFieldsTouchButtonsPaintableComposite(this)
        this.inputMappingInterface = inputMappingInterface
        AllBinary.addListenerInterface(AllBinary.getInstance(CompleteMotionGestureInputEventHandler), this)
        this.touchButtonsPaintable = newTouchButtonsMappingPaintable(basicColor)
        nothing
end

function newTouchButtonsPaintableComposite(inputMappingInterface, basicColor)
    this = TouchButtonsPaintableComposite()
    initTouchButtonsPaintableComposite(this, inputMappingInterface, basicColor)
    this
end


function onEvent(this::TouchButtonsPaintableComposite, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onCompleteMotionGestureInputEvent(this::TouchButtonsPaintableComposite, completeMotionGestureInputEvent)
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START, this, "onCompleteMotionGestureInputEvent")
            local touchMotionGestureFactory = AllBinary.getInstance(TouchMotionGestureFactory)
            local gameKeyCompleteMotionGestureInputEvent = (completeMotionGestureInputEvent)
            local gameKey = AllBinary.getGameKey(gameKeyCompleteMotionGestureInputEvent)
            local motionGestureInput = AllBinary.getMotionGestureInput(completeMotionGestureInputEvent)
            if motionGestureInput === touchMotionGestureFactory.RELEASED
                AllBinary.putF(this.logUtil, this.RELEASE, this, this.METHOD_NAME)
                this.released = true
                return
            end
            if motionGestureInput === AllBinary.getInstance(TouchMotionGestureFactory).NO_MOTION && !AllBinary.isTimeTNT(this.timeHelper)
                AllBinary.putF(this.logUtil, this.FAST_REPEAT, this, this.METHOD_NAME)
                return
            end
            if !this.released
                AllBinary.putF(this.logUtil, this.IGNORE, this, this.METHOD_NAME)
                return
            end
            this.released = false
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(AllBinary.append(newStringMaker(), "GameKey: "), AllBinary.toString(AllBinary.getInstance(StringUtil), gameKey)), " MotionGestureInput: "), AllBinary.toString(AllBinary.getInstance(StringUtil), motionGestureInput))), this, this.METHOD_NAME)
            AllBinary.processInputMapping(this.inputMappingInterface, gameKey, motionGestureInput)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.METHOD_NAME, e)
        end
        nothing
end


function process(this::TouchButtonsPaintableComposite)
        AllBinary.removeListener(AllBinary.getInstance(CompleteMotionGestureInputEventHandler), this)
        nothing
end

