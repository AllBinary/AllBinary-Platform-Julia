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

mutable struct CommandRunnable <: JObject
    logUtil::Any
    commonStrings::Any
    commandFormInputProcessor::Any
    command::Any
    CommandRunnable() = new()
end


function initFieldsCommandRunnable(this::CommandRunnable)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.commandFormInputProcessor = nothing
    this.command = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    
    
    nothing
end


function initCommandRunnable(this::CommandRunnable, commandFormInputProcessor, command)
        initFieldsCommandRunnable(this)
        this.commandFormInputProcessor = commandFormInputProcessor
        this.command = command
        nothing
end

function newCommandRunnable(commandFormInputProcessor, command)
    this = CommandRunnable()
    initCommandRunnable(this, commandFormInputProcessor, command)
    this
end


function run(this::CommandRunnable)
        try
            AllBinary.putF(this.logUtil, this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            local canvas = AllBinary.getCanvas(this.commandFormInputProcessor)
            local commandListener = AllBinary.getCustomCommandListener(canvas)
            AllBinary.commandAction(commandListener, this.command, canvas)
            AllBinary.putF(this.logUtil, this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        end
        nothing
end

