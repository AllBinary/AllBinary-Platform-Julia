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
# package org.allbinary.game.score

# extends HighScoresCanvasInputProcessor: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HighScoresCanvasLevelChangeInputProcessor <: JObject
    displayInfoSingleton::Any
    INSTRUCTIONS::Any
    myFontProcessor::Any
    anchor::Int32
    fontHeight::Int32
    HighScoresCanvasLevelChangeInputProcessor() = new()
end


function initFieldsHighScoresCanvasLevelChangeInputProcessor(this::HighScoresCanvasLevelChangeInputProcessor)
    this.displayInfoSingleton = nothing
    this.INSTRUCTIONS = nothing
    this.myFontProcessor = nothing
    this.anchor = Int32(0)
    this.fontHeight = Int32(0)
    this.displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
    this.INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)"
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    this.fontHeight = Int32(0)
    nothing
end


function initHighScoresCanvasLevelChangeInputProcessor(this::HighScoresCanvasLevelChangeInputProcessor, highScoresCanvas)
        initHighScoresCanvasInputProcessor(this, highScoresCanvas)
        initFieldsHighScoresCanvasLevelChangeInputProcessor(this)
        nothing
end

function newHighScoresCanvasLevelChangeInputProcessor(highScoresCanvas)
    this = HighScoresCanvasLevelChangeInputProcessor()
    initHighScoresCanvasLevelChangeInputProcessor(this, highScoresCanvas)
    this
end


function updateMeasurement(this::HighScoresCanvasLevelChangeInputProcessor, graphics)
        local font = AllBinary.getFont(graphics)
        this.fontHeight = AllBinary.getHeight(font)
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function open(this::HighScoresCanvasLevelChangeInputProcessor)
        AllBinary.addListener(AllBinary.getInstance(GameKeyEventHandler), this)
        nothing
end


function close(this::HighScoresCanvasLevelChangeInputProcessor)
        AllBinary.removeListener(AllBinary.getInstance(GameKeyEventHandler), this)
        nothing
end


function update(this::HighScoresCanvasLevelChangeInputProcessor)
        local list = AllBinary.getGameKeyEventList(this)
        local size::Int32 = AllBinary.size(list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local anyType = list.objectArray[index + 1]
            local key::Int32 = AllBinary.getKey(GameKeyEventUtil, anyType)
            if key == staticGet_RIGHT(Canvas)
                AllBinary.nextGameLevel(AllBinary.getGameInfo(AllBinary.getHighScoresCanvas(this)))
            elseif key == staticGet_LEFT(Canvas)
                AllBinary.previousGameLevel(AllBinary.getGameInfo(AllBinary.getHighScoresCanvas(this)))
            end
            AllBinary.executeUpdate(AllBinary.getHighScoresCanvas(this))
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.clear(list)
        nothing
end


function paint(this::HighScoresCanvasLevelChangeInputProcessor, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        local width::Int32 = AllBinary.getLastWidth(this.displayInfoSingleton)
        local topScoresWidth::Int32 = (AllBinary.stringWidth(AllBinary.getFont(graphics), this.INSTRUCTIONS) >> Int32(1))
        AllBinary.drawString(graphics, this.INSTRUCTIONS, (width >> Int32(1)) - topScoresWidth, this.fontHeight * Int32(2), this.anchor)
        nothing
end

