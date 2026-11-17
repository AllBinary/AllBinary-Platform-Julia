# Generated Code Do Not Modify
# package org.allbinary.time

mutable struct StupidTimer <: JObject
    logUtil::Any
    commonStrings::Any
    nullUtil::Any
    threadObjectUtil::Any
    StupidTimer() = new()
end


function initFieldsStupidTimer(this::StupidTimer)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.nullUtil = nothing
    this.threadObjectUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.nullUtil = AllBinary.getInstance(NullUtil)
    this.threadObjectUtil = AllBinary.getInstance(ThreadObjectUtil)
    nothing
end

function initStupidTimer(this::StupidTimer)
    initFieldsStupidTimer(this)
end

function newStupidTimer()
    this = StupidTimer()
    initStupidTimer(this)
    this
end


function visitBool(this::StupidTimer, visitorInterface)
        local result = (AllBinary.visit(visitorInterface, this.nullUtil.NULL_OBJECT))
        local result2::Bool = AllBinary.booleanValue(result)
        return result2
end


function visit(this::StupidTimer, visitorInterface, timeDelayHelper)
        local tookTooLong::Bool = false
        local WAITING_FOR = "Waiting for: "
        AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), WAITING_FOR), AllBinary.toString(AllBinary.getInstance(StringUtil), visitorInterface))), this, this.commonStrings.VISIT)
        local index::Int32 = Int32(0)
        while AllBinary.visitBool(this, visitorInterface)
            if index % Int32(10) == Int32(0)
                AllBinary.put(PreLogUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), WAITING_FOR), index)), this, this.commonStrings.VISIT)
            end
            index += Int32(1)
            begin
                AllBinary.waitObjectFor(this.threadObjectUtil, this, Int32(1800))
            end
            if AllBinary.isTimeTNT(timeDelayHelper)
                tookTooLong = true
                break
            end
        end
        if tookTooLong
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.VISIT, jNewException("Exception", AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Took Too Long: "), AllBinary.toString(AllBinary.getInstance(StringUtil), visitorInterface)))))
        else
            AllBinary.put(PreLogUtil, AllBinary.toString(timeDelayHelper), this, this.commonStrings.VISIT)
        end
        nothing
end


function stopWaiting(this::StupidTimer)
        begin
            AllBinary.notifyObject(this.threadObjectUtil, this)
        end
        nothing
end

