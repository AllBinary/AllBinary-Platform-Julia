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

mutable struct HighScores <: JObject
    orderedHighScoresList::Any
    name::Any
    heading::Any
    columnOneHeading::Any
    columnTwoHeading::Any
    HighScores() = new()
end


function initFieldsHighScores(this::HighScores)
    this.orderedHighScoresList = nothing
    this.name = nothing
    this.heading = nothing
    this.columnOneHeading = nothing
    this.columnTwoHeading = nothing
    this.orderedHighScoresList = newBasicArrayListD()
    
    
    this.columnOneHeading = "Name"
    
    nothing
end


function initHighScores(this::HighScores, name, heading, columnTwoHeading)
        initFieldsHighScores(this)
        this.name = name
        this.heading = heading
        this.columnTwoHeading = columnTwoHeading
        nothing
end

function newHighScores(name, heading, columnTwoHeading)
    this = HighScores()
    initHighScores(this, name, heading, columnTwoHeading)
    this
end


function setList(this::HighScores, orderedHighScoresList)
        this.orderedHighScoresList = orderedHighScoresList
        nothing
end


function getList(this::HighScores)
        return this.orderedHighScoresList
end


function getName(this::HighScores)
        return this.name
end


function getTotal(this::HighScores)
        return AllBinary.size(AllBinary.getList(this))
end


function addHighScore(this::HighScores, newHighScore)
        AllBinary.add(this.orderedHighScoresList, newHighScore)
        nothing
end


function getHeading(this::HighScores)
        return this.heading
end


function getColumnOneHeading(this::HighScores)
        return this.columnOneHeading
end


function getColumnTwoHeading(this::HighScores)
        return this.columnTwoHeading
end


function isBestScore(this::HighScores, newHighScore)
        return false
end


function toString(this::HighScores)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "HighScores: ")
        AllBinary.append(stringBuffer, this.heading)
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).SPACE)
        AllBinary.append(stringBuffer, AllBinary.getInstance(CommonLabels).TOTAL_LABEL)
        AllBinary.appendint(stringBuffer, AllBinary.size(this.orderedHighScoresList))
        return AllBinary.toString(stringBuffer)
end

