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
# package org.allbinary.logic.system.hardware.windows

mutable struct WindowsHardware <: JObject
    WindowsHardware() = new()
end


function initFieldsWindowsHardware(this::WindowsHardware)
    nothing
end


function initWindowsHardware(this::WindowsHardware)
        initFieldsWindowsHardware(this)
        nothing
        nothing
end

function newWindowsHardware()
    this = WindowsHardware()
    initWindowsHardware(this)
    this
end


function getMultimedia(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getBridge(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getCpu(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getEthernet(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getFireWire(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getHardDriveController(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getHardDrive(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getMachineAccessControlAddress(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getMonitor(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getUsb(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getVideo(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getComponent(this::WindowsHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function toString(this::WindowsHardware)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function compareTo(this::WindowsHardware, hardwareInterface)
        return true
end


function difference(this::WindowsHardware, hardwareInterface)
        return AllBinary.getInstance(StdUtil).NULL_TABLE
end

