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
# package org.allbinary.logic.system.hardware.components

mutable struct ComponentFactory <: JObject
    VGA::Any
    IDE::Any
    SCSI::Any
    BRIDGE::Any
    ETHERNET::Any
    USB::Any
    MULTIMEDIA::Any
    PCI::Any
    RAID::Any
    SMBUS::Any
    PIC::Any
    Class::Any
    UNKNOWN::Any
    ComponentFactory() = new()
end

const ComponentFactory_instanceValue = Ref{Any}(nothing)
const ComponentFactory_instanceSet = Ref(false)
function staticGet_instance(::Type{ComponentFactory})
    if !ComponentFactory_instanceSet[]
        ComponentFactory_instanceSet[] = true
        ComponentFactory_instanceValue[] = newComponentFactory()
    end
    ComponentFactory_instanceValue[]
end
function staticSet_instance(::Type{ComponentFactory}, value)
    ComponentFactory_instanceSet[] = true
    ComponentFactory_instanceValue[] = value
end

function initFieldsComponentFactory(this::ComponentFactory)
    this.VGA = nothing
    this.IDE = nothing
    this.SCSI = nothing
    this.BRIDGE = nothing
    this.ETHERNET = nothing
    this.USB = nothing
    this.MULTIMEDIA = nothing
    this.PCI = nothing
    this.RAID = nothing
    this.SMBUS = nothing
    this.PIC = nothing
    this.Class = nothing
    this.UNKNOWN = nothing
    this.VGA = newComponent("VGA")
    this.IDE = newComponent("IDE")
    this.SCSI = newComponent("SCSI")
    this.BRIDGE = newComponent("bridge")
    this.ETHERNET = newComponent("Ethernet")
    this.USB = newComponent("USB")
    this.MULTIMEDIA = newComponent("Multimedia")
    this.PCI = newComponent("PCI")
    this.RAID = newComponent("RAID")
    this.SMBUS = newComponent("SMBus")
    this.PIC = newComponent("PIC")
    this.Class = newComponent("Class")
    this.UNKNOWN = newComponent(AllBinary.getInstance(CommonStrings).UNKNOWN)
    nothing
end

function initComponentFactory(this::ComponentFactory)
    initFieldsComponentFactory(this)
end

function newComponentFactory()
    this = ComponentFactory()
    initComponentFactory(this)
    this
end


function getInstance(::Type{ComponentFactory})
        return staticGet_instance(ComponentFactory)
end

