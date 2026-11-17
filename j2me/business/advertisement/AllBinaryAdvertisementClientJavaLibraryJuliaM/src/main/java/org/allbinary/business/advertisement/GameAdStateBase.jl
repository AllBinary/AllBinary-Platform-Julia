#=
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
=#
# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

mutable struct GameAdStateBase <: JObject
    adConfigurationP::Any
    advertisementsP::Any
    okayToShowAdsP::Bool
    GameAdStateBase() = new()
end


function initFieldsGameAdStateBase(this::GameAdStateBase)
    this.adConfigurationP = nothing
    this.advertisementsP = nothing
    this.okayToShowAdsP = false
    
    this.advertisementsP = newAdvertisements()
    this.okayToShowAdsP = false
    nothing
end


function initGameAdStateBase(this::GameAdStateBase, adConfiguration)
        initFieldsGameAdStateBase(this)
        this.adConfigurationP = adConfiguration
        nothing
end

function newGameAdStateBase(adConfiguration)
    this = GameAdStateBase()
    initGameAdStateBase(this, adConfiguration)
    this
end


function initViewArray(this::GameAdStateBase, viewArray)
        nothing
        nothing
end


function onStart(this::GameAdStateBase, anyType)
        AllBinary.init(this)
        nothing
end


function init(this::GameAdStateBase)
        nothing
        nothing
end


function isShowingAtLocation(this::GameAdStateBase, location)
        return false
end


function isShowingAt(this::GameAdStateBase)
        return false
end


function show(this::GameAdStateBase)
        nothing
        nothing
end


function hide(this::GameAdStateBase)
        nothing
        nothing
end


function onEvent(this::GameAdStateBase, eventObject)
        AllBinary.log(ForcedLogUtil, AllBinary.getInstance(EventStrings).PERFORMANCE_MESSAGE, this)
        nothing
end


function processAdState(this::GameAdStateBase, gameState, gameType)
        nothing
        nothing
end


function processPageAdState(this::GameAdStateBase)
        nothing
        nothing
end


function playingAdState(this::GameAdStateBase)
        nothing
        nothing
end


function playingAdStateWH(this::GameAdStateBase, width, height)
        nothing
        nothing
end


function notPlayingAdState(this::GameAdStateBase)
        nothing
        nothing
end


function setGameIsReady(this::GameAdStateBase, gameIsReady)
        nothing
        nothing
end


function isGameIsReady(this::GameAdStateBase)
        return false
end


function getAdvertisements(this::GameAdStateBase)
        return this.advertisementsP
end


function getAdConfiguration(this::GameAdStateBase)
        return this.adConfigurationP
end


function isOkayToShowPageAd(this::GameAdStateBase)
        return false
end


function setOkayToShowAds(this::GameAdStateBase, okayToShowAds)
        this.okayToShowAdsP = okayToShowAds
        nothing
end


function isOkayToShowAds(this::GameAdStateBase)
        return this.okayToShowAdsP
end


function isEnabled(this::GameAdStateBase)
        return false
end

