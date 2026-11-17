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
# package org.allbinary.logic.system.os.solaris

# extends GenericOperatingSystem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct SolarisOS <: JObject
    SolarisOS() = new()
end


function initFieldsSolarisOS(this::SolarisOS)
    nothing
end


function initSolarisOS(this::SolarisOS)
        initGenericOperatingSystem(this)
        initFieldsSolarisOS(this)
        this.scalable = true
        nothing
end

function newSolarisOS()
    this = SolarisOS()
    initSolarisOS(this)
    this
end


function isAutoHide(this::SolarisOS)
        return true
end

