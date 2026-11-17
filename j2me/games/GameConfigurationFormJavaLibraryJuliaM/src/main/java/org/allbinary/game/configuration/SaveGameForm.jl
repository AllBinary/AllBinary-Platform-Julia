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
# package org.allbinary.game.configuration

# extends CommandForm: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SaveGameForm <: JObject
    meUtil::Any
    SaveGameForm() = new()
end

const SaveGameForm_FORMValue = Ref{Any}(nothing)
const SaveGameForm_FORMSet = Ref(false)
function staticGet_FORM(::Type{SaveGameForm})
    if !SaveGameForm_FORMSet[]
        SaveGameForm_FORMSet[] = true
        SaveGameForm_FORMValue[] = AllBinary.getNullCommandForm(CommandForm)
    end
    SaveGameForm_FORMValue[]
end
function staticSet_FORM(::Type{SaveGameForm}, value)
    SaveGameForm_FORMSet[] = true
    SaveGameForm_FORMValue[] = value
end

function initFieldsSaveGameForm(this::SaveGameForm)
    this.meUtil = nothing
    this.meUtil = AllBinary.getInstance(MIDPUtil)
    nothing
end


function createForm(::Type{SaveGameForm}, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        staticSet_FORM(SaveGameForm, newSaveGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor))
        return staticGet_FORM(SaveGameForm)
end


function getInstance(::Type{SaveGameForm})
        return staticGet_FORM(SaveGameForm)
end


function initSaveGameForm(this::SaveGameForm, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initCommandForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initFieldsSaveGameForm(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        local timeString = jstr(AllBinary.currentTimeMillis(AllBinary.getInstance(ABSystemWrapper)))
        AllBinary.appendItem(this.meUtil, this, newTextField("Name: ", timeString, Int32(30), staticGet_ANY(TextField)))
        AllBinary.initCommands(this, commandListener)
        nothing
end

function newSaveGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
    this = SaveGameForm()
    initSaveGameForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
    this
end


function initCommands(this::SaveGameForm, cmdListener)
        local gameCommandsFactory = AllBinary.getInstance(GameCommandsFactory)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommand(this, gameCommandsFactory.SAVE)
        AllBinary.addCommand(this, gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end

