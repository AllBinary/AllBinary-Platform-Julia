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

mutable struct ThirdPartyMessageFactory <: JObject
    AUTHORIZED::Any
    NOT_AUTHORIZED::Any
    LINKAGE_ERROR::Any
    ThirdPartyMessageFactory() = new()
end

const ThirdPartyMessageFactory_instanceValue = Ref{Any}(nothing)
const ThirdPartyMessageFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ThirdPartyMessageFactory})
    if !ThirdPartyMessageFactory_instanceSet[]
        ThirdPartyMessageFactory_instanceSet[] = true
        ThirdPartyMessageFactory_instanceValue[] = newThirdPartyMessageFactory()
    end
    ThirdPartyMessageFactory_instanceValue[]
end
function staticSet_instance(::Type{ThirdPartyMessageFactory}, value)
    ThirdPartyMessageFactory_instanceSet[] = true
    ThirdPartyMessageFactory_instanceValue[] = value
end

function initFieldsThirdPartyMessageFactory(this::ThirdPartyMessageFactory)
    this.AUTHORIZED = nothing
    this.NOT_AUTHORIZED = nothing
    this.LINKAGE_ERROR = nothing
    this.AUTHORIZED = "Authorized"
    this.NOT_AUTHORIZED = "Not Authorized"
    this.LINKAGE_ERROR = "Linkage Error"
    nothing
end

function initThirdPartyMessageFactory(this::ThirdPartyMessageFactory)
    initFieldsThirdPartyMessageFactory(this)
end

function newThirdPartyMessageFactory()
    this = ThirdPartyMessageFactory()
    initThirdPartyMessageFactory(this)
    this
end


function getInstance(::Type{ThirdPartyMessageFactory})
        return staticGet_instance(ThirdPartyMessageFactory)
end

