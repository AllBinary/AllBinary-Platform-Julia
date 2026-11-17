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
# package org.allbinary.game.midlet

mutable struct CreateGameRunnable <: JObject
    logUtil::Any
    commonStrings::Any
    demoGameMidlet::Any
    hashtable::Any
    startGameMidletEvent::Any
    CreateGameRunnable() = new()
end


function initFieldsCreateGameRunnable(this::CreateGameRunnable)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.demoGameMidlet = nothing
    this.hashtable = nothing
    this.startGameMidletEvent = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    
    nothing
end


function initCreateGameRunnable(this::CreateGameRunnable, demoGameMidlet, hashtable)
        initFieldsCreateGameRunnable(this)
        this.demoGameMidlet = demoGameMidlet
        this.hashtable = hashtable
        this.startGameMidletEvent = newDemoGameMidletEvent(this, AllBinary.getInstance(DemoGameMidletStateFactory).START_GAME)
        nothing
end

function newCreateGameRunnable(demoGameMidlet, hashtable)
    this = CreateGameRunnable()
    initCreateGameRunnable(this, demoGameMidlet, hashtable)
    this
end


function run(this::CreateGameRunnable)
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
            AllBinary.commandAction(this.demoGameMidlet, AllBinary.getInstance(MyCommandsFactory).SET_DISPLAYABLE, progressCanvas)
            AllBinary.stopGameCanvasRunnableInterface(this.demoGameMidlet)
            AllBinary.setGameCanvasRunnableInterface(this.demoGameMidlet, AllBinary.createGameCanvasRunnableInterface(this.demoGameMidlet))
            AllBinary.setLoadStateHashtable(AllBinary.getGameCanvasRunnableInterface(this.demoGameMidlet), this.hashtable)
            AllBinary.startGameCanvasRunnableInterface(this.demoGameMidlet)
            AllBinary.fireEvent(AllBinary.getInstance(DemoGameMidletEventHandler), this.startGameMidletEvent)
            AllBinary.putF(this.logUtil, this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        end
        nothing
end

