#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable.screen

# extends Form: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct CommandForm <: JObject
    logUtil::Any
    commonStrings::Any
    repaintProcessor::Any
    commandStack::Any
    CommandForm() = new()
end

const CommandForm_NULL_COMMAND_FORMValue = Ref{Any}(nothing)
const CommandForm_NULL_COMMAND_FORMSet = Ref(false)
function staticGet_NULL_COMMAND_FORM(::Type{CommandForm})
    if !CommandForm_NULL_COMMAND_FORMSet[]
        CommandForm_NULL_COMMAND_FORMSet[] = true
        CommandForm_NULL_COMMAND_FORMValue[] = AllBinary.getInstance(NullUtil).NULL_OBJECT
    end
    CommandForm_NULL_COMMAND_FORMValue[]
end
function staticSet_NULL_COMMAND_FORM(::Type{CommandForm}, value)
    CommandForm_NULL_COMMAND_FORMSet[] = true
    CommandForm_NULL_COMMAND_FORMValue[] = value
end

function initFieldsCommandForm(this::CommandForm)
    this.logUtil = nothing
    this.commonStrings = nothing
    this.repaintProcessor = nothing
    this.commandStack = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.commonStrings = AllBinary.getInstance(CommonStrings)
    this.repaintProcessor = AllBinary.create(AllBinary.getInstance(ScreenRepaintProcessorFactory), this)
    
    nothing
end


function getNullCommandForm(::Type{CommandForm})
        if staticGet_NULL_COMMAND_FORM(CommandForm) === AllBinary.getInstance(NullUtil).NULL_OBJECT
            staticSet_NULL_COMMAND_FORM(CommandForm, newCommandForm(staticGet_NULL_COMMAND_LISTENER(NullCommandListener), AllBinary.getInstance(StringUtil).EMPTY_STRING, AllBinary.getInstance(BasicColorFactory).BLACK, AllBinary.getInstance(BasicColorFactory).WHITE))
        end
        return (staticGet_NULL_COMMAND_FORM(CommandForm))
end


function initCommandForm(this::CommandForm, commandListener, formTitle, backgrounBasicColor, foregroundBasicColor)
        initForm(this, formTitle)
        initFieldsCommandForm(this)
        this.commandStack = AllBinary.createStack(AllBinary.getInstance(StdUtil))
        try
            AllBinary.process(this.repaintProcessor)
        catch e
            AllBinary.put(this.logUtil, this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e)
        end
        nothing
end

function newCommandForm(commandListener, formTitle, backgrounBasicColor, foregroundBasicColor)
    this = CommandForm()
    initCommandForm(this, commandListener, formTitle, backgrounBasicColor, foregroundBasicColor)
    this
end


function initCommands(this::CommandForm, cmdListener)
        nothing
        nothing
end


function open(this::CommandForm)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, "open")
        nothing
end


function close(this::CommandForm)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CLOSE)
        nothing
end


function update(this::CommandForm)
        AllBinary.process(this.repaintProcessor)
        nothing
end


function getSourceId(this::CommandForm)
        return Int32(0)
end


function addCommand(this::CommandForm, command)
        AllBinary.push(this.commandStack, command)
        AllBinary.addCommand(this, command)
        nothing
end


function removeAllCommands(this::CommandForm)
        local size::Int32 = AllBinary.size(this.commandStack)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            AllBinary.removeCommand(this, (AllBinary.pop(this.commandStack)))
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

