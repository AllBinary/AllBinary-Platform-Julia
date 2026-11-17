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

# extends GameMidlet: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DemoGameMidlet <: JObject
    DemoGameMidlet() = new()
end


function initFieldsDemoGameMidlet(this::DemoGameMidlet)
    nothing
end


function initDemoGameMidlet(this::DemoGameMidlet, clientInformationFactory)
        initGameMidlet(this, clientInformationFactory)
        nothing
end

function newDemoGameMidlet(clientInformationFactory)
    this = DemoGameMidlet()
    initDemoGameMidlet(this, clientInformationFactory)
    this
end


function isContinue(this::DemoGameMidlet)
        local hashtable = AllBinary.getStartStateHashtable(this)
        if hashtable !== nothing && AllBinary.size(hashtable) > Int32(0)
            return true
        else
            return false
        end
end


function getHighestLevel(this::DemoGameMidlet)
        return Int32(1)
end


function createDemoGameCanvasRunnableInterface(this::DemoGameMidlet)
        AllBinary.putF(this.logUtil, this.commonStrings.NOT_IMPLEMENTED, this, this.commonStrings.CREATE)
        return staticGet_NULL_GAME_CANVAS_RUNNABLE(NullGameCanvasRunnable)
end


function createGameCanvasRunnable(this::DemoGameMidlet, allBinaryGameLayerManager)
        throw(jNewException("Exception", this.commonStrings.NOT_IMPLEMENTED))
end


function createGameCanvasRunnableInterface(this::DemoGameMidlet)
        return AllBinary.createGameCanvasRunnable(this, AllBinary.createGameLayerManager(this))
end


function demoSetup(this::DemoGameMidlet)
        nothing
        nothing
end


function postDemoSetup(this::DemoGameMidlet)
        nothing
        nothing
end


function setDemo(this::DemoGameMidlet)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, "setDemo")
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        AllBinary.start(progressCanvas)
        AllBinary.runTask(AllBinary.getInstance(PrimaryThreadPool), newDemoRunnable(this))
        nothing
end


function createGame(this::DemoGameMidlet)
        local CREATE_GAME = "createGame"
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, CREATE_GAME)
        local progressCanvas = AllBinary.getInstance(ProgressCanvasFactory)
        AllBinary.start(progressCanvas)
        local hashtable = AllBinary.getStartStateHashtable(this)
        AllBinary.setStartStateHashtable(this, AllBinary.getInstance(StdUtil).NULL_TABLE)
        AllBinary.runTask(AllBinary.getInstance(PrimaryThreadPool), newCreateGameRunnable(this, hashtable))
        AllBinary.putF(this.logUtil, this.commonStrings.END, this, CREATE_GAME)
        nothing
end


function isReady(this::DemoGameMidlet)
        return true
end

