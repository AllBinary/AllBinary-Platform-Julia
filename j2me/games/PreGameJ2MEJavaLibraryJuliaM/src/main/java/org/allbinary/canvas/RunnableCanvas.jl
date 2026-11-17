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

# extends MyCanvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct RunnableCanvas <: JObject
    nullUtil::Any
    stdUtil::Any
    systemWrapper::Any
    tsUtil::Any
    thread::Any
    currentThread::Any
    running::Bool
    loopTimeHelper::Any
    runnableCanvasRefreshHelper::Any
    commonLabels::Any
    threadObjectUtil::Any
    SET_RUNNING::Any
    IS_RUNNING::Any
    THREAD::Any
    NOT_EQUAL::Any
    PAUSE_SLEEP::Any
    START_PAUSE::Any
    END_PAUSE::Any
    PROCESS_LOOP_SLEEP::Any
    pauseWait::Int64
    notified::Bool
    RunnableCanvas() = new()
end


function initFieldsRunnableCanvas(this::RunnableCanvas)
    this.nullUtil = nothing
    this.stdUtil = nothing
    this.systemWrapper = nothing
    this.tsUtil = nothing
    this.thread = nothing
    this.currentThread = nothing
    this.running = false
    this.loopTimeHelper = nothing
    this.runnableCanvasRefreshHelper = nothing
    this.commonLabels = nothing
    this.threadObjectUtil = nothing
    this.SET_RUNNING = nothing
    this.IS_RUNNING = nothing
    this.THREAD = nothing
    this.NOT_EQUAL = nothing
    this.PAUSE_SLEEP = nothing
    this.START_PAUSE = nothing
    this.END_PAUSE = nothing
    this.PROCESS_LOOP_SLEEP = nothing
    this.pauseWait = Int64(0)
    this.notified = false
    this.nullUtil = AllBinary.getInstance(NullUtil)
    this.stdUtil = AllBinary.getInstance(StdUtil)
    this.systemWrapper = AllBinary.getInstance(ABSystemWrapper)
    this.tsUtil = AllBinary.getInstance(TsUtil)
    this.thread = staticGet_NULL_THREAD(NullThread)
    this.currentThread = staticGet_NULL_THREAD(NullThread)
    this.running = false
    this.loopTimeHelper = newTimeDelayHelper(AllBinary.getInstance(NullWaitGameRunnable).WAIT)
    this.runnableCanvasRefreshHelper = AllBinary.getInstance(Processor)
    this.commonLabels = AllBinary.getInstance(CommonLabels)
    this.threadObjectUtil = AllBinary.getInstance(ThreadObjectUtil)
    this.SET_RUNNING = "setRunning"
    this.IS_RUNNING = "isRunning"
    this.THREAD = "Thread: "
    this.NOT_EQUAL = " != "
    this.PAUSE_SLEEP = "pause sleep"
    this.START_PAUSE = "start pause - game thread sleep at: "
    this.END_PAUSE = "end pause - game thread sleep at: "
    this.PROCESS_LOOP_SLEEP = "processLoopSleep"
    this.pauseWait = Int64(0)
    this.notified = false
    nothing
end


function initRunnableCanvas(this::RunnableCanvas, commandListener, childNameList, hasParam)
        initMyCanvas(this, AllBinary.getInstance(CommonStrings).UNKNOWN, childNameList)
        initFieldsRunnableCanvas(this)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "RunnableCanvas delay: "), ((this.loopTimeHelper.delay) % Int32))), this, this.commonStrings.CONSTRUCTOR)
        this.runnableCanvasRefreshHelper = newRunnableCanvasRefreshHelper(this)
        if commandListener !== nothing
            AllBinary.initCommands(this, commandListener)
        elseif hasParam
            AllBinary.putF(this.logUtil, "commandListener was null", this, "initCommands")
        end
        nothing
end

function newRunnableCanvas(commandListener, childNameList, hasParam)
    this = RunnableCanvas()
    initRunnableCanvas(this, commandListener, childNameList, hasParam)
    this
end


function initCommands(this::RunnableCanvas, cmdListener)
        AllBinary.putF(this.logUtil, this.commonStrings.NOT_IMPLEMENTED, this, "initCommands")
        nothing
end


function isMainCanvas(this::RunnableCanvas)
        if AllBinary.getCustomCommandListener(this) !== nothing
            return true
        else
            return false
        end
end


function setThread(this::RunnableCanvas, thread)
        this.thread = thread
        nothing
end


function setRunning(this::RunnableCanvas, running)
        this.running = running
        if !this.running
            this.thread = staticGet_NULL_THREAD(NullThread)
            begin
                AllBinary.notifyObject(this.threadObjectUtil, this)
            end
        end
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendboolean(AllBinary.append(newStringMaker(), this.IS_RUNNING), this.running)), this, this.SET_RUNNING)
        nothing
end


function isRunning(this::RunnableCanvas)
        if this.thread === this.currentThread
            return this.running
        else
            local stringBuffer = newStringMaker()
            AllBinary.append(stringBuffer, this.THREAD)
            if this.thread !== nothing
                AllBinary.append(stringBuffer, AllBinary.toString(this.thread))
            end
            AllBinary.append(stringBuffer, this.NOT_EQUAL)
            if this.currentThread !== nothing
                AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), this.currentThread))
            end
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, this.IS_RUNNING)
            return false
        end
end


function getLoopTimeHelperP(this::RunnableCanvas)
        return this.loopTimeHelper
end


function setWait(this::RunnableCanvas, wait)
        this.loopTimeHelper.delay = wait
        this.pauseWait = ((wait) % Int64) * Int64(3)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendint(AllBinary.append(newStringMaker(), "setWait - delay: "), ((this.loopTimeHelper.delay) % Int32))), this, this.commonStrings.CONSTRUCTOR)
        nothing
end


function getWait(this::RunnableCanvas)
        return this.loopTimeHelper.delay
end


function setCurrentThread(this::RunnableCanvas)
        this.currentThread = AllBinary.currentThread(Thread)
        nothing
end


function setCurrentThreadFake(this::RunnableCanvas)
        this.currentThread = this.thread
        nothing
end


function showNotify(this::RunnableCanvas)
        try
            AllBinary.stopWaiting(this)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, "showNotify", e)
        end
        nothing
end


function stopWaiting(this::RunnableCanvas)
        this.notified = true
        begin
            AllBinary.notifyObject(this.threadObjectUtil, this)
        end
        AllBinary.repaint(this)
        nothing
end


function waitOnNotify(this::RunnableCanvas, wait)
        if !this.notified
            if wait > Int64(0)
                AllBinary.waitObjectFor(this.threadObjectUtil, this, wait)
            else
                AllBinary.waitObject(this.threadObjectUtil, this)
            end
        end
        nothing
end


function processSleep(this::RunnableCanvas)
        AllBinary.sleep(Thread, this.pauseWait)
        nothing
end


function isPausable(this::RunnableCanvas)
        return false
end


function processGameSleep(this::RunnableCanvas, sleep)
        AllBinary.sleep(Thread, sleep)
        nothing
end


function processLoopSleep(this::RunnableCanvas)
        AllBinary.process(this.runnableCanvasRefreshHelper)
        if AllBinary.isPaused(this)
            local stringMaker = newStringMaker()
            if AllBinary.isRunning(this) && !AllBinary.isSingleThread(this)
                AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                local currentTimeMillis::Int64 = AllBinary.currentTimeMillis(this.systemWrapper)
                AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(AllBinary.appendlong(AllBinary.append(stringMaker, this.START_PAUSE), currentTimeMillis), this.PAUSE_SLEEP), this.pauseWait)), this, this.PROCESS_LOOP_SLEEP)
                while AllBinary.isPaused(this) && AllBinary.isRunning(this) && !AllBinary.isSingleThread(this)
                    AllBinary.processSleep(this)
                    if !AllBinary.isPausable(this)
                        AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
                        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.appendlong(AllBinary.append(stringMaker, this.END_PAUSE), currentTimeMillis)), this, this.PROCESS_LOOP_SLEEP)
                        return
                    end
                end
            end
        end
        local elapsedTime::Int64 = AllBinary.getElapsedTNT(this.loopTimeHelper)
        local wait::Int64 = ((this.loopTimeHelper.delay) % Int64)
        if elapsedTime > wait
            elapsedTime = wait
        else
            AllBinary.processGameSleep(this, wait - elapsedTime)
        end
        nothing
end


function isSingleThread(this::RunnableCanvas)
        return false
end


function run(this::RunnableCanvas)
        AllBinary.setCurrentThread(this)
        nothing
end


function end2(this::RunnableCanvas)
        nothing
        nothing
end


function getType(this::RunnableCanvas)
        return -Int32(1)
end

