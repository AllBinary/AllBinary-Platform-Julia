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

mutable struct HighScoresBase <: JObject
    commonStrings::Any
    HighScoresBase() = new()
end


function initFieldsHighScoresBase(this::HighScoresBase)
    this.commonStrings = nothing
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    nothing
end


function initHighScoresBase(this::HighScoresBase)
        initFieldsHighScoresBase(this)
        nothing
        nothing
end

function newHighScoresBase()
    this = HighScoresBase()
    initHighScoresBase(this)
    this
end


function fetchHighScores(this::HighScoresBase, gameInfo, highScoresResultsListener)
        throw(jNewException("RuntimeException", ""))
        nothing
end


function fetchHighScoresPreload(this::HighScoresBase, gameInfo, highScoresResultsListener, preload)
        throw(jNewException("RuntimeException", ""))
        nothing
end


function createHighScoresHelper(this::HighScoresBase)
        throw(jNewException("RuntimeException", ""))
end

