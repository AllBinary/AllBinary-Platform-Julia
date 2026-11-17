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
mutable struct GameOptionsForm <: JObject
    meUtil::Any
    GameOptionsForm() = new()
end


function initFieldsGameOptionsForm(this::GameOptionsForm)
    this.meUtil = nothing
    this.meUtil = AllBinary.getInstance(MIDPUtil)
    nothing
end


function initGameOptionsForm(this::GameOptionsForm, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initCommandForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initFieldsGameOptionsForm(this)
        AllBinary.putF(this.logUtil, this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        AllBinary.addConfiguration(this)
        local gameFeatureFormUtil = AllBinary.getInstance(GameFeatureFormUtil)
        AllBinary.addChoiceGroup(gameFeatureFormUtil, this, AllBinary.get(AllBinary.getExclusiveInstance(GameFeatureChoiceGroups)), staticGet_EXCLUSIVE(Choice))
        AllBinary.addChoiceGroup(gameFeatureFormUtil, this, AllBinary.get(AllBinary.getMultipleInstance(GameFeatureChoiceGroups)), staticGet_MULTIPLE(Choice))
        AllBinary.initCommands(this, commandListener)
        AllBinary.setItemStateListener(this, newGameFeatureItemStateListener(this))
        AllBinary.addTextFieldsIfSimulated(this)
        nothing
end

function newGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
    this = GameOptionsForm()
    initGameOptionsForm(this, commandListener, title, backgrounBasicColor, foregroundBasicColor)
    this
end


function closeClientInformation(this::GameOptionsForm, abeClientInformation)
        AllBinary.close(this)
        AllBinary.save(this, abeClientInformation)
        nothing
end


function addTextFieldsIfSimulated(this::GameOptionsForm)
        local key = AllBinary.getInstance(OrientationData).ORIENTATION_SENSOR_INPUT
        local hashtable = AllBinary.get(AllBinary.getExclusiveInstance(GameFeatureChoiceGroups))
        if hashtable !== nothing
            local listCanBeNull = AllBinary.get(hashtable, key)
            if listCanBeNull !== nothing
                local list = (listCanBeNull)
                if AllBinary.contains(list, AllBinary.getInstance(SensorFeatureFactory).SIMULATED_ORIENTATION_SENSORS)
                    AllBinary.addTextFields(this)
                end
            end
        end
        nothing
end


function addTextFields(this::GameOptionsForm)
        local hashtable = AllBinary.getHashtable(GameConfigurationTextInput)
        local size::Int32 = AllBinary.size(hashtable)
        local objectArray = AllBinary.getKeysAsArray(AllBinary.getInstance(HashtableUtil), hashtable)
        local gameConfigurationTextInput = nothing
        local textField = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            gameConfigurationTextInput = (AllBinary.get(hashtable, (objectArray[index + 1])))
            textField = newTextField(AllBinary.getLabel(gameConfigurationTextInput), AllBinary.getText(gameConfigurationTextInput), Int32(30), staticGet_ANY(TextField))
            AllBinary.appendItem(this.meUtil, this, textField)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function addConfiguration(this::GameOptionsForm)
        local METHOD_NAME = "addConfiguration"
        local NAME = "Name: "
        local list = AllBinary.getOptionsBasicArrayList(AllBinary.getInstance(GameConfigurationSingleton))
        local GAUGE_CHANGE = AllBinary.getInstance(MyCommandsFactory).GAUGE_CHANGE
        local stringMaker = newStringMaker()
        local size::Int32 = AllBinary.size(list)
        local gameConfiguration = nothing
        local gauge = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            gameConfiguration = (list.objectArray[index + 1])
            AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, NAME), AllBinary.toString(gameConfiguration))), this, METHOD_NAME)
            gauge = newGameConfigurationGauge(gameConfiguration)
            AllBinary.setDefaultCommand(gauge, GAUGE_CHANGE)
            AllBinary.setItemCommandListener(gauge, newGameFeatureItemCommandListener(this))
            AllBinary.appendItem(this.meUtil, this, gauge)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function initCommands(this::GameOptionsForm, cmdListener)
        local gameCommandsFactory = AllBinary.getInstance(GameCommandsFactory)
        AllBinary.removeAllCommands(this)
        AllBinary.addCommand(this, gameCommandsFactory.CLOSE_OPTIONS)
        AllBinary.addCommand(this, gameCommandsFactory.DEFAULT_OPTIONS)
        AllBinary.setCommandListener(this, cmdListener)
        nothing
end


function save(this::GameOptionsForm, abeClientInformation)
        local size::Int32 = AllBinary.size(this)
        local item = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            item = AllBinary.get(this, index)
            if Base.isa(item, GameConfigurationGauge)
                AllBinary.update(AllBinary.getInstance(GameConfigurationUtil), (item))
            elseif Base.isa(item, TextField)
                AllBinary.update(GameConfigurationTextInput, (item))
            end
            finally
                index += Int32(1)
            end
            end
        end
        AllBinary.updateCompetitionValue(AllBinary.getInstance(GameConfigurationUtil))
        local hashtable = AllBinary.createHashtable(AllBinary.getInstance(StdUtil))
        local SCALE = AllBinary.getInstance(GameConfigurationCentral).SCALE
        AllBinary.put(hashtable, AllBinary.getName(SCALE), jstr(AllBinary.intValue(AllBinary.getValue(SCALE))))
        local keyValuePersistance = AllBinary.getInstance(GameConfigurationPersistanceSingleton)
        AllBinary.clear(keyValuePersistance)
        AllBinary.loadAll(keyValuePersistance, abeClientInformation)
        local list = AllBinary.getIds(keyValuePersistance)
        AllBinary.save(keyValuePersistance, abeClientInformation, hashtable)
        local size2::Int32 = AllBinary.size(list)
        local integer = nothing
        let
            index = Int32(0)
            while index < size2
            try
            integer = (list.objectArray[index + 1])
            AllBinary.delete(keyValuePersistance, abeClientInformation, AllBinary.intValue(integer))
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

