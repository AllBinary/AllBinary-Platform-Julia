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

mutable struct GameRunnable <: JObject
    WAIT::Int32
    FAST::Int32
    waitInMillis::Int64
    GameRunnable() = new()
end


function initFieldsGameRunnable(this::GameRunnable)
    this.WAIT = Int32(0)
    this.FAST = Int32(0)
    this.waitInMillis = Int64(0)
    this.WAIT = Int32(240)
    this.FAST = Int32(60)
    this.waitInMillis = ((this.WAIT) % Int64)
    nothing
end


function initGameRunnable(this::GameRunnable)
        initFieldsGameRunnable(this)
        nothing
        nothing
end

function newGameRunnable()
    this = GameRunnable()
    initGameRunnable(this)
    this
end


function run(this::GameRunnable)
        AllBinary.process(AllBinary.getInstance(DisplayInfoSingleton))
        nothing
end


function processLoopSleep(this::GameRunnable)
        AllBinary.sleep(Thread, this.waitInMillis)
        nothing
end

