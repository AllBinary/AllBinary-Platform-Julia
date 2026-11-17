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
# package org.allbinary.logic.system.os.linux

# extends GenericOperatingSystem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct LinuxOS <: JObject
    LinuxOS() = new()
end


function initFieldsLinuxOS(this::LinuxOS)
    nothing
end


function initLinuxOS(this::LinuxOS)
        initGenericOperatingSystem(this)
        initFieldsLinuxOS(this)
        this.scalable = true
        nothing
end

function newLinuxOS()
    this = LinuxOS()
    initLinuxOS(this)
    this
end


function isAutoHide(this::LinuxOS)
        return true
end

