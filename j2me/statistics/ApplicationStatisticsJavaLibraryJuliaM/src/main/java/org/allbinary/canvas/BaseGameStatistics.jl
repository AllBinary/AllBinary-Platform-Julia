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
# package org.allbinary.canvas

mutable struct BaseGameStatistics <: JObject
    timeDelayHelper::Any
    updateDelayHelper::Any
    totalRefreshes::Int64
    totalFrames::Int64
    gameTickTimeDelayHelper::Any
    DEFAULT_SCALE_FACTOR::Int32
    NOT::Any
    EMPTY_STRING::Any
    STRING_ARRAY::Any
    SPACE_CHAR::UInt16
    PLUS_CHAR::UInt16
    X_CHAR::UInt16
    CHAR_ARRAY::Any
    primitiveLongSingleton::Any
    BaseGameStatistics() = new()
end


function initFieldsBaseGameStatistics(this::BaseGameStatistics)
    this.timeDelayHelper = nothing
    this.updateDelayHelper = nothing
    this.totalRefreshes = Int64(0)
    this.totalFrames = Int64(0)
    this.gameTickTimeDelayHelper = nothing
    this.DEFAULT_SCALE_FACTOR = Int32(0)
    this.NOT = nothing
    this.EMPTY_STRING = nothing
    this.STRING_ARRAY = nothing
    this.SPACE_CHAR = UInt16(0)
    this.PLUS_CHAR = UInt16(0)
    this.X_CHAR = UInt16(0)
    this.CHAR_ARRAY = nothing
    this.primitiveLongSingleton = nothing
    this.timeDelayHelper = newTimeDelayHelper(staticGet_MAX_VALUE(Integer))
    this.updateDelayHelper = newTimeDelayHelper(Int32(2000))
    this.totalRefreshes = Int64(0)
    this.totalFrames = Int64(0)
    this.gameTickTimeDelayHelper = AllBinary.getInstance(GameTickTimeDelayHelperFactory)
    this.DEFAULT_SCALE_FACTOR = AllBinary.getInstance(ScaleFactorFactory).DEFAULT_SCALE_FACTOR
    this.NOT = "Not enough Time to Calculate"
    this.EMPTY_STRING = AllBinary.getInstance(StringUtil).EMPTY_STRING
    this.STRING_ARRAY = Any[" Total Time: ", this.EMPTY_STRING, " Total Frames: ", this.EMPTY_STRING, " Frames/10 Sec: ", this.EMPTY_STRING, " Total Paints: ", this.EMPTY_STRING, " Paints/10 Sec: ", this.EMPTY_STRING]
    this.SPACE_CHAR = UInt16(' ')
    this.PLUS_CHAR = UInt16('+')
    this.X_CHAR = UInt16('X')
    this.CHAR_ARRAY = Vector{UInt16}[UInt16[UInt16('F'), UInt16('r'), UInt16('a'), UInt16('m'), UInt16('e'), UInt16('s'), UInt16('/'), UInt16('1'), UInt16('0'), UInt16(' '), UInt16('S'), UInt16('e'), UInt16('c'), UInt16(':')], UInt16[UInt16('X'), UInt16('X')], UInt16[UInt16('P'), UInt16('a'), UInt16('i'), UInt16('n'), UInt16('t'), UInt16('s'), UInt16('/'), UInt16('1'), UInt16('0'), UInt16(' '), UInt16('S'), UInt16('e'), UInt16('c'), UInt16(':')], UInt16[UInt16('X'), UInt16('X')]]
    this.primitiveLongSingleton = AllBinary.getInstance(PrimitiveLongSingleton)
    nothing
end


function initBaseGameStatistics(this::BaseGameStatistics)
        initFieldsBaseGameStatistics(this)
        nothing
        nothing
end

function newBaseGameStatistics()
    this = BaseGameStatistics()
    initBaseGameStatistics(this)
    this
end


function init(this::BaseGameStatistics)
        AllBinary.setStartTimeTNT(this.timeDelayHelper)
        this.totalRefreshes = Int64(0)
        this.totalFrames = Int64(0)
        nothing
end


function add(this::BaseGameStatistics, string)
        nothing
        nothing
end


function process(this::BaseGameStatistics)
        nothing
        nothing
end


function nextFrame(this::BaseGameStatistics)
        this.totalFrames += 1
        nothing
end


function nextRefresh(this::BaseGameStatistics)
        this.totalRefreshes += 1
        nothing
end


function getRefreshRate(this::BaseGameStatistics)
        local elapsed::Int64 = AllBinary.getElapsed(this.timeDelayHelper, this.gameTickTimeDelayHelper.startTime)
        if elapsed > Int64(1)
            local time::Int16 = (((this.totalRefreshes ÷ (elapsed >> this.DEFAULT_SCALE_FACTOR))) % Int16)
            return time
        else
            return Int32(0)
        end
end


function getTimeDelayHelper(this::BaseGameStatistics)
        return this.timeDelayHelper
end


function to2DCharArray(this::BaseGameStatistics)
        local totalTime::Int64 = AllBinary.getElapsed(this.timeDelayHelper, this.gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime >> this.DEFAULT_SCALE_FACTOR)
        if totalTime > Int64(0) && AllBinary.isTime(this.updateDelayHelper, this.gameTickTimeDelayHelper.startTime)
            local framesPerSec::Int32 = (((this.totalFrames ÷ totalTime)) % Int32)
            if framesPerSec < Int32(10)
                this.CHAR_ARRAY[Int32(1) + 1][Int32(0) + 1] = this.SPACE_CHAR
                this.CHAR_ARRAY[Int32(1) + 1][Int32(1) + 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec + 1]
            elseif framesPerSec < Int32(100)
                local tens::Int32 = framesPerSec ÷ Int32(10)
                local removeTens::Int32 = tens * Int32(10)
                this.CHAR_ARRAY[Int32(1) + 1][Int32(0) + 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[tens + 1]
                this.CHAR_ARRAY[Int32(1) + 1][Int32(1) + 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec - removeTens + 1]
            else
                this.CHAR_ARRAY[Int32(1) + 1][Int32(0) + 1] = this.PLUS_CHAR
                this.CHAR_ARRAY[Int32(1) + 1][Int32(1) + 1] = this.PLUS_CHAR
            end
            local refreshesPerSec::Int32 = (((this.totalRefreshes ÷ totalTime)) % Int32)
            if refreshesPerSec < Int32(10)
                this.CHAR_ARRAY[Int32(3) + 1][Int32(0) + 1] = this.X_CHAR
                this.CHAR_ARRAY[Int32(3) + 1][Int32(1) + 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec + 1]
            elseif refreshesPerSec < Int32(100)
                tens = refreshesPerSec ÷ Int32(10)
                removeTens = tens * Int32(10)
                this.CHAR_ARRAY[Int32(3) + 1][Int32(0) + 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec ÷ Int32(10) + 1]
                this.CHAR_ARRAY[Int32(3) + 1][Int32(1) + 1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec - removeTens + 1]
            else
                this.CHAR_ARRAY[Int32(3) + 1][Int32(0) + 1] = this.PLUS_CHAR
                this.CHAR_ARRAY[Int32(3) + 1][Int32(1) + 1] = this.PLUS_CHAR
            end
        end
        return this.CHAR_ARRAY
end


function toStringArray(this::BaseGameStatistics)
        local totalTime::Int64 = AllBinary.getElapsed(this.timeDelayHelper, this.gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime ÷ Int64(10000))
        if totalTime > Int64(0)
            this.STRING_ARRAY[Int32(1) + 1] = jstr(totalTime)
            this.STRING_ARRAY[Int32(3) + 1] = jstr(this.totalFrames)
            this.STRING_ARRAY[Int32(5) + 1] = jstr(this.totalFrames ÷ totalTime)
            this.STRING_ARRAY[Int32(7) + 1] = jstr(this.totalRefreshes)
            this.STRING_ARRAY[Int32(9) + 1] = jstr(this.totalRefreshes ÷ totalTime)
        else
            local string = this.EMPTY_STRING
            this.STRING_ARRAY[Int32(1) + 1] = string
            this.STRING_ARRAY[Int32(3) + 1] = string
            this.STRING_ARRAY[Int32(5) + 1] = string
            this.STRING_ARRAY[Int32(7) + 1] = string
            this.STRING_ARRAY[Int32(9) + 1] = string
        end
        return this.STRING_ARRAY
end


function toStringAt(this::BaseGameStatistics, totalTime)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, this.STRING_ARRAY[Int32(0) + 1])
        AllBinary.appendlong(stringBuffer, totalTime)
        AllBinary.append(stringBuffer, this.STRING_ARRAY[Int32(2) + 1])
        AllBinary.appendlong(stringBuffer, this.totalFrames)
        AllBinary.append(stringBuffer, this.STRING_ARRAY[Int32(4) + 1])
        AllBinary.appendlong(stringBuffer, this.totalFrames ÷ totalTime)
        if this.totalRefreshes > Int64(0)
            AllBinary.append(stringBuffer, this.STRING_ARRAY[Int32(6) + 1])
            AllBinary.appendlong(stringBuffer, this.totalRefreshes)
            AllBinary.append(stringBuffer, this.STRING_ARRAY[Int32(8) + 1])
            AllBinary.appendlong(stringBuffer, this.totalRefreshes ÷ totalTime)
            AllBinary.append(stringBuffer, AllBinary.getInstance(CommonSeps).NEW_LINE)
        end
        return AllBinary.toString(stringBuffer)
end


function toString(this::BaseGameStatistics)
        local totalTime::Int64 = AllBinary.getElapsed(this.timeDelayHelper, this.gameTickTimeDelayHelper.startTime)
        totalTime = (totalTime ÷ Int64(1000))
        if totalTime > Int64(0)
            return AllBinary.toStringAt(this, totalTime)
        else
            return this.NOT
        end
end

