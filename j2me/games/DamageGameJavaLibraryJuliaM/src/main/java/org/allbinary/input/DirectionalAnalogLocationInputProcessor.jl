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
# package org.allbinary.input

# extends AnalogLocationInputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DirectionalAnalogLocationInputProcessor <: JObject
    logUtil::Any
    inputProcessorArray::Any
    gameKeyFactory::Any
    leftGameKeyEvent::Any
    rightGameKeyEvent::Any
    upGameKeyEvent::Any
    downGameKeyEvent::Any
    leftTriggerGameKeyEvent::Any
    rightTriggerGameKeyEvent::Any
    DirectionalAnalogLocationInputProcessor() = new()
end


function initFieldsDirectionalAnalogLocationInputProcessor(this::DirectionalAnalogLocationInputProcessor)
    this.logUtil = nothing
    this.inputProcessorArray = nothing
    this.gameKeyFactory = nothing
    this.leftGameKeyEvent = nothing
    this.rightGameKeyEvent = nothing
    this.upGameKeyEvent = nothing
    this.downGameKeyEvent = nothing
    this.leftTriggerGameKeyEvent = nothing
    this.rightTriggerGameKeyEvent = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    this.gameKeyFactory = AllBinary.getInstance(GameKeyFactory)
    this.leftGameKeyEvent = staticGet_NONE(GameKeyEvent)
    this.rightGameKeyEvent = staticGet_NONE(GameKeyEvent)
    this.upGameKeyEvent = staticGet_NONE(GameKeyEvent)
    this.downGameKeyEvent = staticGet_NONE(GameKeyEvent)
    this.leftTriggerGameKeyEvent = staticGet_NONE(GameKeyEvent)
    this.rightTriggerGameKeyEvent = staticGet_NONE(GameKeyEvent)
    nothing
end


function initDirectionalAnalogLocationInputProcessor(this::DirectionalAnalogLocationInputProcessor, inputProcessorArray)
        initAnalogLocationInputProcessor(this)
        initFieldsDirectionalAnalogLocationInputProcessor(this)
        this.inputProcessorArray = inputProcessorArray
        try
            this.leftGameKeyEvent = AllBinary.getInstanceForInput(AllBinary.getInstance(GameKeyEventFactory), this, this.gameKeyFactory.LEFT)
            this.rightGameKeyEvent = AllBinary.getInstanceForInput(AllBinary.getInstance(GameKeyEventFactory), this, this.gameKeyFactory.RIGHT)
            this.upGameKeyEvent = AllBinary.getInstanceForInput(AllBinary.getInstance(GameKeyEventFactory), this, this.gameKeyFactory.UP)
            this.downGameKeyEvent = AllBinary.getInstanceForInput(AllBinary.getInstance(GameKeyEventFactory), this, this.gameKeyFactory.DOWN)
            this.leftTriggerGameKeyEvent = AllBinary.getInstanceForInput(AllBinary.getInstance(GameKeyEventFactory), this, this.gameKeyFactory.KEY_NUM0)
            this.rightTriggerGameKeyEvent = AllBinary.getInstanceForInput(AllBinary.getInstance(GameKeyEventFactory), this, this.gameKeyFactory.KEY_NUM5)
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        end
        nothing
end

function newDirectionalAnalogLocationInputProcessor(inputProcessorArray)
    this = DirectionalAnalogLocationInputProcessor()
    initDirectionalAnalogLocationInputProcessor(this, inputProcessorArray)
    this
end


function process(this::DirectionalAnalogLocationInputProcessor, allbinaryLayerManager, analogLocationInput)
        try
            local customGPoint = nothing
            customGPoint = AllBinary.getCustomGPoint(analogLocationInput)
            local x::Int32 = AllBinary.getX(customGPoint)
            local y::Int32 = AllBinary.getY(customGPoint)
            local leftTrigger::Int32 = AllBinary.getLeftTrigger(analogLocationInput)
            local rightTrigger::Int32 = AllBinary.getRightTrigger(analogLocationInput)
            if x < Int32(0)
                AllBinary.processAnalog(this.inputProcessorArray[AllBinary.getKey(this.leftGameKeyEvent) + 1], allbinaryLayerManager, this.leftGameKeyEvent, x)
            elseif x > Int32(0)
                AllBinary.processAnalog(this.inputProcessorArray[AllBinary.getKey(this.rightGameKeyEvent) + 1], allbinaryLayerManager, this.rightGameKeyEvent, x)
            end
            if y < Int32(0)
                AllBinary.processAnalog(this.inputProcessorArray[AllBinary.getKey(this.downGameKeyEvent) + 1], allbinaryLayerManager, this.downGameKeyEvent, y)
            elseif y > Int32(0)
                AllBinary.processAnalog(this.inputProcessorArray[AllBinary.getKey(this.upGameKeyEvent) + 1], allbinaryLayerManager, this.upGameKeyEvent, y)
            end
            if leftTrigger > Int32(0)
                AllBinary.processAnalog(this.inputProcessorArray[AllBinary.getKey(this.leftTriggerGameKeyEvent) + 1], allbinaryLayerManager, this.leftTriggerGameKeyEvent, leftTrigger)
            end
            if rightTrigger > Int32(0)
                AllBinary.processAnalog(this.inputProcessorArray[AllBinary.getKey(this.rightTriggerGameKeyEvent) + 1], allbinaryLayerManager, this.rightTriggerGameKeyEvent, rightTrigger)
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, "Unable to process analog input", this, commonStrings.PROCESS, e)
        end
        nothing
end


function getSourceId(this::DirectionalAnalogLocationInputProcessor)
        return Int32(0)
end

