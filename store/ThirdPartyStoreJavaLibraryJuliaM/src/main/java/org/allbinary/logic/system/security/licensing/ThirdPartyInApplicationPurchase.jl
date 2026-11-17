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
# package org.allbinary.logic.system.security.licensing

mutable struct ThirdPartyInApplicationPurchase <: JObject
    ThirdPartyInApplicationPurchase() = new()
end


function initFieldsThirdPartyInApplicationPurchase(this::ThirdPartyInApplicationPurchase)
    nothing
end

function initThirdPartyInApplicationPurchase(this::ThirdPartyInApplicationPurchase)
    initFieldsThirdPartyInApplicationPurchase(this)
end

function newThirdPartyInApplicationPurchase()
    this = ThirdPartyInApplicationPurchase()
    initThirdPartyInApplicationPurchase(this)
    this
end


function isPurchased(this::ThirdPartyInApplicationPurchase, lockableFeature)
        return false
end


function onCreate(this::ThirdPartyInApplicationPurchase, anyType, stateObject)
        nothing
        nothing
end


function onDestroy(this::ThirdPartyInApplicationPurchase)
        nothing
        nothing
end


function onStart(this::ThirdPartyInApplicationPurchase)
        nothing
        nothing
end


function onActivityResult(this::ThirdPartyInApplicationPurchase, requestCode, resultCode, dataObject)
        nothing
        nothing
end


function onSaveInstanceState(this::ThirdPartyInApplicationPurchase, anyType)
        nothing
        nothing
end


function onStop(this::ThirdPartyInApplicationPurchase)
        nothing
        nothing
end


function requestPurchase(this::ThirdPartyInApplicationPurchase, lockableFeature)
        nothing
        nothing
end


function requestReceipts(this::ThirdPartyInApplicationPurchase)
        nothing
        nothing
end


function add(this::ThirdPartyInApplicationPurchase, lockableFeature)
        nothing
        nothing
end


function getUserName(this::ThirdPartyInApplicationPurchase)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function isEnabled(this::ThirdPartyInApplicationPurchase)
        return false
end


function requestProducts(this::ThirdPartyInApplicationPurchase)
        nothing
        nothing
end

