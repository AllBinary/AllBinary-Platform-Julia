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

mutable struct ThirdPartyStore <: JObject
    authorized::Bool
    name::Any
    ThirdPartyStore() = new()
end


function initFieldsThirdPartyStore(this::ThirdPartyStore)
    this.authorized = false
    this.name = nothing
    this.authorized = false
    
    nothing
end


function initThirdPartyStore(this::ThirdPartyStore, name)
        initFieldsThirdPartyStore(this)
        this.name = name
        nothing
end

function newThirdPartyStore(name)
    this = ThirdPartyStore()
    initThirdPartyStore(this, name)
    this
end


function authorize(this::ThirdPartyStore, clientInformationInterface)
        nothing
        nothing
end


function isAuthorized(this::ThirdPartyStore)
        return this.authorized
end


function setAuthorized(this::ThirdPartyStore, authorized)
        this.authorized = authorized
        nothing
end


function getName(this::ThirdPartyStore)
        return this.name
end

