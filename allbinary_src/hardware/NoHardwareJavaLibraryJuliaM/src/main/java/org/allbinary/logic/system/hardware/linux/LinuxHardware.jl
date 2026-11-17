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
# package org.allbinary.logic.system.hardware.linux

mutable struct LinuxHardware <: JObject
    LinuxHardware() = new()
end


function initFieldsLinuxHardware(this::LinuxHardware)
    nothing
end


function initLinuxHardware(this::LinuxHardware)
        initFieldsLinuxHardware(this)
        nothing
        nothing
end

function newLinuxHardware()
    this = LinuxHardware()
    initLinuxHardware(this)
    this
end


function getMultimedia(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getBridge(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getCpu(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getEthernet(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getFireWire(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getHardDriveController(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getHardDrive(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getMachineAccessControlAddress(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getMonitor(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getUsb(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getVideo(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function getComponent(this::LinuxHardware, index)
        throw(jNewException("RuntimeException", ""))
end


function toString(this::LinuxHardware)
        return AllBinary.getInstance(StringUtil).EMPTY_STRING
end


function compareTo(this::LinuxHardware, hardwareInterface)
        return true
end


function difference(this::LinuxHardware, hardwareInterface)
        return AllBinary.getInstance(StdUtil).NULL_TABLE
end


function isNextHardware(this::LinuxHardware, nextLine)
        return false
end

