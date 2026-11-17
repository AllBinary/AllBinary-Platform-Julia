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

# extends GameRunnable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct GameCanvasPauseRunnable <: JObject
    logUtil::Any
    allBinaryGameCanvas::Any
    GameCanvasPauseRunnable() = new()
end


function initFieldsGameCanvasPauseRunnable(this::GameCanvasPauseRunnable)
    this.logUtil = nothing
    this.allBinaryGameCanvas = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    nothing
end


function initGameCanvasPauseRunnable(this::GameCanvasPauseRunnable, allBinaryGameCanvas)
        initGameRunnable(this)
        initFieldsGameCanvasPauseRunnable(this)
        this.allBinaryGameCanvas = allBinaryGameCanvas
        nothing
end

function newGameCanvasPauseRunnable(allBinaryGameCanvas)
    this = GameCanvasPauseRunnable()
    initGameCanvasPauseRunnable(this, allBinaryGameCanvas)
    this
end


function run(this::GameCanvasPauseRunnable)
        nothing
        nothing
end


function processLoopSleep(this::GameCanvasPauseRunnable)
        try
            local features = AllBinary.getInstance(Features)
            local isOpenGL::Bool = AllBinary.isDefault(features, AllBinary.getInstance(OpenGLFeatureFactory).OPENGL)
            if isOpenGL
                AllBinary.processSleep(this.allBinaryGameCanvas)
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        end
        nothing
end

