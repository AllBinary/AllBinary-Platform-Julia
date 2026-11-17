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
# package org.allbinary.time

mutable struct GameTickTimeDelayHelper <: JObject
    timeDelta::Int64
    startTime::Int64
    lastStartTime::Int64
    GameTickTimeDelayHelper() = new()
end


function initFieldsGameTickTimeDelayHelper(this::GameTickTimeDelayHelper)
    this.timeDelta = Int64(0)
    this.startTime = Int64(0)
    this.lastStartTime = Int64(0)
    this.timeDelta = Int64(0)
    
    
    nothing
end


function initGameTickTimeDelayHelper(this::GameTickTimeDelayHelper, startTime)
        initFieldsGameTickTimeDelayHelper(this)
        this.startTime = startTime
        this.lastStartTime = Int64(0)
        nothing
end

function newGameTickTimeDelayHelper(startTime)
    this = GameTickTimeDelayHelper()
    initGameTickTimeDelayHelper(this, startTime)
    this
end


function setStartTime(this::GameTickTimeDelayHelper)
        this.startTime = jCurrentTimeMillis()
        return this.startTime
end


function loop(this::GameTickTimeDelayHelper)
        if this.lastStartTime == staticGet_MIN_VALUE(Long)
            this.timeDelta = Int64(0)
        else
            this.timeDelta = jCurrentTimeMillis() - this.lastStartTime
        end
        nothing
end


function getTimeFromStart(this::GameTickTimeDelayHelper)
        return this.startTime - this.lastStartTime
end

