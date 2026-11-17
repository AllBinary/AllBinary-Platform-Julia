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

mutable struct GameFeatureFormUtil <: JObject
    logUtil::Any
    meUtil::Any
    GameFeatureFormUtil() = new()
end

const GameFeatureFormUtil_instanceValue = Ref{Any}(nothing)
const GameFeatureFormUtil_instanceSet = Ref(false)
function staticGet_instance(::Type{GameFeatureFormUtil})
    if !GameFeatureFormUtil_instanceSet[]
        GameFeatureFormUtil_instanceSet[] = true
        GameFeatureFormUtil_instanceValue[] = newGameFeatureFormUtil()
    end
    GameFeatureFormUtil_instanceValue[]
end
function staticSet_instance(::Type{GameFeatureFormUtil}, value)
    GameFeatureFormUtil_instanceSet[] = true
    GameFeatureFormUtil_instanceValue[] = value
end

function initFieldsGameFeatureFormUtil(this::GameFeatureFormUtil)
    this.logUtil = nothing
    this.meUtil = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.meUtil = AllBinary.getInstance(MIDPUtil)
    nothing
end

function initGameFeatureFormUtil(this::GameFeatureFormUtil)
    initFieldsGameFeatureFormUtil(this)
end

function newGameFeatureFormUtil()
    this = GameFeatureFormUtil()
    initGameFeatureFormUtil(this)
    this
end


function getInstance(::Type{GameFeatureFormUtil})
        return staticGet_instance(GameFeatureFormUtil)
end


function getChoiceGroup(this::GameFeatureFormUtil, hashtable, name, option)
        local stringMaker = newStringMaker()
        local choiceGroup = newChoiceGroup(name, option, AllBinary.getArrayInstance(AllBinary.getInstance(StringUtil)), staticGet_NULL_IMAGE_ARRAY(NullImage))
        local list = (AllBinary.get(hashtable, (name)))
        local features = AllBinary.getInstance(Features)
        local ADD_CHOICE = ": Adding Choice: "
        local GET_CHOICE_GROUP = "getChoiceGroup"
        local size::Int32 = AllBinary.size(list)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local gameFeature = (list.objectArray[index + 1])
            AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(AllBinary.append(stringMaker, name), ADD_CHOICE), AllBinary.toString(gameFeature))), this, GET_CHOICE_GROUP)
            AllBinary.append(choiceGroup, AllBinary.toString(gameFeature), staticGet_NULL_IMAGE(NullImage))
            if AllBinary.isFeature(features, gameFeature)
                AllBinary.setSelectedIndex(choiceGroup, index, true)
            end
            finally
                index += Int32(1)
            end
            end
        end
        return choiceGroup
end


function addChoiceGroup(this::GameFeatureFormUtil, form, hashtable, option)
        local stringMaker = newStringMaker()
        local ADDING_CHOICE_GROUP = "Adding Choice Group: "
        local ADD_CHOICE_GROUP = "addChoiceGroup"
        local size::Int32 = AllBinary.size(hashtable)
        local objectArray = AllBinary.getKeysAsArray(AllBinary.getInstance(HashtableUtil), hashtable)
        local name = nothing
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            name = (objectArray[index + 1])
            AllBinary.delete(stringMaker, Int32(0), AllBinary.length(stringMaker))
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(stringMaker, ADDING_CHOICE_GROUP), name)), this, ADD_CHOICE_GROUP)
            AllBinary.appendItem(this.meUtil, form, AllBinary.getChoiceGroup(this, hashtable, name, option))
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end


function setDefault(this::GameFeatureFormUtil, form)
        local size::Int32 = AllBinary.size(form)
        let
            local index::Int32 = Int32(0)
            while index < size
            try
            local item = AllBinary.get(form, index)
            if Base.isa(item, GameConfigurationGauge)
                AllBinary.setDefault(AllBinary.getInstance(GameConfigurationUtil), (item))
            elseif Base.isa(item, ChoiceGroup)
                AllBinary.setDefault(AllBinary.getInstance(GameFeatureUtil), (item))
            end
            finally
                index += Int32(1)
            end
            end
        end
        nothing
end

