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

# extends ThirdPartyStore: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct NoThirdPartyStore <: JObject
    NoThirdPartyStore() = new()
end


function initFieldsNoThirdPartyStore(this::NoThirdPartyStore)
    nothing
end


function initNoThirdPartyStore(this::NoThirdPartyStore)
        initThirdPartyStore(this, AllBinary.getInstance(StringUtil).EMPTY_STRING)
        nothing
end

function newNoThirdPartyStore()
    this = NoThirdPartyStore()
    initNoThirdPartyStore(this)
    this
end


function authorize(this::NoThirdPartyStore, clientInformationInterface)
        AllBinary.setAuthorized(this, true)
        nothing
end

