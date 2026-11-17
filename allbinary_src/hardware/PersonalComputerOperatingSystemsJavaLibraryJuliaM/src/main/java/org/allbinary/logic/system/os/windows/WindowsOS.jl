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
# package org.allbinary.logic.system.os.windows

# extends GenericOperatingSystem: Julia concrete types cannot be subclassed so the fields of the base class are repeated
mutable struct WindowsOS <: JObject
    WindowsOS() = new()
end


function initFieldsWindowsOS(this::WindowsOS)
    nothing
end


function initWindowsOS(this::WindowsOS)
        initGenericOperatingSystem(this)
        initFieldsWindowsOS(this)
        this.scalable = true
        nothing
end

function newWindowsOS()
    this = WindowsOS()
    initWindowsOS(this)
    this
end


function isAutoHide(this::WindowsOS)
        return true
end

