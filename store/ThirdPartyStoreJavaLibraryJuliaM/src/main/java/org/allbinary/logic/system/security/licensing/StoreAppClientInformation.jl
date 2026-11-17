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

# extends AbeClientInformation: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct StoreAppClientInformation <: JObject
    longArrayIdentifier::Any
    StoreAppClientInformation() = new()
end


function initFieldsStoreAppClientInformation(this::StoreAppClientInformation)
    this.longArrayIdentifier = nothing
    
    nothing
end


function initStoreAppClientInformation(this::StoreAppClientInformation, name, version, specialName, shortName, longArrayIdentifier)
        initAbeClientInformation(this, name, version, specialName, shortName)
        initFieldsStoreAppClientInformation(this)
        this.longArrayIdentifier = longArrayIdentifier
        nothing
end

function newStoreAppClientInformation(name, version, specialName, shortName, longArrayIdentifier)
    this = StoreAppClientInformation()
    initStoreAppClientInformation(this, name, version, specialName, shortName, longArrayIdentifier)
    this
end


function getLongArrayIdentifier(this::StoreAppClientInformation)
        return this.longArrayIdentifier
end

