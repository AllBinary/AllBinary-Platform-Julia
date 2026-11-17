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

mutable struct SaveHighScoreRunnable <: JObject
    progressCanvas::Any
    isLast::Bool
    textBox::Any
    SaveHighScoreRunnable() = new()
end


function initFieldsSaveHighScoreRunnable(this::SaveHighScoreRunnable)
    this.progressCanvas = nothing
    this.isLast = false
    this.textBox = nothing
    this.progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
    
    
    nothing
end


function initSaveHighScoreRunnable(this::SaveHighScoreRunnable, isLast, textBox)
        initFieldsSaveHighScoreRunnable(this)
        this.isLast = isLast
        this.textBox = textBox
        nothing
end

function newSaveHighScoreRunnable(isLast, textBox)
    this = SaveHighScoreRunnable()
    initSaveHighScoreRunnable(this, isLast, textBox)
    this
end


function run(this::SaveHighScoreRunnable)
        local logUtil = AllBinary.getInstance(LogUtil)
        try
            if this.isLast
                AllBinary.submit(this.textBox)
            else
                AllBinary.saveHighScore(this.textBox)
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(logUtil, commonStrings.EXCEPTION, this, "run", e)
            AllBinary.end_(this.progressCanvas)
        end
        nothing
end

