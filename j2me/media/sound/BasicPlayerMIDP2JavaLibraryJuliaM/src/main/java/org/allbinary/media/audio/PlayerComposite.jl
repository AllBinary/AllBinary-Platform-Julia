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
# package org.allbinary.media.audio

#BasicPlayerMIDP2
mutable struct PlayerComposite <: JObject
    logUtil::Any
    commonStrings::Any
    player::Any
    timeElapsedHelper::Any
    gameTickTimeDelayHelper::Any
    PlayerComposite() = new()
end


function initFieldsPlayerComposite(this::PlayerComposite)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.player = nothing
    this.timeElapsedHelper = nothing
    this.gameTickTimeDelayHelper = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    this.timeElapsedHelper = newTimeDelayHelper(Int32(0))
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    nothing
end


function initPlayerComposite(this::PlayerComposite, player, repeatTime)
        initFieldsPlayerComposite(this)
        this.player = player
        this.timeElapsedHelper.delay = repeatTime
        nothing
end

function newPlayerComposite(player, repeatTime)
    this = PlayerComposite()
    initPlayerComposite(this, player, repeatTime)
    this
end


function addPlayerListener(this::PlayerComposite, playerListener)
        AllBinary.addPlayerListener(this.player, playerListener)
        nothing
end


function removePlayerListener(this::PlayerComposite, playerListener)
        AllBinary.removePlayerListener(this.player, playerListener)
        nothing
end


function close(this::PlayerComposite)
        AllBinary.close(this.player)
        nothing
end


function deallocate(this::PlayerComposite)
        AllBinary.deallocate(this.player)
        nothing
end


function getContentType(this::PlayerComposite)
        return AllBinary.getContentType(this.player)
end


function getDuration(this::PlayerComposite)
        return AllBinary.getDuration(this.player)
end


function getMediaTime(this::PlayerComposite)
        return AllBinary.getMediaTime(this.player)
end


function getTimeBase(this::PlayerComposite)
        return AllBinary.getTimeBase(((this.player)))
end


function setTimeBase(this::PlayerComposite, timeBase)
        AllBinary.setTimeBase(((this.player)), timeBase)
        nothing
end


function prefetch(this::PlayerComposite)
        try
            AllBinary.prefetch(this.player)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "prefetch", e)
        end
        nothing
end


function realize(this::PlayerComposite)
        try
            AllBinary.realize(this.player)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "realize", e)
        end
        nothing
end


function getState(this::PlayerComposite)
        return AllBinary.getState(this.player)
end


function setLoopCount(this::PlayerComposite, count)
        AllBinary.setLoopCount(this.player, count)
        nothing
end


function setMediaTime(this::PlayerComposite, now)
        try
            return AllBinary.setMediaTime(this.player, now)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "setMediaTime", e)
            return ((-Int32(1)) % Int64)
        end
end


function start(this::PlayerComposite)
        try
            if AllBinary.isTime(this.timeElapsedHelper, this.gameTickTimeDelayHelper.startTime)
                AllBinary.start(this.player)
            end
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.START_METHOD_NAME, e)
        end
        nothing
end


function stop(this::PlayerComposite)
        try
            AllBinary.stop(this.player)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "stop", e)
        end
        nothing
end


function getControl(this::PlayerComposite, controlType)
        return AllBinary.getControl(this.player, controlType)
end


function getControls(this::PlayerComposite)
        throw(jNewException("RuntimeException", ""))
end


function setVolume(this::PlayerComposite, leftVolume, rightVolume)
        local controllable2 = ((this.player))
        AllBinary.setVolume(controllable2, leftVolume, rightVolume)
        nothing
end


function getPlayerP(this::PlayerComposite)
        return this.player
end

