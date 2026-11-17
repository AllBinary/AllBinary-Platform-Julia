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
# package org.allbinary.game.displayable.canvas

# extends BasicMenuInputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DemoCanvasBasicStartInputProcessor <: JObject
    DemoCanvasBasicStartInputProcessor() = new()
end


function initFieldsDemoCanvasBasicStartInputProcessor(this::DemoCanvasBasicStartInputProcessor)
    nothing
end


function initDemoCanvasBasicStartInputProcessor(this::DemoCanvasBasicStartInputProcessor, gameKeyEventList, gameCanvas)
        initBasicMenuInputProcessor(this, gameKeyEventList, -Int32(1), gameCanvas)
        nothing
end

function newDemoCanvasBasicStartInputProcessor(gameKeyEventList, gameCanvas)
    this = DemoCanvasBasicStartInputProcessor()
    initDemoCanvasBasicStartInputProcessor(this, gameKeyEventList, gameCanvas)
    this
end


function processInputList(this::DemoCanvasBasicStartInputProcessor)
        local list = AllBinary.getGameKeyEventList(this)
        local size::Int32 = AllBinary.size(list)
        local gameKeyEvent = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            gameKeyEvent = (list.objectArray[index + 1])
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Start GameKey: "), AllBinary.toString(AllBinary.getInstance(StringUtil), gameKeyEvent))), this, AllBinary.getInstance(GameInputStrings).PROCESS_INPUT)
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.commandAction(AllBinary.getCustomCommandListener(AllBinary.getCanvas(this)), AllBinary.getInstance(GameCommandsFactory).START_COMMAND, staticGet_NULL_CANVAS(NullCanvas))
        return size
end

