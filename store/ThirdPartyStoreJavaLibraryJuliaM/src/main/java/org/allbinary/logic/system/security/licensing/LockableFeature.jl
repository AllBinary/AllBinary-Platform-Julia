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

mutable struct LockableFeature <: JObject
    name::Any
    LockableFeature() = new()
end


function initFieldsLockableFeature(this::LockableFeature)
    this.name = nothing
    
    nothing
end


function initLockableFeature(this::LockableFeature, name)
        initFieldsLockableFeature(this)
        this.name = name
        nothing
end

function newLockableFeature(name)
    this = LockableFeature()
    initLockableFeature(this, name)
    this
end


function getName(this::LockableFeature)
        return this.name
end

