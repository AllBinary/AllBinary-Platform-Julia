#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
=#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable

# extends ARunnable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RepaintRunnable <: JObject
    canvas::Any
    RepaintRunnable() = new()
end


function initFieldsRepaintRunnable(this::RepaintRunnable)
    this.canvas = nothing
    
    nothing
end


function initRepaintRunnable(this::RepaintRunnable, canvas)
        initARunnable(this)
        initFieldsRepaintRunnable(this)
        this.canvas = canvas
        nothing
end

function newRepaintRunnable(canvas)
    this = RepaintRunnable()
    initRepaintRunnable(this, canvas)
    this
end


function run(this::RepaintRunnable)
        try
            AllBinary.repaint(this.canvas)
            AllBinary.process(AllBinary.getInstance(DisplayInfoSingleton))
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            local logUtil = AllBinary.getInstance(LogUtil)
            AllBinary.put(logUtil, commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        end
        nothing
end

