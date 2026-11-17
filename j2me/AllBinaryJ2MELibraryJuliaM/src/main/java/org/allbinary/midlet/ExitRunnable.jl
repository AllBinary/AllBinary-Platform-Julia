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
# package org.allbinary.midlet

mutable struct ExitRunnable <: JObject
    logUtil::Any
    commonStrings::Any
    midlet::Any
    processor::Any
    isProgress::Bool
    ExitRunnable() = new()
end


function initFieldsExitRunnable(this::ExitRunnable)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.midlet = nothing
    this.processor = nothing
    this.isProgress = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    
    nothing
end


function initExitRunnable(this::ExitRunnable, midlet, processor, isProgress)
        initFieldsExitRunnable(this)
        this.midlet = midlet
        this.isProgress = isProgress
        this.processor = processor
        nothing
end

function newExitRunnable(midlet, processor, isProgress)
    this = ExitRunnable()
    initExitRunnable(this, midlet, processor, isProgress)
    this
end


function run(this::ExitRunnable)
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            AllBinary.destroyAppInRunnable(this.midlet, false, this.isProgress)
            AllBinary.setDisplay(this.midlet, staticGet_NULL_CANVAS(NullCanvas))
            AllBinary.notifyDestroyed(this.midlet)
            AllBinary.putF(this.logUtil, this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
            AllBinary.process(this.processor)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
            try
                AllBinary.process(this.processor)
            catch e2
                AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
            end
        end
        nothing
end

