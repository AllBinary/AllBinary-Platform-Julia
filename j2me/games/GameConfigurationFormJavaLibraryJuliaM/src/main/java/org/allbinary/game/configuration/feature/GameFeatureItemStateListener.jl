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

mutable struct GameFeatureItemStateListener <: JObject
    logUtil::Any
    gameOptionsForm::Any
    GameFeatureItemStateListener() = new()
end

const GameFeatureItemStateListener_toggleListValue = Ref{Any}(nothing)
const GameFeatureItemStateListener_toggleListSet = Ref(false)
function staticGet_toggleList(::Type{GameFeatureItemStateListener})
    if !GameFeatureItemStateListener_toggleListSet[]
        GameFeatureItemStateListener_toggleListSet[] = true
        GameFeatureItemStateListener_toggleListValue[] = newBasicArrayListD()
    end
    GameFeatureItemStateListener_toggleListValue[]
end
function staticSet_toggleList(::Type{GameFeatureItemStateListener}, value)
    GameFeatureItemStateListener_toggleListSet[] = true
    GameFeatureItemStateListener_toggleListValue[] = value
end

function initFieldsGameFeatureItemStateListener(this::GameFeatureItemStateListener)
    this.logUtil = nothing
    this.gameOptionsForm = nothing
    this.logUtil = AllBinary.getInstance(LogUtil)
    
    nothing
end


function initGameFeatureItemStateListener(this::GameFeatureItemStateListener, gameOptionsForm)
        initFieldsGameFeatureItemStateListener(this)
        this.gameOptionsForm = gameOptionsForm
        local gameFeatureFactory = AllBinary.getInstance(GameFeatureFactory)
        AllBinary.add(GameFeatureItemStateListener, gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR)
        AllBinary.add(GameFeatureItemStateListener, gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
        AllBinary.add(GameFeatureItemStateListener, gameFeatureFactory.DAMAGE_FLOATERS)
        AllBinary.add(GameFeatureItemStateListener, gameFeatureFactory.DROPPED_ITEMS)
        AllBinary.add(GameFeatureItemStateListener, gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR)
        AllBinary.add(GameFeatureItemStateListener, gameFeatureFactory.HEALTH_BARS)
        AllBinary.add(GameFeatureItemStateListener, gameFeatureFactory.SOUND)
        AllBinary.add(GameFeatureItemStateListener, gameFeatureFactory.TICKABLE_LAYER_PROCESSOR)
        nothing
end

function newGameFeatureItemStateListener(gameOptionsForm)
    this = GameFeatureItemStateListener()
    initGameFeatureItemStateListener(this, gameOptionsForm)
    this
end


function add(::Type{GameFeatureItemStateListener}, gameFeature)
        if !AllBinary.contains(staticGet_toggleList(GameFeatureItemStateListener), gameFeature)
            AllBinary.add(staticGet_toggleList(GameFeatureItemStateListener), gameFeature)
        end
        nothing
end


function itemStateChanged(this::GameFeatureItemStateListener, item)
        try
            local itemLabel = AllBinary.getLabel(item)
            AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), AllBinary.getInstance(CommonLabels).ITEM_LABEL), itemLabel)), this, "itemStateChanged")
            if Base.isa(item, GameConfigurationGauge)
                AllBinary.change(AllBinary.getInstance(GameConfigurationUtil), this.gameOptionsForm, (item))
            elseif Base.isa(item, ChoiceGroup)
                local gameFeatureUtil = AllBinary.getInstance(GameFeatureUtil)
                if AllBinary.isExclusive(gameFeatureUtil, itemLabel)
                    AllBinary.updateExclusiveForChoiceGroup(gameFeatureUtil, (item))
                else
                    AllBinary.updateMultiple(gameFeatureUtil, (item))
                end
            end
        catch e
            local commonStrings = AllBinary.getInstance(CommonStrings)
            AllBinary.put(this.logUtil, commonStrings.EXCEPTION, this, "itemStateChanged", e)
        end
        nothing
end

