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
# package org.allbinary.game.init

mutable struct DefaultGameInitializationListener <: JObject
    logUtil::Any
    swtJOGLProcessor::Any
    firstTime::Bool
    DefaultGameInitializationListener() = new()
end


function initFieldsDefaultGameInitializationListener(this::DefaultGameInitializationListener)
    this.logUtil = nothing
    this.swtJOGLProcessor = nothing
    this.firstTime = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.swtJOGLProcessor = AllBinary.getInstance(SWTJOGLProcessor)
    this.firstTime = true
    nothing
end


function initDefaultGameInitializationListener(this::DefaultGameInitializationListener)
        initFieldsDefaultGameInitializationListener(this)
        local gameInitializedEventHandler = AllBinary.getInstance(GameInitializedEventHandler)
        AllBinary.removeAllListeners(gameInitializedEventHandler)
        AllBinary.addListenerInterface(gameInitializedEventHandler, (this))
        nothing
end

function newDefaultGameInitializationListener()
    this = DefaultGameInitializationListener()
    initDefaultGameInitializationListener(this)
    this
end


function onEvent(this::DefaultGameInitializationListener, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function onGameInitialized(this::DefaultGameInitializationListener, gameInitializedEvent)
        local ON_GAME_INITIALIZED = "onGameInitialized"
        local commonStrings = AllBinary.getInstance(CommonStrings)
        try
            AllBinary.putF(this.logUtil, commonStrings.START, this, ON_GAME_INITIALIZED)
            while !AllBinary.isHolderCreated(this.swtJOGLProcessor)
                AllBinary.putF(this.logUtil, commonStrings.UPDATE, this, ON_GAME_INITIALIZED)
                AllBinary.sleep(Thread, Int32(20))
            end
            AllBinary.init(AllBinary.getInstance(FeatureResourceInitializationUtil), AllBinary.getLevel(gameInitializedEvent))
            if this.firstTime
                this.firstTime = false
            else
                AllBinary.onSurfaceChanged(this.swtJOGLProcessor)
            end
        catch e
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, ON_GAME_INITIALIZED, e)
        end
        nothing
end

