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
mutable struct LoadGameForm <: JObject
    meUtil::Any
    areChoices::Bool
    LoadGameForm() = new()
end


function initFieldsLoadGameForm(this::LoadGameForm)
    this.meUtil = nothing
    this.areChoices = false
    this.meUtil = AllBinary.getInstance(MIDPUtil)
    this.areChoices = false
    nothing
end


function initLoadGameForm(this::LoadGameForm, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initCommandForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initFieldsLoadGameForm(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        AllBinary.update(this)
        AllBinary.initCommands(this, commandListener)
        nothing
end

function newLoadGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
    this = LoadGameForm()
    initLoadGameForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
    this
end


function initCommands(this::LoadGameForm, cmdListener)
        local gameCommandsFactory = AllBinary.getInstance(GameCommandsFactory)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommand(this, gameCommandsFactory.LOAD_FILE)
        AllBinary.addCommand(this, gameCommandsFactory.DELETE_FILE)
        AllBinary.addCommand(this, gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function update(this::LoadGameForm)
        local list = AllBinary.getIds(AllBinary.getInstance(GamePersistanceSingleton))
        AllBinary.deleteAll(this)
        if AllBinary.size(list) > Int32(0)
            AllBinary.add(this, list, "Select A Saved Game", staticGet_EXCLUSIVE(Choice))
            this.areChoices = true
        else
            AllBinary.appendItem(this.meUtil, this, newStringItem("No Saved Games", AllBinary.getInstance(StringUtil).EMPTY_STRING, staticGet_PLAIN(Item)))
            this.areChoices = false
        end
        AllBinary.update(this)
        nothing
end


function add(this::LoadGameForm, list, name, option)
        local choiceGroup = AllBinary.getChoiceGroup(this, list, name, option)
        if AllBinary.size(list) > Int32(0)
            AllBinary.setSelectedIndex(choiceGroup, Int32(0), true)
        end
        AllBinary.appendItem(this.meUtil, this, choiceGroup)
        nothing
end


function getChoiceGroup(this::LoadGameForm, list, name, option)
        local METHOD_NAME = "getChoiceGroup"
        local ADDING_CHOICE = "Adding Choice: "
        local choiceGroup = newChoiceGroup(name, option, AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil)), staticGet_NULL_IMAGE_ARRAY(NullImage))
        local size::Int32 = AllBinary.size(list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local anyType = list.objectArray[index + 1]
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), ADDING_CHOICE), AllBinary.toString(anyType))), this, METHOD_NAME)
            AllBinary.append(choiceGroup, AllBinary.toString(anyType), staticGet_NULL_IMAGE(NullImage))
            finally
                index += Int32(1)
            end
            end
        end
        return choiceGroup
end


function getSelectedId(this::LoadGameForm)
        if this.areChoices
            local choiceGroup = (AllBinary.get(this, Int32(0)))
            return AllBinary.getSelectedIndex(choiceGroup)
        else
            return -Int32(1)
        end
end


function getSelectedText(this::LoadGameForm)
        if this.areChoices
            local choiceGroup = (AllBinary.get(this, Int32(0)))
            local value::Int32 = AllBinary.intValue(jstr(AllBinary.getString(choiceGroup, AllBinary.getSelectedIndex(choiceGroup))))
            return value
        else
            return -Int32(1)
        end
end

