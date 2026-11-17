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
# package org.allbinary.business.advertisement

mutable struct AdConfiguration <: JObject
    INNERACTIVE::Any
    LEADBOLT::Any
    ADMOB::Any
    AdConfiguration() = new()
end


function initFieldsAdConfiguration(this::AdConfiguration)
    this.INNERACTIVE = nothing
    this.LEADBOLT = nothing
    this.ADMOB = nothing
    
    
    
    nothing
end


function initAdConfiguration(this::AdConfiguration, advertIdArray)
        initFieldsAdConfiguration(this)
        this.INNERACTIVE = (advertIdArray[Int32(0) + 1])
        this.ADMOB = (advertIdArray[Int32(1) + 1])
        this.LEADBOLT = (advertIdArray[Int32(2) + 1])
        nothing
end

function newAdConfiguration(advertIdArray)
    this = AdConfiguration()
    initAdConfiguration(this, advertIdArray)
    this
end


function getValidAdSpots(this::AdConfiguration)
        return jNewArray(Any, Int32(0), nothing)
end


function process(this::AdConfiguration, gameState)
        nothing
        nothing
end


function processDemo(this::AdConfiguration, state)
        nothing
        nothing
end


function setShowAds(this::AdConfiguration)
        nothing
        nothing
end


function setToggleAds(this::AdConfiguration, showAds)
        nothing
        nothing
end


function isShowAds(this::AdConfiguration)
        return true
end

