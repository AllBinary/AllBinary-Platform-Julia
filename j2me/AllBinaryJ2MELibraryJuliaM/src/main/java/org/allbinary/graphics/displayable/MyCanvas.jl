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
# package org.allbinary.graphics.displayable

# extends Canvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct MyCanvas <: JObject
    logUtil::Any
    commonStrings::Any
    canvasStrings::Any
    stringUtil::Any
    displayInfo::Any
    name::Any
    childNameList::Any
    commandStack::Any
    commandListener::Any
    paused::Bool
    touchME::Any
    MyCanvas() = new()
end


function initFieldsMyCanvas(this::MyCanvas)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.canvasStrings = nothing
    this.stringUtil = nothing
    this.displayInfo = nothing
    this.name = nothing
    this.childNameList = nothing
    this.commandStack = nothing
    this.commandListener = nothing
    this.paused = false
    this.touchME = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.canvasStrings = AllBinary.getInstance(CanvasStrings)
    this.stringUtil = AllBinary.getInstance(StringUtil)
    this.displayInfo = AllBinary.getInstance(DisplayInfoSingleton)
    
    
    
    this.commandListener = staticGet_NULL_COMMAND_LISTENER(NullCommandListener)
    this.paused = false
    this.touchME = newTouchJ2ME()
    nothing
end


function initMyCanvas(this::MyCanvas, name, childNameList)
        initCanvas(this)
        initFieldsMyCanvas(this)
        AllBinary.putF(this.logUtil, this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR)
        AllBinary.update(this.displayInfo, this, this.canvasStrings.CONSTRUCTOR)
        this.name = name
        this.childNameList = childNameList
        this.commandStack = AllBinary.createStack(AllBinary.getInstance(StdUtil))
        nothing
end

function newMyCanvas(name, childNameList)
    this = MyCanvas()
    initMyCanvas(this, name, childNameList)
    this
end


function getWidth(this::MyCanvas)
        return AllBinary.getWidth(this)
end


function getHeight(this::MyCanvas)
        return AllBinary.getHeight(this)
end


function setFullScreenMode(this::MyCanvas, mode)
        AllBinary.setFullScreenMode(this, mode)
        AllBinary.update(this.displayInfo, this, this.canvasStrings.SET_FULL_SCREEN_MODE)
        nothing
end


function sizeChanged(this::MyCanvas, w, h)
        AllBinary.update(this.displayInfo, this, this.canvasStrings.SIZE_CHANGED)
        nothing
end


function getCommandStack(this::MyCanvas)
        return this.commandStack
end


function isCommand(this::MyCanvas, command)
        return AllBinary.contains(this.commandStack, command)
end


function addCommand(this::MyCanvas, command)
        if !AllBinary.contains(this.commandStack, command)
            AllBinary.push(this.commandStack, command)
            AllBinary.addCommand(this, command)
        end
        nothing
end


function removeCommand(this::MyCanvas, command)
        AllBinary.removeElement(this.commandStack, command)
        AllBinary.removeCommand(this, command)
        nothing
end


function removeAllCommands(this::MyCanvas)
        local size::Int32 = AllBinary.size(this.commandStack)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.removeCommand(this, (AllBinary.pop(this.commandStack)))
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function setCommandListener(this::MyCanvas, l)
        AllBinary.setCommandListener(this, l)
        this.commandListener = l
        nothing
end


function getCustomCommandListener(this::MyCanvas)
        return this.commandListener
end


function isPaused(this::MyCanvas)
        return this.paused
end


function removePauseCommand(this::MyCanvas)
        AllBinary.removeCommand(this, AllBinary.getInstance(MyCommandsFactory).PAUSE_COMMAND)
        nothing
end


function pause(this::MyCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.canvasStrings.PAUSE)
        AllBinary.removePauseCommand(this)
        AllBinary.addCommand(this, AllBinary.getInstance(MyCommandsFactory).RESUME_COMMAND)
        AllBinary.setPaused(this, true)
        nothing
end


function unPause(this::MyCanvas)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.canvasStrings.UN_PAUSE)
        AllBinary.removeCommand(this, AllBinary.getInstance(MyCommandsFactory).RESUME_COMMAND)
        AllBinary.addCommand(this, AllBinary.getInstance(MyCommandsFactory).PAUSE_COMMAND)
        AllBinary.setPaused(this, false)
        nothing
end


function process(this::MyCanvas)
        AllBinary.process(this.displayInfo)
        nothing
end


function paint(this::MyCanvas, graphics)
        nothing
        nothing
end


function draw(this::MyCanvas, graphics)
        nothing
        nothing
end


function hasChild(this::MyCanvas, displayable)
        return AllBinary.contains(this.childNameList, displayable.name)
end


function destroy(this::MyCanvas)
        AllBinary.putF(this.logUtil, "Destroyed MyCanvas", this, "destroy")
        nothing
end


function setPaused(this::MyCanvas, isPaused)
        this.paused = isPaused
        nothing
end


function keyPressedByDevice(this::MyCanvas, keyCode, deviceId)
        nothing
        nothing
end


function keyRepeatedByDevice(this::MyCanvas, keyCode, deviceId)
        nothing
        nothing
end


function keyReleasedByDevice(this::MyCanvas, keyCode, deviceId)
        nothing
        nothing
end


function pointerDragged(this::MyCanvas, x, y)
        AllBinary.pointerDragged(this.touchME, x, y)
        nothing
end


function pointerPressed(this::MyCanvas, x, y)
        AllBinary.pointerPressed(this.touchME, x, y)
        nothing
end


function pointerReleased(this::MyCanvas, x, y)
        AllBinary.pointerReleased(this.touchME, x, y)
        nothing
end


function nextSong(this::MyCanvas, nextSongSound, leftVolume, rightVolume)
        nothing
        nothing
end

