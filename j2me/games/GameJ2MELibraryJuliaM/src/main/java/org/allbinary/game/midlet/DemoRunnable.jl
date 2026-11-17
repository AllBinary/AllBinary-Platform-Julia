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

mutable struct DemoRunnable <: JObject
    logUtil::Any
    commonStrings::Any
    demoGameMidlet::Any
    startDemoGameMidletEvent::Any
    DemoRunnable() = new()
end


function initFieldsDemoRunnable(this::DemoRunnable)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.demoGameMidlet = nothing
    this.startDemoGameMidletEvent = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    nothing
end


function initDemoRunnable(this::DemoRunnable, demoGameMidlet)
        initFieldsDemoRunnable(this)
        this.demoGameMidlet = demoGameMidlet
        this.startDemoGameMidletEvent = newDemoGameMidletEvent(this.demoGameMidlet, AllBinary.getInstance(DemoGameMidletStateFactory).START_DEMO)
        nothing
end

function newDemoRunnable(demoGameMidlet)
    this = DemoRunnable()
    initDemoRunnable(this, demoGameMidlet)
    this
end


function run(this::DemoRunnable)
        try
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).START_LABEL), "GameCanvasRunnableInterface")), this, this.commonStrings.RUN)
            AllBinary.commandAction(this.demoGameMidlet, AllBinary.getInstance(MyCommandsFactory).SET_DISPLAYABLE, AllBinary.getInstance(ProgressCanvasFactory))
            AllBinary.setGameCanvasRunnableInterface(this.demoGameMidlet, AllBinary.createDemoGameCanvasRunnableInterface(this.demoGameMidlet))
            AllBinary.demoSetup(this.demoGameMidlet)
            AllBinary.fireEvent(AllBinary.getInstance(DemoGameMidletEventHandler), this.startDemoGameMidletEvent)
            AllBinary.startGameCanvasRunnableInterface(this.demoGameMidlet)
            AllBinary.postDemoSetup(this.demoGameMidlet)
            AllBinary.putF(this.logUtil, this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        end
        nothing
end

