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
mutable struct GameDifficultyOptions <: JObject
    meUtil::Any
    list::Any
    GameDifficultyOptions() = new()
end


function initFieldsGameDifficultyOptions(this::GameDifficultyOptions)
    this.meUtil = nothing
    this.list = nothing
    this.meUtil = AllBinary.getInstance(MIDPUtil)
    
    nothing
end


function initGameDifficultyOptions(this::GameDifficultyOptions, commandListener, title, list, backgrounBasicColor, foregroundBasicColor)
        initCommandForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initFieldsGameDifficultyOptions(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.list = list
        AllBinary.update(this)
        AllBinary.initCommands(this, commandListener)
        local gameDifficultyFactory = AllBinary.getInstance(GameDifficultyFactory)
        AllBinary.setSelectedId(this, AllBinary.getLevel(gameDifficultyFactory))
        nothing
end

function newGameDifficultyOptions(commandListener, title, list, backgrounBasicColor, foregroundBasicColor)
    this = GameDifficultyOptions()
    initGameDifficultyOptions(this, commandListener, title, list, backgrounBasicColor, foregroundBasicColor)
    this
end


function open(this::GameDifficultyOptions)
        AllBinary.open(this)
        nothing
end


function close(this::GameDifficultyOptions)
        AllBinary.close(this)
        AllBinary.save(this)
        nothing
end


function save(this::GameDifficultyOptions)
        local gameDifficultyFactory = AllBinary.getInstance(GameDifficultyFactory)
        AllBinary.setLevel(gameDifficultyFactory, AllBinary.getSelectedId(this))
        nothing
end


function initCommands(this::GameDifficultyOptions, cmdListener)
        local gameCommandsFactory = AllBinary.getInstance(GameCommandsFactory)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommand(this, gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function update(this::GameDifficultyOptions)
        AllBinary.deleteAll(this)
        AllBinary.add(this, this.list, "Difficulty", staticGet_EXCLUSIVE(Choice))
        AllBinary.update(this)
        nothing
end


function add(this::GameDifficultyOptions, list, name, option)
        local choiceGroup = AllBinary.getChoiceGroup(this, list, name, option)
        if AllBinary.size(list) > Int32(0)
            AllBinary.setSelectedIndex(choiceGroup, Int32(0), true)
        end
        AllBinary.appendItem(this.meUtil, this, choiceGroup)
        nothing
end


function getChoiceGroup(this::GameDifficultyOptions, list, name, option)
        local METHOD_NAME = "addChoiceGroup"
        local NAME = "Adding Choice: "
        local choiceGroup = newChoiceGroup(name, option, AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil)), staticGet_NULL_IMAGE_ARRAY(NullImage))
        local size::Int32 = AllBinary.size(list)
        local anyType = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            anyType = list.objectArray[index + 1]
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), NAME), AllBinary.toString(anyType))), this, METHOD_NAME)
            AllBinary.append(choiceGroup, AllBinary.toString(anyType), staticGet_NULL_IMAGE(NullImage))
            finally
                index += Int32(1)
            end
            end
        end
        return choiceGroup
end


function setSelectedId(this::GameDifficultyOptions, id)
        local choiceGroup = (AllBinary.get(this, Int32(0)))
        AllBinary.setSelectedIndex(choiceGroup, id, true)
        nothing
end


function getSelectedId(this::GameDifficultyOptions)
        local choiceGroup = (AllBinary.get(this, Int32(0)))
        return AllBinary.getSelectedIndex(choiceGroup)
end


function getSelectedText(this::GameDifficultyOptions)
        local choiceGroup = (AllBinary.get(this, Int32(0)))
        local value::Int32 = AllBinary.intValue(jstr(AllBinary.getString(choiceGroup, AllBinary.getSelectedIndex(choiceGroup))))
        return value
end

