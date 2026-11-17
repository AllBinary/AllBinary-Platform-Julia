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
# package org.allbinary.time

mutable struct TimeDelayHelper <: JObject
    startTime::Int64
    elapsedTimeAtPause::Int64
    delay::Int32
    TimeDelayHelper() = new()
end


function initFieldsTimeDelayHelper(this::TimeDelayHelper)
    this.startTime = Int64(0)
    this.elapsedTimeAtPause = Int64(0)
    this.delay = Int32(0)
    this.startTime = ((-Int32(1)) % Int64)
    this.elapsedTimeAtPause = staticGet_MIN_VALUE(Long)
    
    nothing
end


function initTimeDelayHelper(this::TimeDelayHelper, delay)
        initFieldsTimeDelayHelper(this)
        this.delay = delay
        AllBinary.setStartTimeTNT(this)
        nothing
end

function newTimeDelayHelper(delay)
    this = TimeDelayHelper()
    initTimeDelayHelper(this, delay)
    this
end


function isTimeTNT(this::TimeDelayHelper)
        local currentTime::Int64 = jCurrentTimeMillis()
        if currentTime - this.startTime > ((this.delay) % Int64)
            this.startTime = currentTime
            return true
        end
        return false
end


function isTimeSinceTNT(this::TimeDelayHelper, delay)
        local currentTime::Int64 = jCurrentTimeMillis()
        if currentTime - this.startTime > ((delay) % Int64)
            this.startTime = currentTime
            return true
        end
        return false
end


function isTime(this::TimeDelayHelper, currentTime)
        if currentTime - this.startTime > ((this.delay) % Int64)
            this.startTime = currentTime
            return true
        end
        return false
end


function isTimeWithoutReset(this::TimeDelayHelper, currentTime)
        if currentTime - this.startTime > ((this.delay) % Int64)
            return true
        end
        return false
end


function isTimeSince(this::TimeDelayHelper, delay, currentTime)
        if currentTime - this.startTime > ((this.delay) % Int64)
            this.startTime = currentTime
            return true
        end
        return false
end


function getElapsedTNT(this::TimeDelayHelper)
        return jCurrentTimeMillis() - this.startTime
end


function getElapsed(this::TimeDelayHelper, currentTime)
        return currentTime - this.startTime
end


function isElapsed(this::TimeDelayHelper, currentTime, time)
        if AllBinary.getElapsed(this, currentTime) > time
            return true
        else
            return false
        end
end


function isElapsedTNT(this::TimeDelayHelper, time)
        if AllBinary.getElapsedTNT(this) > time
            return true
        else
            return false
        end
end


function setStartTime(this::TimeDelayHelper, startTime)
        this.startTime = startTime
        nothing
end


function getStartTime(this::TimeDelayHelper)
        return this.startTime
end


function setStartTimeTNT(this::TimeDelayHelper)
        this.startTime = jCurrentTimeMillis()
        nothing
end


function pause(this::TimeDelayHelper)
        this.elapsedTimeAtPause = AllBinary.getElapsedTNT(this)
        this.startTime = staticGet_MAX_VALUE(Long)
        nothing
end


function resume(this::TimeDelayHelper)
        if this.elapsedTimeAtPause != staticGet_MIN_VALUE(Long)
            this.startTime = jCurrentTimeMillis() + this.elapsedTimeAtPause
            this.elapsedTimeAtPause = staticGet_MIN_VALUE(Long)
            AllBinary.setStartTimeTNT(this)
            return true
        end
        return false
end


function toStringAt(this::TimeDelayHelper, currentTime)
        local elapsed::Int64 = AllBinary.getElapsed(this, currentTime)
        if elapsed > Int64(0)
            local commonLabels = AllBinary.getInstance(CommonLabels)
            local elapsedAsString = jstr(elapsed)
            return AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.appendlong(AllBinary.append(AllBinary.appendlong(AllBinary.append(newStringMaker(), commonLabels.START), this.startTime), commonLabels.CURRENT), currentTime), commonLabels.ELAPSED), elapsedAsString))
        else
            return AllBinary.getInstance(StringUtil).EMPTY_STRING
        end
end


function toString(this::TimeDelayHelper)
        local currentTime::Int64 = jCurrentTimeMillis()
        local elapsed::Int64 = AllBinary.getElapsed(this, currentTime)
        if elapsed > Int64(0)
            local commonLabels = AllBinary.getInstance(CommonLabels)
            local elapsedAsString = jstr(elapsed)
            return AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.appendlong(AllBinary.append(AllBinary.appendlong(AllBinary.append(newStringMaker(), commonLabels.START), this.startTime), commonLabels.CURRENT), currentTime), commonLabels.ELAPSED), elapsedAsString))
        else
            return AllBinary.getInstance(StringUtil).EMPTY_STRING
        end
end

