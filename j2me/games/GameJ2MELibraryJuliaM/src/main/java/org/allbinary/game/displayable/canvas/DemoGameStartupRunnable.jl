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

# extends ABRunnable: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct DemoGameStartupRunnable <: JObject
    logUtil::Any
    demoCanvas::Any
    DemoGameStartupRunnable() = new()
end

const DemoGameStartupRunnable_TYPEValue = Ref{Any}(nothing)
const DemoGameStartupRunnable_TYPESet = Ref(false)
function staticGet_TYPE(::Type{DemoGameStartupRunnable})
    if !DemoGameStartupRunnable_TYPESet[]
        DemoGameStartupRunnable_TYPESet[] = true
        DemoGameStartupRunnable_TYPEValue[] = Int32(4)
    end
    DemoGameStartupRunnable_TYPEValue[]
end
function staticSet_TYPE(::Type{DemoGameStartupRunnable}, value)
    DemoGameStartupRunnable_TYPESet[] = true
    DemoGameStartupRunnable_TYPEValue[] = value
end

function initFieldsDemoGameStartupRunnable(this::DemoGameStartupRunnable)
    this.logUtil = nothing
    this.demoCanvas = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    nothing
end


function initDemoGameStartupRunnable(this::DemoGameStartupRunnable, demoCanvas)
        initABRunnable(this)
        initFieldsDemoGameStartupRunnable(this)
        this.demoCanvas = demoCanvas
        nothing
end

function newDemoGameStartupRunnable(demoCanvas)
    this = DemoGameStartupRunnable()
    initDemoGameStartupRunnable(this, demoCanvas)
    this
end


function run(this::DemoGameStartupRunnable)
        try
            AllBinary.setRunning(this, true)
            AllBinary.stopGameDemo(this.demoCanvas)
            AllBinary.create(this.demoCanvas)
            AllBinary.start(this.demoCanvas)
            AllBinary.setRunning(this, false)
        catch e
            AllBinary.setRunning(this, false)
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, commonStrings.RUN, e)
        end
        nothing
end


function getType(this::DemoGameStartupRunnable)
        return staticGet_TYPE(DemoGameStartupRunnable)
end

