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
mutable struct InGameOptionsForm <: JObject
    InGameOptionsForm() = new()
end

const InGameOptionsForm_DISPLAYValue = Ref{Any}(nothing)
const InGameOptionsForm_DISPLAYSet = Ref(false)
function staticGet_DISPLAY(::Type{InGameOptionsForm})
    if !InGameOptionsForm_DISPLAYSet[]
        InGameOptionsForm_DISPLAYSet[] = true
        InGameOptionsForm_DISPLAYValue[] = newCommand("Options In Game", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    end
    InGameOptionsForm_DISPLAYValue[]
end
function staticSet_DISPLAY(::Type{InGameOptionsForm}, value)
    InGameOptionsForm_DISPLAYSet[] = true
    InGameOptionsForm_DISPLAYValue[] = value
end
const InGameOptionsForm_SAVEValue = Ref{Any}(nothing)
const InGameOptionsForm_SAVESet = Ref(false)
function staticGet_SAVE(::Type{InGameOptionsForm})
    if !InGameOptionsForm_SAVESet[]
        InGameOptionsForm_SAVESet[] = true
        InGameOptionsForm_SAVEValue[] = newCommand("Save", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    end
    InGameOptionsForm_SAVEValue[]
end
function staticSet_SAVE(::Type{InGameOptionsForm}, value)
    InGameOptionsForm_SAVESet[] = true
    InGameOptionsForm_SAVEValue[] = value
end
const InGameOptionsForm_DEFAULTValue = Ref{Any}(nothing)
const InGameOptionsForm_DEFAULTSet = Ref(false)
function staticGet_DEFAULT(::Type{InGameOptionsForm})
    if !InGameOptionsForm_DEFAULTSet[]
        InGameOptionsForm_DEFAULTSet[] = true
        InGameOptionsForm_DEFAULTValue[] = newCommand("Default", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_SCREEN(Command), Int32(1))
    end
    InGameOptionsForm_DEFAULTValue[]
end
function staticSet_DEFAULT(::Type{InGameOptionsForm}, value)
    InGameOptionsForm_DEFAULTSet[] = true
    InGameOptionsForm_DEFAULTValue[] = value
end

function initFieldsInGameOptionsForm(this::InGameOptionsForm)
    nothing
end


function initInGameOptionsForm(this::InGameOptionsForm, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initCommandForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        local gameFeatureFormUtil = AllBinary.getInstance(GameFeatureFormUtil)
        AllBinary.addChoiceGroup(gameFeatureFormUtil, this, AllBinary.get(AllBinary.getExclusiveInstance(InGameFeatureChoiceGroups)), staticGet_EXCLUSIVE(Choice))
        AllBinary.addChoiceGroup(gameFeatureFormUtil, this, AllBinary.get(AllBinary.getMultipleInstance(InGameFeatureChoiceGroups)), staticGet_MULTIPLE(Choice))
        AllBinary.initCommands(this, commandListener)
        nothing
end

function newInGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
    this = InGameOptionsForm()
    initInGameOptionsForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
    this
end


function initCommands(this::InGameOptionsForm, cmdListener)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommand(this, AllBinary.getInstance(GameCommandsFactory).CLOSE_AND_SHOW_GAME_CANVAS)
        AllBinary.addCommand(this, staticGet_DEFAULT(InGameOptionsForm))
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end

