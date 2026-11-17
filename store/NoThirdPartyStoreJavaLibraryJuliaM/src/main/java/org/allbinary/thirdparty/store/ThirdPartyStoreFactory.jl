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
# package org.allbinary.thirdparty.store

mutable struct ThirdPartyStoreFactory <: JObject
    ThirdPartyStoreFactory() = new()
end

const ThirdPartyStoreFactory_instanceValue = Ref{Any}(nothing)
const ThirdPartyStoreFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ThirdPartyStoreFactory})
    if !ThirdPartyStoreFactory_instanceSet[]
        ThirdPartyStoreFactory_instanceSet[] = true
        ThirdPartyStoreFactory_instanceValue[] = newNoThirdPartyStore()
    end
    ThirdPartyStoreFactory_instanceValue[]
end
function staticSet_instance(::Type{ThirdPartyStoreFactory}, value)
    ThirdPartyStoreFactory_instanceSet[] = true
    ThirdPartyStoreFactory_instanceValue[] = value
end

function initFieldsThirdPartyStoreFactory(this::ThirdPartyStoreFactory)
    nothing
end


function getInstance(::Type{ThirdPartyStoreFactory})
        return staticGet_instance(ThirdPartyStoreFactory)
end


function initThirdPartyStoreFactory(this::ThirdPartyStoreFactory)
        initFieldsThirdPartyStoreFactory(this)
        nothing
        nothing
end

function newThirdPartyStoreFactory()
    this = ThirdPartyStoreFactory()
    initThirdPartyStoreFactory(this)
    this
end

