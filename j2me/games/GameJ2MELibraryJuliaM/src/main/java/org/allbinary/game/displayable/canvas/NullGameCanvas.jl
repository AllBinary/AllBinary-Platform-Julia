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
# package org.allbinary.game.displayable.canvas

# extends AllBinaryGameCanvas: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NullGameCanvas <: JObject
    runningNull::Bool
    NullGameCanvas() = new()
end

const NullGameCanvas_instanceValue = Ref{Any}(nothing)
const NullGameCanvas_instanceSet = Ref(false)
function staticGet_instance(::Type{NullGameCanvas})
    if !NullGameCanvas_instanceSet[]
        NullGameCanvas_instanceSet[] = true
        NullGameCanvas_instanceValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    NullGameCanvas_instanceValue[]
end
function staticSet_instance(::Type{NullGameCanvas}, value)
    NullGameCanvas_instanceSet[] = true
    NullGameCanvas_instanceValue[] = value
end
const NullGameCanvas_NO_GAMEValue = Ref{Any}(nothing)
const NullGameCanvas_NO_GAMESet = Ref(false)
function staticGet_NO_GAME(::Type{NullGameCanvas})
    if !NullGameCanvas_NO_GAMESet[]
        NullGameCanvas_NO_GAMESet[] = true
        NullGameCanvas_NO_GAMEValue[] = "No Background Game"
    end
    NullGameCanvas_NO_GAMEValue[]
end
function staticSet_NO_GAME(::Type{NullGameCanvas}, value)
    NullGameCanvas_NO_GAMESet[] = true
    NullGameCanvas_NO_GAMEValue[] = value
end
const NullGameCanvas_TYPEValue = Ref{Any}(nothing)
const NullGameCanvas_TYPESet = Ref(false)
function staticGet_TYPE(::Type{NullGameCanvas})
    if !NullGameCanvas_TYPESet[]
        NullGameCanvas_TYPESet[] = true
        NullGameCanvas_TYPEValue[] = Int32(1)
    end
    NullGameCanvas_TYPEValue[]
end
function staticSet_TYPE(::Type{NullGameCanvas}, value)
    NullGameCanvas_TYPESet[] = true
    NullGameCanvas_TYPEValue[] = value
end

function initFieldsNullGameCanvas(this::NullGameCanvas)
    this.runningNull = false
    this.runningNull = true
    nothing
end


function createNull(::Type{NullGameCanvas})
        try
            return newNullGameCanvas(AllBinary.getNullInstance(AllBinaryGameLayerManager))
        catch e
            AllBinary.put(AllBinary.getInstance(LogUtil), AllBinary.getInstance(CommonStrings).EXCEPTION, "NullGameCanvas", AllBinary.getInstance(CommonStrings).GET_INSTANCE, e)
            throw(jNewException("RuntimeException", ""))
        end
end


function getInstance(::Type{NullGameCanvas})
        if staticGet_instance(NullGameCanvas) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_instance(NullGameCanvas, AllBinary.createNull(NullGameCanvas))
        end
        return (staticGet_instance(NullGameCanvas))
end


function createCanvas(::Type{NullGameCanvas}, gameLayerManager)
        local nullGameCanvas = newNullGameCanvas(gameLayerManager)
        AllBinary.setInitialized(nullGameCanvas, true)
        AllBinary.setTitle(nullGameCanvas, staticGet_NO_GAME(NullGameCanvas))
        return nullGameCanvas
end


function initNullGameCanvas(this::NullGameCanvas, gameLayerManager)
        initAllBinaryGameCanvas(this, staticGet_NULL_COMMAND_LISTENER(NullCommandListener), gameLayerManager, AllBinary.getInstance(NoHighScoresFactory), staticGet_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY(BasicBuildGameInitializerFactory), false)
        initFieldsNullGameCanvas(this)
        AllBinary.setWait(this, Int32(1200))
        nothing
end

function newNullGameCanvas(gameLayerManager)
    this = NullGameCanvas()
    initNullGameCanvas(this, gameLayerManager)
    this
end


function isGameOver(this::NullGameCanvas)
        return false
end


function setRunning(this::NullGameCanvas, running)
        this.runningNull = running
        nothing
end


function isRunning(this::NullGameCanvas)
        return this.runningNull
end


function pause(this::NullGameCanvas)
        AllBinary.setPaused(this, true)
        nothing
end


function unPause(this::NullGameCanvas)
        AllBinary.setPaused(this, false)
        nothing
end


function initCommands(this::NullGameCanvas, cmdListener)
        AllBinary.removeAllCommands(this)
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function buildGameInit(this::NullGameCanvas, isProgress)
        nothing
        nothing
end


function draw(this::NullGameCanvas, graphics)
        nothing
        nothing
end


function run(this::NullGameCanvas)
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            AllBinary.putF(this.logUtil, this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        end
        nothing
end


function getType(this::NullGameCanvas)
        return staticGet_TYPE(NullGameCanvas)
end

