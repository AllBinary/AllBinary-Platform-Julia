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

# extends Paintable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HighScoresPaintable <: JObject
    displayInfoSingleton::Any
    myFontProcessor::Any
    basicColor::Any
    highScores::Any
    anchor::Int32
    charHeight::Int32
    HighScoresPaintable() = new()
end


function initFieldsHighScoresPaintable(this::HighScoresPaintable)
    this.displayInfoSingleton = nothing
    this.myFontProcessor = nothing
    this.basicColor = nothing
    this.highScores = nothing
    this.anchor = Int32(0)
    this.charHeight = Int32(0)
    this.displayInfoSingleton = AllBinary.getInstance(DisplayInfoSingleton)
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.basicColor = AllBinary.getInstance(BasicColorFactory).WHITE
    this.highScores = AllBinary.getInstance(NullHighScoresSingletonFactory)
    this.anchor = staticGet_TOP_LEFT(Anchor)
    this.charHeight = Int32(0)
    nothing
end


function initHighScoresPaintable(this::HighScoresPaintable)
        initPaintable(this)
        initFieldsHighScoresPaintable(this)
        nothing
        nothing
end

function newHighScoresPaintable()
    this = HighScoresPaintable()
    initHighScoresPaintable(this)
    this
end


function updateMeasurement(this::HighScoresPaintable, graphics)
        local font = AllBinary.getFont(graphics)
        this.charHeight = AllBinary.getHeight(font)
        this.myFontProcessor = AllBinary.getInstance(MyFontProcessor)
        nothing
end


function onEvent(this::HighScoresPaintable, eventObject)
        local colorChangeEvent = (eventObject)
        this.basicColor = AllBinary.getBasicColorP(colorChangeEvent)
        nothing
end


function paint(this::HighScoresPaintable, graphics)
        AllBinary.process(this.myFontProcessor, graphics)
        local width::Int32 = AllBinary.getLastWidth(this.displayInfoSingleton)
        local height::Int32 = AllBinary.getLastHeight(this.displayInfoSingleton)
        AllBinary.setColor(graphics, AllBinary.intValue(AllBinary.getBasicColorP(this)))
        local heading = AllBinary.getHeading(this.highScores)
        local topScoresWidth::Int32 = (AllBinary.stringWidth(AllBinary.getFont(graphics), heading) >> Int32(1))
        local charHeight::Int32 = this.charHeight
        AllBinary.drawString(graphics, heading, (width >> Int32(1)) - topScoresWidth, charHeight, this.anchor)
        AllBinary.drawString(graphics, AllBinary.getColumnOneHeading(this.highScores), Int32(10), charHeight * Int32(3), this.anchor)
        local columnTwoHeading = AllBinary.getColumnTwoHeading(this.highScores)
        local columnTwoHeadingWidth::Int32 = AllBinary.stringWidth(AllBinary.getFont(graphics), columnTwoHeading)
        AllBinary.drawString(graphics, columnTwoHeading, width - Int32(10) - columnTwoHeadingWidth, charHeight * Int32(3), this.anchor)
        local index::Int32 = Int32(4)
        local largestSecondColumnWidth::Int32 = columnTwoHeadingWidth
        local list = AllBinary.getList(this.highScores)
        local size::Int32 = AllBinary.size(list)
        local vectorIndex::Int32 = Int32(0)
        local highScore = nothing
        while vectorIndex < size && charHeight * index < height - (charHeight * Int32(2))
            highScore = (list.objectArray[vectorIndex + 1])
            local nextScoreWidth::Int32 = AllBinary.stringWidth(AllBinary.getFont(graphics), AllBinary.getScoreString(highScore))
            if nextScoreWidth > largestSecondColumnWidth
                largestSecondColumnWidth = nextScoreWidth
            end
            vectorIndex += Int32(1)
        end
        vectorIndex = Int32(0)
        while vectorIndex < size && charHeight * index < height - (charHeight * Int32(2))
            highScore = (list.objectArray[vectorIndex + 1])
            AllBinary.drawString(graphics, AllBinary.getName(highScore), Int32(10), charHeight * index, this.anchor)
            AllBinary.drawString(graphics, AllBinary.getScoreString(highScore), width - Int32(10) - largestSecondColumnWidth, charHeight * index, this.anchor)
            index += Int32(1)
            vectorIndex += Int32(1)
        end
        nothing
end


function setBasicColorP(this::HighScoresPaintable, basicColor)
        this.basicColor = basicColor
        nothing
end


function getBasicColorP(this::HighScoresPaintable)
        return this.basicColor
end


function setHighScores(this::HighScoresPaintable, highScores)
        this.highScores = highScores
        nothing
end

