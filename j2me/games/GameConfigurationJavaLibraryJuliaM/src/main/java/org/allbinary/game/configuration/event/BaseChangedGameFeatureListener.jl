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
# package org.allbinary.game.configuration.event

mutable struct BaseChangedGameFeatureListener <: JObject
    logUtil::Any
    gameFeatureUtil::Any
    list::Any
    changed::Bool
    BaseChangedGameFeatureListener() = new()
end


function initFieldsBaseChangedGameFeatureListener(this::BaseChangedGameFeatureListener)
    this.logUtil = nothing
    this.gameFeatureUtil = nothing
    this.list = nothing
    this.changed = false
    this.logUtil = AllBinary.getInstance(LogUtil)
    this.gameFeatureUtil = AllBinary.getInstance(GameFeatureUtil)
    this.list = newBasicArrayListD()
    this.changed = true
    nothing
end

function initBaseChangedGameFeatureListener(this::BaseChangedGameFeatureListener)
    initFieldsBaseChangedGameFeatureListener(this)
end

function newBaseChangedGameFeatureListener()
    this = BaseChangedGameFeatureListener()
    initBaseChangedGameFeatureListener(this)
    this
end


function onEvent(this::BaseChangedGameFeatureListener, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(CommonStrings).NOT_IMPLEMENTED, this)
        nothing
end


function onGameFeatureChange(this::BaseChangedGameFeatureListener, gameFeatureEvent)
        AllBinary.putF(this.logUtil, AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), this.gameFeatureUtil.GAME_FEATURE_CHANGED), AllBinary.getWhatChanged(gameFeatureEvent))), this, this.gameFeatureUtil.ON_GAME_FEATURE_CHANGE)
        AllBinary.add(this.list, AllBinary.getGameOption(gameFeatureEvent))
        AllBinary.setChanged(this, true)
        nothing
end


function add(this::BaseChangedGameFeatureListener, gameFeature)
        AllBinary.add(this.list, gameFeature)
        nothing
end


function remove(this::BaseChangedGameFeatureListener, gameFeature)
        AllBinary.remove(this.list, gameFeature)
        nothing
end


function setChanged(this::BaseChangedGameFeatureListener, initialized)
        this.changed = initialized
        if !AllBinary.isChanged(this)
            AllBinary.clear(this.list)
        end
        nothing
end


function isChangedFeature(this::BaseChangedGameFeatureListener, gameFeature)
        local isChanged::Bool = AllBinary.contains(this.list, gameFeature)
        local stringBuffer = newStringMaker()
        AllBinary.append(stringBuffer, "GameFeature: ")
        AllBinary.append(stringBuffer, AllBinary.toString(AllBinary.getInstance(StringUtil), gameFeature))
        AllBinary.append(stringBuffer, " isFeature: ")
        AllBinary.appendboolean(stringBuffer, AllBinary.isFeature(AllBinary.getInstance(Features), gameFeature))
        AllBinary.append(stringBuffer, " isChanged: ")
        AllBinary.appendboolean(stringBuffer, isChanged)
        AllBinary.putF(this.logUtil, AllBinary.toString(stringBuffer), this, "isChanged")
        return isChanged
end


function isChanged(this::BaseChangedGameFeatureListener)
        return this.changed
end

