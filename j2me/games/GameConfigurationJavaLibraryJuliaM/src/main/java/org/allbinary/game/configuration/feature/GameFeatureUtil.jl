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
# package org.allbinary.game.configuration.feature

mutable struct GameFeatureUtil <: JObject
    logUtil::Any
    tsUtil::Any
    enumerationUtil::Any
    ON_GAME_FEATURE_CHANGE::Any
    GAME_FEATURE_CHANGED::Any
    GameFeatureUtil() = new()
end

const GameFeatureUtil_instanceValue = Ref{Any}(nothing)
const GameFeatureUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{GameFeatureUtil})
    if !GameFeatureUtil_instanceSet[]
        GameFeatureUtil_instanceSet[] = true
        GameFeatureUtil_instanceValue[] = newGameFeatureUtil()
    end
    GameFeatureUtil_instanceValue[]
end
function staticSet_instance(::Type{GameFeatureUtil}, value)
    GameFeatureUtil_instanceSet[] = true
    GameFeatureUtil_instanceValue[] = value
end

function initFieldsGameFeatureUtil(this::GameFeatureUtil)
    this.logUtil = nothing
    this.tsUtil = nothing
    this.enumerationUtil = nothing
    this.ON_GAME_FEATURE_CHANGE = nothing
    this.GAME_FEATURE_CHANGED = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.tsUtil = AllBinary.getInstance(TsUtil)
    this.enumerationUtil = AllBinary.getInstance(EnumerationUtil)
    this.ON_GAME_FEATURE_CHANGE = "onGameFeatureChange"
    this.GAME_FEATURE_CHANGED = "Game Feature Changed: "
    nothing
end

function initGameFeatureUtil(this::GameFeatureUtil)
    initFieldsGameFeatureUtil(this)
end

function newGameFeatureUtil()
    this = GameFeatureUtil()
    initGameFeatureUtil(this)
    this
end


function getInstance(::Type{GameFeatureUtil})
        return staticGet_instance(GameFeatureUtil)
end


function setDefault(this::GameFeatureUtil, choiceGroup)
        local stringBuffer = newStringMaker()
        local METHOD_NAME = "setDefault"
        local SELECTED_ARRAY_RETURN = "selectedArray_return["
        local SELECTED_SEP = "] = "
        local selectedArray_return = jNewArray(Bool, AllBinary.size(choiceGroup), false)
        local total::Int32 = AllBinary.getSelectedFlags(choiceGroup, selectedArray_return)
        AllBinary.append(stringBuffer, "Multiple Total Choices: ")
        AllBinary.appendint(stringBuffer, total)
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, METHOD_NAME)
        local features = AllBinary.getInstance(Features)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(selectedArray_return))
            try
            local isSelected::Bool = selectedArray_return[index + 1]
            AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
            AllBinary.append(stringBuffer, SELECTED_ARRAY_RETURN)
            AllBinary.appendint(stringBuffer, index)
            AllBinary.append(stringBuffer, SELECTED_SEP)
            AllBinary.appendboolean(stringBuffer, isSelected)
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, METHOD_NAME)
            local selectedChoiceLabel = AllBinary.getString(choiceGroup, index)
            local gameFeature = AllBinary.getInstance(Feature, selectedChoiceLabel)
            if AllBinary.isDefault(features, gameFeature)
                AllBinary.add(features, gameFeature)
                AllBinary.setSelectedIndex(choiceGroup, index, true)
            else
                AllBinary.remove(features, gameFeature)
                AllBinary.setSelectedIndex(choiceGroup, index, false)
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function updateMultiple(this::GameFeatureUtil, choiceGroup)
        local stringBuffer = newStringMaker()
        local METHOD_NAME = "updateMultiple"
        local SELECTED_ARRAY_RETURN = "selectedArray_return["
        local SELECTED_SEP = "] = "
        local selectedArray_return = jNewArray(Bool, AllBinary.size(choiceGroup), false)
        local total::Int32 = AllBinary.getSelectedFlags(choiceGroup, selectedArray_return)
        AllBinary.append(stringBuffer, "Multiple Total Choices: ")
        AllBinary.appendint(stringBuffer, total)
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, METHOD_NAME)
        local features = AllBinary.getInstance(Features)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(selectedArray_return))
            try
            local isSelected::Bool = selectedArray_return[index + 1]
            AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
            AllBinary.append(stringBuffer, SELECTED_ARRAY_RETURN)
            AllBinary.appendint(stringBuffer, index)
            AllBinary.append(stringBuffer, SELECTED_SEP)
            AllBinary.appendboolean(stringBuffer, isSelected)
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, METHOD_NAME)
            local selectedChoiceLabel = AllBinary.getString(choiceGroup, index)
            local gameFeature = AllBinary.getInstance(Feature, selectedChoiceLabel)
            if !isSelected && AllBinary.isFeature(features, gameFeature)
                AllBinary.remove(features, gameFeature)
            elseif isSelected && !AllBinary.isFeature(features, gameFeature)
                AllBinary.add(features, gameFeature)
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function updateExclusiveForChoiceGroup(this::GameFeatureUtil, choiceGroup)
        local stringBuffer = newStringMaker()
        local METHOD_NAME = "updateExclusive"
        local SELECTED_ARRAY_RETURN = "selectedArray_return["
        local SELECTED_SEP = "] = "
        local selectedArray_return = jNewArray(Bool, AllBinary.size(choiceGroup), false)
        local total::Int32 = AllBinary.getSelectedFlags(choiceGroup, selectedArray_return)
        AllBinary.append(stringBuffer, "Exclusive Total Choices: 1==")
        AllBinary.appendint(stringBuffer, total)
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, METHOD_NAME)
        let
            local index::Int32 = Int32(0)
            while index < Int32(Base.length(selectedArray_return))
            try
            local isSelected::Bool = selectedArray_return[index + 1]
            AllBinary.delete(stringBuffer, Int32(0), AllBinary.length(stringBuffer))
            AllBinary.append(stringBuffer, SELECTED_ARRAY_RETURN)
            AllBinary.appendint(stringBuffer, index)
            AllBinary.append(stringBuffer, SELECTED_SEP)
            AllBinary.appendboolean(stringBuffer, isSelected)
            AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, METHOD_NAME)
            if isSelected
                local selectedChoiceLabel = AllBinary.getString(choiceGroup, index)
                AllBinary.updateExclusive(this, selectedChoiceLabel)
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function isExclusive(this::GameFeatureUtil, itemLabel)
        local enumeration = AllBinary.keys(AllBinary.get(AllBinary.getExclusiveInstance(GameFeatureChoiceGroups)))
        local name = nothing
        while AllBinary.hasMoreElements(this.enumerationUtil, enumeration)
            name = (AllBinary.nextElement(this.enumerationUtil, enumeration))
            if AllBinary.compareTo(this.tsUtil, itemLabel, name) == Int32(0)
                return true
            end
        end
        return false
end


function updateExclusive(this::GameFeatureUtil, selectedChoiceLabel)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).ITEM_LABEL), selectedChoiceLabel)), this, "updateExclusive")
        local gameFeature = AllBinary.getInstance(Feature, selectedChoiceLabel)
        local hashtable = AllBinary.get(AllBinary.getExclusiveInstance(GameFeatureChoiceGroups))
        local objectArray = AllBinary.getKeysAsArray(AllBinary.getInstance(HashtableUtil), hashtable)
        local basicArrayList = nothing
        local anyType = nothing
        local size::Int32 = Int32(Base.length(objectArray))
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            anyType = (objectArray[index + 1])
            basicArrayList = (AllBinary.get(hashtable, anyType))
            AllBinary.updateExclusiveList(this, gameFeature, basicArrayList)
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function updateExclusiveList(this::GameFeatureUtil, gameFeature, list)
        if AllBinary.contains(list, gameFeature)
            local features = AllBinary.getInstance(Features)
            local addIndex::Int32 = AllBinary.indexOf(list, gameFeature)
            local size::Int32 = AllBinary.size(list)
            let
                local index::Int32 = Int32(0)
                while index < size
                try
                if addIndex != index
                    AllBinary.remove(features, (list.objectArray[index + 1]))
                else
                    AllBinary.add(features, (list.objectArray[index + 1]))
                end
                finally
                    index += Int32(1)
                end
                end
            end
        end
        nothing
end

