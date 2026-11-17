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
# package org.allbinary.logic.system.security.licensing.registration

mutable struct RegistrationConfiguration <: JObject
    registrationCode::Any
    NAME::Any
    RegistrationConfiguration() = new()
end

const RegistrationConfiguration_SINGLETONValue = Ref{Any}(nothing)
const RegistrationConfiguration_SINGLETONSet = Ref(false)
function staticGet_SINGLETON(::Type{RegistrationConfiguration})
    if !RegistrationConfiguration_SINGLETONSet[]
        RegistrationConfiguration_SINGLETONSet[] = true
        RegistrationConfiguration_SINGLETONValue[] = newRegistrationConfiguration()
    end
    RegistrationConfiguration_SINGLETONValue[]
end
function staticSet_SINGLETON(::Type{RegistrationConfiguration}, value)
    RegistrationConfiguration_SINGLETONSet[] = true
    RegistrationConfiguration_SINGLETONValue[] = value
end

function initFieldsRegistrationConfiguration(this::RegistrationConfiguration)
    this.registrationCode = nothing
    this.NAME = nothing
    this.registrationCode = "No Registration Code"
    this.NAME = "registrationid"
    nothing
end


function initRegistrationConfiguration(this::RegistrationConfiguration)
        initFieldsRegistrationConfiguration(this)
        nothing
        nothing
end

function newRegistrationConfiguration()
    this = RegistrationConfiguration()
    initRegistrationConfiguration(this)
    this
end


function getInstance(::Type{RegistrationConfiguration})
        return staticGet_SINGLETON(RegistrationConfiguration)
end


function read(this::RegistrationConfiguration)
        nothing
        nothing
end


function write(this::RegistrationConfiguration)
        nothing
        nothing
end


function toString(this::RegistrationConfiguration)
        return AllBinary.toString(AllBinary.append(AllBinary.append(newStringMaker(), "Registration Code: "), AllBinary.getRegistrationCode(this)))
end


function setRegistrationCode(this::RegistrationConfiguration, registrationCode)
        this.registrationCode = registrationCode
        nothing
end


function getRegistrationCode(this::RegistrationConfiguration)
        return this.registrationCode
end

