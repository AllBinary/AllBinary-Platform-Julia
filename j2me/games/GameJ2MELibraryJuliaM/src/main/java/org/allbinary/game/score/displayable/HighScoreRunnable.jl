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
# package org.allbinary.game.score.displayable

# extends ARunnable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct HighScoreRunnable <: JObject
    highScoresCanvas::Any
    HighScoreRunnable() = new()
end


function initFieldsHighScoreRunnable(this::HighScoreRunnable)
    this.highScoresCanvas = nothing
    
    nothing
end


function initHighScoreRunnable(this::HighScoreRunnable, highScoresCanvas)
        initARunnable(this)
        initFieldsHighScoreRunnable(this)
        this.highScoresCanvas = highScoresCanvas
        nothing
end

function newHighScoreRunnable(highScoresCanvas)
    this = HighScoreRunnable()
    initHighScoreRunnable(this, highScoresCanvas)
    this
end


function run(this::HighScoreRunnable)
        local commonStrings = AllBinary.getInstance(CommonStrings)
        local logUtil = AllBinary.getInstance(LogUtil)
        local highScoresCanvas = this.highScoresCanvas
        try
            local isHTML::Bool = AllBinary.isHTML(J2MEUtil)
            if !isHTML
                while !highScoresCanvas.hasPainted
                    nothing
                end
                highScoresCanvas.hasPainted = false
            end
            local stringMaker = newStringMaker()
            local systemWrapper = AllBinary.getInstance(ABSystemWrapper)
            local currentTimeMillis::Int64 = AllBinary.currentTimeMillis(systemWrapper)
            AllBinary.putF(logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(stringMaker, "HighScoresCanvas - Request repaint to be sure: "), currentTimeMillis)), this, commonStrings.RUN)
            AllBinary.onChangeRepaint(highScoresCanvas.repaintBehavior, highScoresCanvas)
            if !isHTML
                while !highScoresCanvas.hasPainted
                    nothing
                end
            end
            AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
            AllBinary.putF(logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(stringMaker, "HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: "), currentTimeMillis)), this, commonStrings.RUN)
            AllBinary.executeUpdate(highScoresCanvas)
        catch e
            AllBinary.put(logUtil, commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        end
        nothing
end

