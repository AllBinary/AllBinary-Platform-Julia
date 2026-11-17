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
# package org.allbinary.logic.system.os

mutable struct OperatingSystems <: JObject
    LINUX::Any
    WINDOWS::Any
    SOLARIS::Any
    WINDOWS2000::Any
    WINDOWS_NT::Any
    WINDOWS_10::Any
    WINDOWS_11::Any
    WINDOWS_VISTA::Any
    WINDOWS_XP::Any
    ANDROID::Any
    HARMONY::Any
    unknownSpecificOSAllowed::Bool
    OperatingSystems() = new()
end

const OperatingSystems_instanceValue = Ref{Any}(nothing)
const OperatingSystems_instanceSet = Ref(false)
function staticGet_instance(::Type{OperatingSystems})
    if !OperatingSystems_instanceSet[]
        OperatingSystems_instanceSet[] = true
        OperatingSystems_instanceValue[] = newOperatingSystems()
    end
    OperatingSystems_instanceValue[]
end
function staticSet_instance(::Type{OperatingSystems}, value)
    OperatingSystems_instanceSet[] = true
    OperatingSystems_instanceValue[] = value
end

function initFieldsOperatingSystems(this::OperatingSystems)
    this.LINUX = nothing
    this.WINDOWS = nothing
    this.SOLARIS = nothing
    this.WINDOWS2000 = nothing
    this.WINDOWS_NT = nothing
    this.WINDOWS_10 = nothing
    this.WINDOWS_11 = nothing
    this.WINDOWS_VISTA = nothing
    this.WINDOWS_XP = nothing
    this.ANDROID = nothing
    this.HARMONY = nothing
    this.unknownSpecificOSAllowed = false
    this.LINUX = "Linux"
    this.WINDOWS = "Windows"
    this.SOLARIS = "Solaris"
    this.WINDOWS2000 = "Windows 2000"
    this.WINDOWS_NT = "Windows NT"
    this.WINDOWS_10 = "Windows 10"
    this.WINDOWS_11 = "Windows 11"
    this.WINDOWS_VISTA = "Windows Vista"
    this.WINDOWS_XP = "Windows XP"
    this.ANDROID = this.LINUX
    this.HARMONY = "HarmonyOS"
    this.unknownSpecificOSAllowed = true
    nothing
end


function initOperatingSystems(this::OperatingSystems)
        initFieldsOperatingSystems(this)
        nothing
        nothing
end

function newOperatingSystems()
    this = OperatingSystems()
    initOperatingSystems(this)
    this
end


function isUnknownSpecificOSAllowed(this::OperatingSystems)
        return this.unknownSpecificOSAllowed
end


function setUnknownSpecificOSAllowed(this::OperatingSystems, aUnknownSpecificOSAllowed)
        this.unknownSpecificOSAllowed = aUnknownSpecificOSAllowed
        nothing
end


function getInstance(::Type{OperatingSystems})
        return staticGet_instance(OperatingSystems)
end

